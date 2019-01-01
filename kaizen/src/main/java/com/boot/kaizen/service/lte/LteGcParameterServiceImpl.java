package com.boot.kaizen.service.lte;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.boot.kaizen.dao.lte.LteGcParameterDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lte.LteGcParameter;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteGcParameterServiceImpl implements ILteGcParameterService {

	@Autowired
	private LteGcParameterDao gcParameterDao;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private RuntimeService runtimeService;

	@Override
	public List<LteGcParameter> find(Map<String, Object> map) {
		return gcParameterDao.find(map);
	}

	@Transactional
	@Override
	public JsonMsgUtil edit(LteGcParameter lteGcParameter, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}

		// 根据流程站号判断是不是存在规划表、主要是通过关联表判断
		String piid = actBusinessService.queryMatchBusinessKey("LtePlan","LtePlan_" + lteGcParameter.getmENodeBID() + "_");
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("规划表中不存在此站号的记录");
		}

		if (lteGcParameter.getId() != null) {// edit
			lteGcParameter.setUpdateTime(new Date());
			gcParameterDao.update(lteGcParameter);
		} else {// add
			lteGcParameter.setProjId(loginUser.getProjId());
			lteGcParameter.setCreateAt(loginUser.getId());
			lteGcParameter.setCreateTime(new Date());

			// 判断是不是存在这个环节了
			Long extensNum = actBusinessService.queryCountMatchLink("LteGcParameter", "工参信息", piid);
			if (extensNum != 0) {// 流程已经执行过 只保存数据
				// 保存数据
				gcParameterDao.save(lteGcParameter);
			} else {
				ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(piid)
						.singleResult();
				if (processInstance == null) {
					throw new IllegalArgumentException("规划表中此站号对应的流程已被删除");
				}
				// 保存数据
				Long id = gcParameterDao.save(lteGcParameter);
				// 查询任务
				Task task = taskService.createTaskQuery().processInstanceId(piid).taskName("工参信息").singleResult();
				String taskDefinitionKey = "";
				if (task != null) {
					taskDefinitionKey = task.getTaskDefinitionKey();
					// 完成任务
					taskService.complete(task.getId());
				}
				// 记录关联表的关系
				// 添加关系表
				Map<String, Object> mapAll = new HashMap<>();
				mapAll.put("checkResult", "");
				mapAll.put("bussType", "LteGcParameter");
				mapAll.put("createTime", new Date());
				mapAll.put("bussId", id);
				mapAll.put("checkAssignee", "");
				mapAll.put("projId", loginUser.getProjId());
				mapAll.put("actName", "工参信息");
				mapAll.put("actId", taskDefinitionKey);
				mapAll.put("piid", processInstance.getId());
				mapAll.put("businessKey", processInstance.getBusinessKey());
				actBusinessService.insertAll(mapAll);
			}
		}
		return new JsonMsgUtil(true, "添加成功", lteGcParameter);
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		if (id == null) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteGcParameter lteGcParameter = gcParameterDao.findById(id);
		if (lteGcParameter == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", lteGcParameter);
	}

	@Transactional
	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (StringUtils.isNoneBlank(ids)) {
				String[] idsArray = ids.trim().split(",");
				Long[] array = new Long[idsArray.length];
				for (int i = 0; i < idsArray.length; i++) {
					String id = idsArray[i];
					array[i] = Long.valueOf(id.trim());
					try {
						// 删除关系表
						actBusinessService.deleteByIdAndType(array[i], "LteGcParameter");
					} catch (Exception e) {
					}
				}
				// 删除项目
				Integer deleteNum = gcParameterDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public List<LteGcParameter> queryGcParameterList(String mENodeBID) {
		return gcParameterDao.queryGcParameterList(mENodeBID);
	}

}

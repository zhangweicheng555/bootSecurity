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

import com.boot.kaizen.activiti.service.Activitiservice;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.dao.lte.LtePlanDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.LtePlan;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyDateUtil;

@Service
class LtePlanServiceImpl implements ILtePlanService {

	@Autowired
	private LtePlanDao planDao;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private Activitiservice activitiservice;

	@Override
	public List<LtePlan> find(Map<String, Object> map) {
		return planDao.find(map);
	}

	@Transactional
	@Override
	public JsonMsgUtil edit(LtePlan ltePlan, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (ltePlan.getId() != null) {// edit
			ltePlan.setUpdateTime(new Date());
			planDao.update(ltePlan);
		} else {// add
			ltePlan.setProjId(loginUser.getProjId());
			ltePlan.setCreateAt(loginUser.getId());
			ltePlan.setCreateTime(new Date());
			planDao.save(ltePlan);
			// 判断流程业务关联表是不是有与businesskey模糊匹配的记录
			Long num = actBusinessService.queryCountMatchBusinessKey("LtePlan", "LtePlan_"+ltePlan.getmENodeBID()+"_");
			if (num != 0) {
				throw new IllegalArgumentException("存在此站号的流程，添加失败");
			}
			// 启动流程
			String businessKey = "LtePlan" + "_" + ltePlan.getmENodeBID() + "_" + ltePlan.getId();
			Map<String, Object> variables = new HashMap<>();
			variables.put("user", "");
			variables.put("recordId", ltePlan.getId());
			variables.put("projId", loginUser.getProjId());

			ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("LtePlan", businessKey,
					variables);
			// 添加与业务表的关系
			if (processInstance != null) {
				// 记录流程与业务表的关系
				Map<String, Object> map = new HashMap<>();
				map.put("bussType", "LtePlan");
				map.put("createTime", new Date());
				map.put("bussId", ltePlan.getId());
				map.put("projId", loginUser.getProjId());
				map.put("businessKey", processInstance.getBusinessKey());
				map.put("assignIds", "");
				map.put("actPiid", processInstance.getId());
				actBusinessService.insert(map);

				// 查询当前任务是不是存在 测试计划 这个环节 存在的话 自动完成
				Task task = taskService.createTaskQuery().processInstanceId(processInstance.getId()).taskName("测试计划")
						.singleResult();
				if (task == null) {
					throw new IllegalArgumentException("流程中测试计划环节不存在");
				}
				// 添加关系表
				Map<String, Object> mapAll = new HashMap<>();
				mapAll.put("checkResult", "");
				mapAll.put("bussType", "LtePlan");
				mapAll.put("createTime", new Date());
				mapAll.put("bussId", ltePlan.getId());
				mapAll.put("checkAssignee", "");
				mapAll.put("projId", loginUser.getProjId());
				mapAll.put("actName", task.getName());
				mapAll.put("actId", task.getTaskDefinitionKey());
				mapAll.put("piid", processInstance.getId());
				mapAll.put("businessKey", processInstance.getBusinessKey());
				actBusinessService.insertAll(mapAll);
				// 完成任务
				taskService.complete(task.getId());

			}
		}
		return new JsonMsgUtil(true, "添加成功", ltePlan);
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		if (id == null) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LtePlan ltePlan = planDao.findById(id);
		if (ltePlan == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", ltePlan);
	}

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

					// 删除正在运行的流程
					List<String> processInstanceIds = actBusinessService.queryProcessInstanceIds(array[i], "LtePlan");
					if (processInstanceIds != null && processInstanceIds.size() > 0) {
						for (String piid : processInstanceIds) {
							activitiservice.deleteProcessIntance(piid, "delete");
						}
					}
					// 删除关联表
					actBusinessService.deleteByIdAndType(array[i], "LtePlan");
				}
				// 删除项目
				Integer deleteNum = planDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public List<Map<String, Object>> queryPlanList(Long userId, Long projId) {
		return planDao.queryPlanList(userId, projId, MyDateUtil.getNowDate("yyyy-MM-dd"));
	}

	@Override
	public List<BaseStationBean> queryStationList(Long userId, Long projId, String testDate) {
		return planDao.queryStationList(userId, projId, testDate);
	}

}

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
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.boot.kaizen.dao.lte.LteStationCheckDao;
import com.boot.kaizen.model.LteCellCheck;
import com.boot.kaizen.model.LteStationCheck;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteStationCheckServiceImpl implements ILteStationCheckService {

	@Autowired
	private LteStationCheckDao stationCheckDao;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private RuntimeService runtimeService;

	@Override
	public List<LteStationCheck> find(Map<String, Object> map) {
		return stationCheckDao.find(map);
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
				}
				// 删除项目
				Integer deleteNum = stationCheckDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Transactional
	@Override
	public void batchInsert(List<LteStationCheck> stationChecks) {
		LteStationCheck cellCheck = stationChecks.get(0);
		// 查询此节点与上个节点是不是存在
		List<String> links = actBusinessService.findLinksMatchBusinessKey("LtePlan" + "_" + cellCheck.geteNodeBID());
		if (links == null || links.size() == 0) {
			throw new IllegalArgumentException("系统未录入站号为：" + cellCheck.geteNodeBID() + "的信息");
		}
		if (!links.contains("工参信息")) {
			throw new IllegalArgumentException("工参信息未录入");
		}
		String piid = actBusinessService.queryMatchBusinessKey("LtePlan", "LtePlan" + "_" + cellCheck.geteNodeBID());
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(piid)
				.singleResult();
		if (processInstance == null) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		Long num = actBusinessService.queryCountMatchLink("LteStationCheck", "基站核查", piid);
		if (num == 0) {
			// 查询小区核查的任务
			Task task = taskService.createTaskQuery().processInstanceId(piid).taskName("基站核查").singleResult();
			if (task == null) {
				throw new IllegalArgumentException("基站核查环节不存在");
			}
			// 记录关联表的关系
			Map<String, Object> mapAll = new HashMap<>();
			mapAll.put("checkResult", "");
			mapAll.put("bussType", "LteStationCheck");
			mapAll.put("createTime", new Date());
			mapAll.put("bussId", 0);
			mapAll.put("checkAssignee", "");
			mapAll.put("projId", cellCheck.getProjId());
			mapAll.put("actName", "基站核查");
			mapAll.put("actId", task.getTaskDefinitionKey());
			mapAll.put("piid", piid);
			mapAll.put("businessKey", processInstance.getBusinessKey());
			actBusinessService.insertAll(mapAll);
			// 完成任务
			taskService.complete(task.getId());
		}
		stationCheckDao.batchInsert(stationChecks);
	}

	@Override
	public LteStationCheck findById(Long id) {
		return stationCheckDao.findById(id);
	}

	@Override
	public void deleteByeNodeBID(String mENodeBID) {
		stationCheckDao.deleteByeNodeBID(mENodeBID);
	}

}

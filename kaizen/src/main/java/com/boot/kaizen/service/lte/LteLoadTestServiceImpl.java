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

import com.boot.kaizen.dao.lte.LteLoadTestDao;
import com.boot.kaizen.model.lte.LteLoadTest;
import com.boot.kaizen.service.act.IActBusinessService;

@Service
class LteLoadTestServiceImpl implements ILteLoadTestService {

	@Autowired
	private LteLoadTestDao loadTestDao;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;

	@Transactional
	@Override
	public void save(LteLoadTest lteLoadTest) {
		// 保存关联表 路测核查
		// 查询此节点与上个节点是不是存在
		List<String> links = actBusinessService.findLinksMatchBusinessKey("LtePlan" + "_" + lteLoadTest.geteNodeBID()+"_");
		if (links == null || links.size() == 0) {
			throw new IllegalArgumentException("系统未录入站号为：" + lteLoadTest.geteNodeBID() + "的信息");
		}
		if (!links.contains("工参信息")) {
			throw new IllegalArgumentException("工参信息未录入");
		}
		String piid = actBusinessService.queryMatchBusinessKey("LtePlan", "LtePlan" + "_" + lteLoadTest.geteNodeBID()+"_");
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(piid)
				.singleResult();
		if (processInstance == null) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		Long num = actBusinessService.queryCountMatchLink("LteLoadTest", "路测核查", piid);
		if (num == 0) {
			// 查询路测核查的任务
			Task task = taskService.createTaskQuery().processInstanceId(piid).taskName("路测核查").singleResult();
			if (task == null) {
				throw new IllegalArgumentException("路测核查环节不存在");
			}
			// 记录关联表的关系
			Map<String, Object> mapAll = new HashMap<>();
			mapAll.put("checkResult", "");
			mapAll.put("bussType", "LteLoadTest");
			mapAll.put("createTime", new Date());
			mapAll.put("bussId", 0);
			mapAll.put("checkAssignee", "");
			mapAll.put("projId", lteLoadTest.getProjId());
			mapAll.put("actName", "路测核查");
			mapAll.put("actId", task.getTaskDefinitionKey());
			mapAll.put("piid", piid);
			mapAll.put("businessKey", processInstance.getBusinessKey());
			actBusinessService.insertAll(mapAll);
			// 完成任务
			taskService.complete(task.getId());
		}

		// 保存数据
		loadTestDao.save(lteLoadTest);
	}

	@Override
	public void deleteByeNodeBID(String mENodeBID) {
		loadTestDao.deleteByeNodeBID(mENodeBID);
	}

	@Override
	public List<LteLoadTest> findListByMenodeBID(Map<String, Object> map) {
		return loadTestDao.findListByMenodeBID(map);
	}

}

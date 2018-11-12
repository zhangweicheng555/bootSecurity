package com.boot.kaizen.activiti.service.impl;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.bpmn.model.FlowNode;
import org.activiti.bpmn.model.SequenceFlow;
import org.activiti.engine.HistoryService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.history.HistoricActivityInstance;
import org.activiti.engine.history.HistoricProcessInstance;
import org.activiti.engine.impl.RepositoryServiceImpl;
import org.activiti.engine.impl.persistence.entity.ProcessDefinitionEntity;
import org.activiti.engine.repository.ProcessDefinition;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.activiti.image.ProcessDiagramGenerator;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
import com.boot.kaizen._interface.BusinessInterface;
import com.boot.kaizen._interface.LteConfigActBusiness;
import com.boot.kaizen.activiti.model.StartActEntity;
import com.boot.kaizen.activiti.service.Activitiservice;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.service.lte.ILteConfigService;
import com.boot.kaizen.util.JsonMsgUtil;

/**
 * 工作业务处理类
 * 
 * @author a-zhangweicheng
 *
 */
@Component
public class ActivitiserviceImpl implements Activitiservice {

	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private HistoryService historyService;
	@Autowired
	private RepositoryService repositoryService;
	@Autowired
	private ProcessEngine processEngine;
	@Autowired
	private ILteConfigService lteConfigService;
	@Autowired
	private LteConfigActBusiness lteConfigActBusiness;
	
	
	
	@Override
	public ProcessInstance srartProcessInstanceByKey(String processDefinationKey) {
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefinationKey);
		return processInstance;
	}

	@Override
	public ProcessInstance srartProcessInstanceByKeyV(String processDefinationKey, Map<String, Object> variables) {
		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(processDefinationKey, variables);
		return processInstance;
	}

	@Override
	public void completeTaskById(String taskId) {
		taskService.complete(taskId);
	}

	@Override
	public void findActivitiProccessImage(String processInstanceId, HttpServletResponse response) {

		// 设置页面不缓存
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		HistoricProcessInstance historicProcessInstance = historyService.createHistoricProcessInstanceQuery()
				.processInstanceId(processInstanceId).singleResult();
		if (historicProcessInstance != null) {
			RepositoryServiceImpl repositoryServiceImpl = (RepositoryServiceImpl) repositoryService;
			ProcessDefinitionEntity processDefinition = (ProcessDefinitionEntity) repositoryServiceImpl
					.getDeployedProcessDefinition(historicProcessInstance.getProcessDefinitionId());
			// 按执行顺序遍历已经执行的节点
			List<HistoricActivityInstance> historicActivityInstances = historyService
					.createHistoricActivityInstanceQuery().processInstanceId(processInstanceId)
					.orderByHistoricActivityInstanceId().asc().list();
			List<String> executeActivityIds = new ArrayList<String>();
			for (HistoricActivityInstance historicActivityInstance : historicActivityInstances) {
				executeActivityIds.add(historicActivityInstance.getActivityId());
			}
			BpmnModel bpmnModel = repositoryService.getBpmnModel(processDefinition.getId());
			// 已执行的线集合
			List<String> flowIds = getHighLightedFlows(bpmnModel, processDefinition, historicActivityInstances);
			// 获取流程图图像字符流
			ProcessDiagramGenerator pec = processEngine.getProcessEngineConfiguration().getProcessDiagramGenerator();
			// 配置字体
			InputStream imageStream = pec.generateDiagram(bpmnModel, "png", executeActivityIds, flowIds, "宋体", "微软雅黑",
					"黑体", null, 2.0);

			response.setContentType("image/png");
			OutputStream outputStream = null;
			try {
				outputStream = response.getOutputStream();
				int bytesRead = 0;
				byte[] buffer = new byte[8192];
				while ((bytesRead = imageStream.read(buffer, 0, 8192)) != -1) {
					outputStream.write(buffer, 0, bytesRead);
				}
			} catch (IOException e) {
				e.printStackTrace();
			} finally {
				try {
					if (outputStream != null) {
						outputStream.close();
					}
					if (imageStream != null) {
						imageStream.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	private List<String> getHighLightedFlows(BpmnModel bpmnModel, ProcessDefinitionEntity processDefinition,
			List<HistoricActivityInstance> historicActivityInstances) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		List<String> highFlows = new ArrayList<String>();// 用以保存高亮的线flowId
		for (int i = 0; i < historicActivityInstances.size() - 1; i++) {
			// 得到节点定义的详细信息
			FlowNode activityImpl = (FlowNode) bpmnModel.getMainProcess()
					.getFlowElement(historicActivityInstances.get(i).getActivityId());
			List<FlowNode> sameStartTimeNodes = new ArrayList<FlowNode>();// 用以保存后续开始时间相同的节点
			FlowNode sameActivityImpl1 = null;

			HistoricActivityInstance activityImpl_ = historicActivityInstances.get(i);// 第一个节点
			HistoricActivityInstance activityImp2_;

			for (int k = i + 1; k <= historicActivityInstances.size() - 1; k++) {
				activityImp2_ = historicActivityInstances.get(k);// 后续第1个节点

				if (activityImpl_.getActivityType().equals("userTask")
						&& activityImp2_.getActivityType().equals("userTask")
						&& sdf.format(activityImpl_.getStartTime()).equals(sdf.format(activityImp2_.getStartTime()))) // 都是usertask，且主节点与后续节点的开始时间相同，说明不是真实的后继节点
				{

				} else {
					sameActivityImpl1 = (FlowNode) bpmnModel.getMainProcess()
							.getFlowElement(historicActivityInstances.get(k).getActivityId());// 找到紧跟在后面的一个节点
					break;
				}

			}
			sameStartTimeNodes.add(sameActivityImpl1); // 将后面第一个节点放在时间相同节点的集合里
			for (int j = i + 1; j < historicActivityInstances.size() - 1; j++) {
				HistoricActivityInstance activityImpl1 = historicActivityInstances.get(j);// 后续第一个节点
				HistoricActivityInstance activityImpl2 = historicActivityInstances.get(j + 1);// 后续第二个节点

				if (sdf.format(activityImpl1.getStartTime()).equals(sdf.format(activityImpl2.getStartTime()))) {// 如果第一个节点和第二个节点开始时间相同保存
					FlowNode sameActivityImpl2 = (FlowNode) bpmnModel.getMainProcess()
							.getFlowElement(activityImpl2.getActivityId());
					sameStartTimeNodes.add(sameActivityImpl2);
				} else {// 有不相同跳出循环
					break;
				}
			}
			List<SequenceFlow> pvmTransitions = activityImpl.getOutgoingFlows(); // 取出节点的所有出去的线

			for (SequenceFlow pvmTransition : pvmTransitions) {// 对所有的线进行遍历
				FlowNode pvmActivityImpl = (FlowNode) bpmnModel.getMainProcess()
						.getFlowElement(pvmTransition.getTargetRef());// 如果取出的线的目标节点存在时间相同的节点里，保存该线的id，进行高亮显示
				if (sameStartTimeNodes.contains(pvmActivityImpl)) {
					highFlows.add(pvmTransition.getId());
				}
			}

		}
		return highFlows;
	}

	@Override
	public void suspensionProcessInstance(String processInstanceId) {
		runtimeService.suspendProcessInstanceById(processInstanceId);
	}

	@Override
	public void suspensionProcessDefination(String processDefinitionKey) {
		repositoryService.suspendProcessDefinitionByKey(processDefinitionKey);
	}

	@Override
	public void activeProcessInstance(String processInstanceId) {
		runtimeService.activateProcessInstanceById(processInstanceId);
	}

	@Override
	public void activeProcessDefination(String processDefinitionKey) {
		repositoryService.activateProcessDefinitionByKey(processDefinitionKey);
	}

	@Override
	public void claimTask(String taskId, String assignee) {
		taskService.claim(taskId, assignee);
	}

	@Override
	public Date processIfEnd(String processInstanceId) {
		HistoricProcessInstance historicProcessInstance = historyService.createHistoricProcessInstanceQuery()
				.processInstanceId(processInstanceId).singleResult();
		if (historicProcessInstance != null) {
			return historicProcessInstance.getEndTime();
		}
		return null;
	}

	@Override
	public void deleteProcessIntance(String processInstanceId, String deleteReasoon) {
		ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(processInstanceId).singleResult();
		if (processInstance != null) {
			runtimeService.deleteProcessInstance(processInstanceId, deleteReasoon);
		}
	}

	@Override
	public void deleteProcessByDefinationId(String processDefinationId, Boolean cascade) {
		ProcessDefinition processDefinition = repositoryService.createProcessDefinitionQuery()
				.processDefinitionId(processDefinationId).singleResult();
		repositoryService.deleteDeployment(processDefinition.getDeploymentId(), cascade);
	}

	@Transactional
	@Override
	public void startProcessInstance(StartActEntity startActEntity, BusinessInterface businessInterface) {
		String businessKey = null;
		if (startActEntity.getRecordId() == null || StringUtils.isBlank(startActEntity.getProcessKey())) {
			throw new IllegalArgumentException("记录ID/流程定义的key不能为空");
		}
		businessKey = startActEntity.getProcessKey() + "_" + startActEntity.getRecordId();
		Map<String, Object> variables = startActEntity.getTags();
		variables.put("user", startActEntity.getAssignIds());
		variables.put("recordId", startActEntity.getRecordId());
		variables.put("projId", startActEntity.getProjId());

		ProcessInstance processInstance = runtimeService.startProcessInstanceByKey(startActEntity.getProcessKey(),
				businessKey, variables);

		if (businessInterface != null) {
			// 修改业务状态
			businessInterface.startProcessInstance(variables);

			// 记录流程与业务表的关系
			Map<String, Object> map = new HashMap<>();
			map.put("bussType", startActEntity.getProcessKey());
			map.put("createTime", new Date());
			map.put("bussId", startActEntity.getRecordId());
			map.put("projId", startActEntity.getProjId());
			map.put("businessKey", processInstance.getBusinessKey());
			map.put("assignIds", startActEntity.getAssignIds());
			map.put("actPiid", processInstance.getId());
			businessInterface.recordActProcessWithBusioness(map);
		} else {
			throw new IllegalArgumentException("流程实例创建失败");
		}

	}

	@Override
	public List<Task> queryMyActTask(String processDefinationKey, String taskAssign, Long projId) {
		List<Task> myTasks = new ArrayList<Task>();
		List<Task> list = taskService.createTaskQuery()//
				.processDefinitionKey(processDefinationKey)//
				.processVariableValueEquals("projId", projId)//
				.orderByTaskCreateTime().asc()//
				.list();
		if (list != null && list.size() > 0) {
			for (Task task : list) {
				String taskAssignee = task.getAssignee();
				if (StringUtils.isNoneBlank(taskAssignee)) {
					String[] userArray = taskAssignee.split(",");
					for (String userId : userArray) {
						if (userId.equals(taskAssign)) {
							myTasks.add(task);
							break;
						}
					}
				}
			}
		}
		return myTasks;
	}

	@Override
	public JsonMsgUtil loadRecordId(String taskId, String bussType) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		Task task = taskService.createTaskQuery().taskId(taskId).singleResult();
		if (task != null) {
			ProcessInstance processInstance = runtimeService.createProcessInstanceQuery()
					.processInstanceId(task.getProcessInstanceId()).singleResult();
			if (processInstance != null) {
				String businessKey = processInstance.getBusinessKey();
				if (businessKey != null) {
					String[] arrays = businessKey.split("_");
					if (arrays.length == 2) {
						j = new JsonMsgUtil(true, "查询成功", arrays[1]);
					}
				}
			}

		}
		return j;
	}

	@Transactional
	@Override
	public JsonMsgUtil checkLteConfigTask(Long recordId, String taskId, Long status, String checkResult,LoginUser user) {
		//完成任务
		Task task=taskService.createTaskQuery().taskId(taskId).singleResult();
		if (task != null) {
			taskService.setAssignee(taskId, user.getId().toString());
			taskService.complete(taskId);
			//记录流程与业务表的关联关系
			Map<String, Object> map=new HashMap<>();
			map.put("checkResult", checkResult);
			map.put("bussType", "LteConfig");
			map.put("createTime", new Date());
			map.put("bussId", recordId);
			map.put("checkAssignee", user.getId());
			map.put("projId", user.getProjId());
			map.put("actName", task.getName());
			map.put("actId", task.getId());
			map.put("piid", task.getProcessInstanceId());
			map.put("status", status);
			lteConfigActBusiness.completeTask(map);
		}
		return new JsonMsgUtil(true,"审核成功","");
	}

}

package com.boot.kaizen.activiti.service;

import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.runtime.ProcessInstance;

/**
 * 工作流业务处理接口
 * 
 * @author a-zhangweicheng
 *
 */
public interface Activitiservice {

	/**
	 * 通过流程定义的key启动流程
	 * 
	 * @param processDefinationKey
	 */
	public ProcessInstance srartProcessInstanceByKey(String processDefinationKey);

	/**
	 * 通过流程定义的key/变量启动流程  
	 * @param processDefinationKey
	 * @param variables
	 * @return
	 */
	public ProcessInstance srartProcessInstanceByKeyV(String processDefinationKey, Map<String, Object> variables);

	/**
	 * 根据任务的ID完成任务
	 * 
	 * @param taskId
	 */
	public void completeTaskById(String taskId);

	/**
	 * 根据流程实例id查看流程图
	 * 
	 * @param processInstanceId
	 * @param response
	 */
	public void findActivitiProccessImage(String processInstanceId, HttpServletResponse response);

	/**
	 * 暂停流程实例—-任务的暂停本质是一样的
	 * 
	 * @param processInstancceId
	 */
	public void suspensionProcessInstance(String processInstanceId);

	/**
	 * 暂停流程实例—-任务的暂停本质是一样的
	 * 
	 * @param processInstancceId
	 */
	public void activeProcessInstance(String processInstanceId);

	/**
	 * 暂停流程定义
	 * 
	 * @param processInstancceId
	 */
	public void suspensionProcessDefination(String processDefinitionKey);

	/**
	 * 暂停流程定义
	 * 
	 * @param processInstancceId
	 */
	public void activeProcessDefination(String processDefinitionKey);

	/**
	 * 任务认领
	 * 
	 * @param taskId
	 * @param assignee
	 */
	public void claimTask(String taskId, String assignee);

	/**
	 * 判断流程实例是不是结束了
	 * 
	 * @param processInstanceId
	 */
	public Date processIfEnd(String processInstanceId);
}

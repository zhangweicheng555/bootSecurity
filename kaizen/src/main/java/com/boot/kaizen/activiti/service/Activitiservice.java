package com.boot.kaizen.activiti.service;

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
}

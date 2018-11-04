package com.boot.kaizen.activiti.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;

import com.boot.kaizen._interface.BusinessInterface;
import com.boot.kaizen.activiti.model.StartActEntity;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;

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
	 * 
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

	/**
	 * 删除流程实例 逻辑上的删除 结束流程实例
	 * 
	 * @param processInstanceId
	 * @param deleteReasoon
	 */
	public void deleteProcessIntance(String processInstanceId, String deleteReasoon);

	/**
	 * 通过流程定义删除流程部署 级联删除
	 * 
	 * @param processDefinationId
	 * @param cascade
	 */
	public void deleteProcessByDefinationId(String processDefinationId, Boolean cascade);

	/**
	 * 启动流程实例
	 * 
	 * @author weichengz
	 * @date 2018年11月4日 上午12:50:46
	 */
	public void startProcessInstance(StartActEntity startActEntity,BusinessInterface businessInterface);
	
	/**
	 * 
	* @Description: 查询任务
	* @author weichengz
	* @date 2018年11月4日 下午6:47:30
	 */
	public List<Task> queryMyActTask(String processDefinationKey,String taskAssign,Long projId);

	/**
	 * 
	* @Description: 根据任务的id获取数据的id
	* @author weichengz
	* @date 2018年11月4日 下午8:13:58
	 */
	public JsonMsgUtil loadRecordId(String taskId, String bussType);
	/**
	 * 
	* @Description: lteConfig审核
	* @author weichengz
	* @date 2018年11月4日 下午8:42:19
	 */
	public JsonMsgUtil checkLteConfigTask(Long recordId, String taskId, Long status, String checkResult,LoginUser user);
}

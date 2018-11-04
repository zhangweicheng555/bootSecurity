package com.boot.kaizen.activiti.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.boot.kaizen._interface.LteConfigActBusiness;
import com.boot.kaizen.activiti.model.MyActTask;
import com.boot.kaizen.activiti.model.StartActEntity;
import com.boot.kaizen.activiti.service.Activitiservice;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.TableResultUtil;
import com.boot.kaizen.util.UserUtil;

/**
 * 工作流控制层
 * 
 * @author a-zhangweicheng
 *
 */
@Controller
@RequestMapping(value = "/act")
public class ActivitiController {

	@Autowired
	private Activitiservice activitiservice;
	@Autowired
	private LteConfigActBusiness lteConfigActBusiness;
	@Autowired
	private IActBusinessService actBusinessService;

	/**
	 * 根据lteconfig业务表的id获取流程图
	 */
	@RequestMapping(value = "/findLteConfigActivitiImage")
	public void findLteConfigActivitiImage(@RequestParam("id") Long id, HttpServletResponse response) {
		String piid = actBusinessService.queryPiid(id, "LteConfig");
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		activitiservice.findActivitiProccessImage(piid, response);
	}

	/**
	 * 启动LteConfig流程实例
	 */
	@ResponseBody
	@RequestMapping(value = "/startLteConfigProcessInstance")
	public JsonMsgUtil startLteConfigProcessInstance(StartActEntity startActEntity) {
		activitiservice.startProcessInstance(startActEntity, lteConfigActBusiness);
		return new JsonMsgUtil(true, "推送成功", null);
	}

	/**
	 * 查看审核信息
	 */
	@ResponseBody
	@RequestMapping(value = "/findCheckInfo")
	public JsonMsgUtil findCheckInfo(@RequestParam("id") long id, @RequestParam("bussType") String bussType) {
		return actBusinessService.findCheckInfo(id, bussType);
	}

	/**
	 * 查询我的任务
	 */
	@ResponseBody
	@RequestMapping(value = "/queryMyActTask")
	public TableResultUtil queryMyActTask(@RequestParam("bussType") String bussType) {
		List<MyActTask> list = new ArrayList<MyActTask>();
		LoginUser loginUser = UserUtil.getLoginUser();
		List<Task> tasks = activitiservice.queryMyActTask(bussType, loginUser.getId().toString(),
				loginUser.getProjId());
		for (Task task : tasks) {
			MyActTask myActTask = new MyActTask(task.getId(), task.getName(), task.getFormKey(),
					task.getProcessDefinitionId(), task.getProcessInstanceId(), task.getCreateTime());
			list.add(myActTask);
		}
		return new TableResultUtil(0l, "操作成功", Long.valueOf(String.valueOf(list.size())), list);
	}

	/**
	 * 根据任务的id去查询数据记录的id
	 */
	@ResponseBody
	@RequestMapping(value = "/loadRecordId")
	public JsonMsgUtil loadRecordId(@RequestParam("taskId") String taskId, @RequestParam("bussType") String bussType) {
		return activitiservice.loadRecordId(taskId, bussType);
	}

	/**
	 * 审核lteconfig数据
	 */
	@ResponseBody
	@RequestMapping(value = "/checkLteConfigTask")
	public JsonMsgUtil checkLteConfigTask(@RequestParam("recordId") Long recordId,
			@RequestParam("taskId") String taskId, @RequestParam("status") Long status,
			@RequestParam("checkResult") String checkResult) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return activitiservice.checkLteConfigTask(recordId, taskId,status,checkResult,loginUser);
	}

}

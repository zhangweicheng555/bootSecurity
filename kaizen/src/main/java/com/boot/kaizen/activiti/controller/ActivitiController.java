package com.boot.kaizen.activiti.controller;

import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.kaizen.activiti.service.Activitiservice;

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

	/**
	 * 通过流程实例id获取流程图执行的情况
	 */
	@RequestMapping(value = "/findActivitiProccessImage")
	public void findActivitiProccessImage(@RequestParam("piid") String piid, HttpServletResponse response) {
		activitiservice.findActivitiProccessImage("2501", response);
	}
}
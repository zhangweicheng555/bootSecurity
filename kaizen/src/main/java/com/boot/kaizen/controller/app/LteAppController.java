package com.boot.kaizen.controller.app;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.service.lte.ILtePlanService;
import com.boot.kaizen.util.AppUtil;

/**
 * LTE app对接模块
 * 
 * @author a-zhangweicheng
 *
 */
@RestController
@RequestMapping("/lte/app")
public class LteAppController {

	@Autowired
	private SysProjectService projectService;
	@Autowired
	private UserService userService;
	@Autowired
	private ILtePlanService ltePlanService;
	// 0:失败;1:成功; 2:服务器异常

	/**
	 * 根据登录的用户查询拥有的项目
	 * 
	 * @param username
	 */
	@RequestMapping(value = "/queryProjectList", method = RequestMethod.GET)
	public AppUtil queryProjectList(@RequestParam(value = "name", required = true) String name) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		List<Map<String, Object>> list = new ArrayList<>();
		try {
			List<Map<String, Object>> queryProjects = projectService.queryProjects(name);
			if (queryProjects == null || queryProjects.size() == 0) {
				appUtil = new AppUtil(0, "查询项目列表为空", "");
				return appUtil;
			}
			for (Map<String, Object> map : queryProjects) {
				Map<String, Object> model = new HashMap<>();
				model.put("proName", map.get("projName"));
				model.put("projId", map.get("id"));
				list.add(model);
			}
			appUtil.setDataSource(list);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	/**
	 * 根据用户名字 项目id查询个人信息
	 * 
	 * @param username
	 * @param projId
	 */
	@RequestMapping(value = "/queryUserInfo", method = RequestMethod.GET)
	public AppUtil queryUserInfo(@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "projId", required = true) Long projId) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		try {
			SysUser user = userService.queryUser(projId, name);
			if (user == null) {
				appUtil = new AppUtil(0, "用户不存在", "");
				return appUtil;
			}
			Map<String, Object> map = new HashMap<>();
			map.put("UserID", user.getId());
			map.put("UserName", user.getUsername());
			map.put("projId", projId);
			appUtil.setDataSource(map);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	/**
	 * 根据
	 * 
	 * @param username
	 * @param projId
	 */
	@RequestMapping(value = "/queryPlanList", method = RequestMethod.GET)
	public AppUtil queryUserInfo(@RequestParam(value = "userId", required = true) Long userId,
			@RequestParam(value = "projId", required = true) Long projId) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		try {
			List<Map<String, Object>> planList = ltePlanService.queryPlanList(userId, projId);

			if (planList == null || planList.size() == 0) {
				appUtil = new AppUtil(0, "查询任务列表为空", "");
				return appUtil;
			}
			appUtil.setDataSource(planList);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

}

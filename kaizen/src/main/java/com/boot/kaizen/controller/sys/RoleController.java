package com.boot.kaizen.controller.sys;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.entity.ZtreeModel;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.service.PermissionService;
import com.boot.kaizen.service.RoleService;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.UserUtil;

/**
 * 角色管理
 * 
 * @author weichengz
 * @date 2018年10月4日 上午1:13:13
 */
@RestController
@RequestMapping("/role")
public class RoleController {

	@Autowired
	private RoleService roleService;
	@Autowired
	private SysProjectService projectService;
	@Autowired
	private PermissionService permissionService;

	/**
	 * 
	 * @Description: 角色treeTable列表
	 * @author weichengz
	 * @date 2018年10月5日 下午2:42:05
	 */
	@RequestMapping(value = "/list")
	public List<TreeTable> list() {
		LoginUser user = UserUtil.getLoginUser();
		return roleService.list(user);
	}

	/**
	 * 
	 * @Description: 项目下拉框
	 * @author weichengz
	 * @date 2018年10月5日 下午2:41:44
	 */
	@RequestMapping(value = "/projSelect")
	public List<SysProject> projSelect() {
		return projectService.findList();
	}

	/**
	 * 
	 * @Description: 根据ID查询
	 * @author weichengz
	 * @date 2018年10月5日 下午2:41:32
	 */
	@RequestMapping(value = "/findById")
	public SysRole findById(@RequestParam(value = "id", required = true) Long id) {
		return roleService.findById(id);
	}
	/**
	 * 
	 * @Description: 根据ID删除
	 * @author weichengz
	 * @date 2018年10月5日 下午2:41:32
	 */
	@RequestMapping(value = "/delete")
	public JsonMsgUtil delete(@RequestParam(value = "id", required = true) Long id) {
		return roleService.delete(id);
	}

	/**
	 * 
	 * @Description: 添加/修改
	 * @author weichengz
	 * @date 2018年10月5日 下午2:41:19
	 */
	@RequestMapping(value = "/edit")
	public JsonMsgUtil edit(SysRole sysRole, @RequestParam("permissionIds") String permissionIds,
			@RequestParam("projId") String projId) {
		return roleService.edit(sysRole, permissionIds, projId);
	}

	/**
	 * 
	 * @Description: 查询角色对应的资源树
	 * @author weichengz
	 * @date 2018年10月5日 上午11:56:40 flag:角色的id
	 */
	@RequestMapping(value = "/find")
	@PreAuthorize("hasAuthority('sys:role:list')")
	public List<ZtreeModel> find(@RequestParam(value = "flag", required = false) Long flag) {
		List<Long> ids = roleService.findPermissionIdsByRoleId(flag);
		if (ids == null) {
			ids = new ArrayList<Long>();
		}
		return permissionService.find(ids);
	}
	/**
	 * 
	 * @Description: 查询角色对应的人员树
	 * @author weichengz
	 * @date 2018年10月5日 上午11:56:40 flag:角色的id
	 */
	@RequestMapping(value = "/findRolePersion")
	public List<ZtreeModel> findRolePersion(@RequestParam(value = "flag", required = true) Long flag) {
		return roleService.findRolePersion(flag);
	}
}

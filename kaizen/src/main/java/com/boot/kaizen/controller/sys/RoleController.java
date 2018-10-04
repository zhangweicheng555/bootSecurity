package com.boot.kaizen.controller.sys;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.model.SysDic;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.service.RoleService;
import com.boot.kaizen.service.SysDictionaryService;
import com.boot.kaizen.service.SysProjectService;

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

	@RequestMapping(value = "/list")
	public List<TreeTable> list() {
		return roleService.list();
	}

	@RequestMapping(value = "/projSelect")
	public List<SysProject> projSelect() {
		return projectService.findList();
	}

}

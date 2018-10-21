package com.boot.kaizen.controller.sys;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.entity.DistributeTreeTable;
import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.entity.ZtreeModel;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.service.DistributeService;
import com.boot.kaizen.service.PermissionService;
import com.boot.kaizen.service.RoleService;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.util.JsonMsgUtil;

/**
 * 权限分配
 * 
 * @author weichengz
 * @date 2018年10月21日 上午9:15:06
 */
@RestController
@RequestMapping("/distribute")
public class DistributeController {

	@Autowired
	private DistributeService distributeService;
	
	
	@PreAuthorize("hasAuthority('sys:distribute:list')")
	@RequestMapping(value = "/list")
	public List<DistributeTreeTable> list() {
		return distributeService.list();
	}

	@RequestMapping(value = "/findUserIds")
	public List<Long> findUserIds(@RequestParam("roleId") Long roleId) {
		return distributeService.findUserIds(roleId);
	}
	@RequestMapping(value = "/distribute")
	public JsonMsgUtil distribute(@RequestParam("userIds") String userIds,@RequestParam("roleId") Long roleId) {
		return distributeService.distribute(roleId,userIds);
	}

}

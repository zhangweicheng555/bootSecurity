package com.boot.kaizen.service;

import java.util.List;

import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.util.JsonMsgUtil;

public interface RoleService {

	public List<TreeTable> list();

	public JsonMsgUtil edit(SysRole sysRole, String permissionIds,String projId);

	public SysRole findById(Long id);

	public List<Long> findPermissionIdsByRoleId(Long roleId);

	public JsonMsgUtil delete(Long id);

}

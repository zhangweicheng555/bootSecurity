package com.boot.kaizen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.SysRolePermissionDao;
import com.boot.kaizen.service.SysRolePermissionService;

@Service
public class SysRolePermissionServiceImpl implements SysRolePermissionService {

	@Autowired
	private SysRolePermissionDao rolePermissionDao;

	@Override
	public void deleteByRoleId(Long roleId) {
		rolePermissionDao.deleteByRoleId(roleId);
	}

	@Override
	public void deleteByPermissionId(Long id) {
		rolePermissionDao.deleteByPermissionId(id);
	}

	@Override
	public void deleteByProjIds(Long[] projIds) {
		rolePermissionDao.deleteByProjIds(projIds);
	}

}

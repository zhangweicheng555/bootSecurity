package com.boot.kaizen.service.impl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.SysProjectRoleRelationDao;
import com.boot.kaizen.dao.SysRolePermissionDao;
import com.boot.kaizen.model.SysProjectRoleRelation;
import com.boot.kaizen.model.SysRolePermission;
import com.boot.kaizen.service.ProjectRoleRelationService;
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

}

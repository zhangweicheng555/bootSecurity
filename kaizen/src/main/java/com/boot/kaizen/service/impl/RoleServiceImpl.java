package com.boot.kaizen.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.SysProjectDao;
import com.boot.kaizen.dao.SysProjectRoleRelationDao;
import com.boot.kaizen.dao.SysRoleDao;
import com.boot.kaizen.dao.SysRolePermissionDao;
import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysProjectRoleRelation;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.model.SysRolePermission;
import com.boot.kaizen.service.ProjectRoleRelationService;
import com.boot.kaizen.service.RoleService;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.service.SysRolePermissionService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
public class RoleServiceImpl implements RoleService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");
	@Autowired
	private SysRoleDao sysRoleDao;
	@Autowired
	private ProjectRoleRelationService projectRoleRelationService;
	@Autowired
	private SysProjectService projectService;
	@Autowired
	private SysRolePermissionService rolePermissionService;
	@Autowired
	private SysRolePermissionDao sysRolePermissionDao;

	@Override
	public List<TreeTable> list() {
		List<TreeTable> treeTables = new ArrayList<TreeTable>();
		List<SysProject> projects = projectService.findWithRoleRealtion();
		if (projects != null && projects.size() > 0) {
			for (SysProject project : projects) {
				TreeTable table = new TreeTable(project.getId(), project.getProjName(), "", project.getCreateTime(),
						project.getUpdateTime(), -1l);
				treeTables.add(table);
				List<SysRole> roles = project.getRoles();
				if (roles != null && roles.size() > 0) {
					for (SysRole sysRole : roles) {
						TreeTable roleTable = new TreeTable(sysRole.getId(), sysRole.getName(),
								sysRole.getDescription(), sysRole.getCreateTime(), sysRole.getUpdateTime(),
								project.getId());
						treeTables.add(roleTable);
					}
				}
			}
		}
		return treeTables;
	}

	@Override
	public JsonMsgUtil edit(SysRole sysRole, String permissionIds, String projId) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (sysRole.getId() != null) {// edit

				sysRole.setUpdateTime(new Date());
				sysRoleDao.update(sysRole);

				// 删除角色 项目 资源关系表
				projectRoleRelationService.deleteByRoleAndProId(sysRole.getId());
				rolePermissionService.deleteByRoleId(sysRole.getId());
			} else {// add
				sysRole.setCreateTime(new Date());
				sysRoleDao.save(sysRole);
			}

			List<SysProjectRoleRelation> relations = new ArrayList<>();
			if (StringUtils.isNoneBlank(projId)) {
				String[] ids = projId.trim().split(",");
				for (String id : ids) {
					relations.add(new SysProjectRoleRelation(sysRole.getId(), Long.valueOf(id)));
				}
			}
			projectRoleRelationService.batchInsert(relations);

			List<SysRolePermission> rolePermissions = new ArrayList<>();
			if (StringUtils.isNoneBlank(permissionIds)) {
				String[] ids = permissionIds.trim().split(",");
				for (String id : ids) {
					rolePermissions.add(new SysRolePermission(sysRole.getId(), Long.valueOf(id)));
				}
			}
			sysRolePermissionDao.batchInsert(rolePermissions);

			j = new JsonMsgUtil(true, "操作成功", null);
		} catch (Exception e) {
			e.printStackTrace();
			j.setMsg("操作失败");
		}

		return j;
	}

	@Override
	public SysRole findById(Long id) {
		return sysRoleDao.findById(id);
	}

	@Override
	public List<Long> findPermissionIdsByRoleId(Long roleId) {
		return sysRoleDao.findPermissionIdsByRoleId(roleId);
	}

	@Override
	public JsonMsgUtil delete(Long id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			sysRoleDao.delete(id);
			projectRoleRelationService.deleteByRoleAndProId(id);
			rolePermissionService.deleteByRoleId(id);
			j=new JsonMsgUtil(true, "删除操作成功", "");
		} catch (Exception e) {
			j.setMsg("删除操作失败");
			e.printStackTrace();
		}
		return j;
	}

}

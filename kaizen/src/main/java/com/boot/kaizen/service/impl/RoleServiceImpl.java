package com.boot.kaizen.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.SysProjectDao;
import com.boot.kaizen.dao.SysProjectRoleRelationDao;
import com.boot.kaizen.dao.SysRoleDao;
import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.service.RoleService;
import com.boot.kaizen.service.SysProjectService;

@Service
public class RoleServiceImpl implements RoleService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");
	@Autowired
	private SysRoleDao sysRoleDao;
	@Autowired
	private SysProjectRoleRelationDao projectRoleRelationDao;
	@Autowired
	private SysProjectService projectService;

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

}

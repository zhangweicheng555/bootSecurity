package com.boot.kaizen.service.impl;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.SysProjectRoleRelationDao;
import com.boot.kaizen.model.SysProjectRoleRelation;
import com.boot.kaizen.service.ProjectRoleRelationService;

@Service
public class ProjectRoleRelationServiceImpl implements ProjectRoleRelationService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private SysProjectRoleRelationDao projectRoleRelationDao;

	@Override
	public void batchInsert(List<SysProjectRoleRelation> relations) {
		projectRoleRelationDao.batchInsert(relations);
	}

	@Override
	public void deleteByRoleAndProId(Long roleId) {
		projectRoleRelationDao.deleteByRoleAndProId(roleId);
	}

}

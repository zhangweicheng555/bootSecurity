package com.boot.kaizen.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.boot.kaizen.dao.PermissionDao;
import com.boot.kaizen.model.Permission;
import com.boot.kaizen.service.PermissionService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
public class PermissionServiceImpl implements PermissionService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private PermissionDao permissionDao;

	@Override
	public void save(Permission permission) {
		permissionDao.save(permission);

		log.debug("新增菜单{}", permission.getName());
	}

	@Override
	public void update(Permission permission) {
		permissionDao.update(permission);
	}

	@Override
	@Transactional
	public JsonMsgUtil delete(Long id) {
		JsonMsgUtil j=new JsonMsgUtil(false);
		try {
			permissionDao.delete(id);
			j=new JsonMsgUtil(true, "操作成功", "");
		} catch (Exception e) {
			j.setMsg("删除操作失败");
		}
		return j;
	}

	@Override
	public JsonMsgUtil edit(Permission permission) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (permission.getId() != null) {// edit
				permissionDao.update(permission);
				j = new JsonMsgUtil(true, "添加成功", "");
			} else {
				permissionDao.save(permission);
				j = new JsonMsgUtil(true, "添加成功", "");
			}
		} catch (Exception e) {
			j.setMsg("添加操作失败");
			e.printStackTrace();
		}
		return j;
	}

}

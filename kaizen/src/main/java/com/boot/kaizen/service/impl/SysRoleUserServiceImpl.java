package com.boot.kaizen.service.impl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.SysRoleUserDao;
import com.boot.kaizen.service.SysRoleUserService;

@Service
public class SysRoleUserServiceImpl implements SysRoleUserService {

	@Autowired
	private SysRoleUserDao roleUserDao;

	@Override
	public void delete(Long roleId) {
		roleUserDao.delete(roleId);
	}

}

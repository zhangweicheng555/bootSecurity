package com.boot.kaizen.service.impl;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.SysLoginServiceDao;
import com.boot.kaizen.model.log.LoginService;
import com.boot.kaizen.service.SysLoginServiceService;

@Service
public class SysLoginServiceServiceImpl implements SysLoginServiceService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private SysLoginServiceDao sysLoginServiceDao;

	@Override
	public Long findProjByUserName(String username) {
		return sysLoginServiceDao.findProjByUserName(username);
	}

	@Override
	public void insert(LoginService loginService) {
		sysLoginServiceDao.insert(loginService);
	}

}

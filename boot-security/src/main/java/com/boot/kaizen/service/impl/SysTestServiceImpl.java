package com.boot.kaizen.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.ehcache.EhCacheCacheManager;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.TestDao;
import com.boot.kaizen.model.ParamTest;
import com.boot.kaizen.model.SysTest;
import com.boot.kaizen.service.SysTestService;
import com.boot.kaizen.util.CacheUtil;
import com.boot.kaizen.util.SpringUtil;

import net.sf.ehcache.Cache;
import net.sf.ehcache.CacheManager;

@Service
public class SysTestServiceImpl implements SysTestService {

	@Autowired
	private TestDao userDao;

	@Override
	public List<SysTest> findTest() {
		return userDao.findTest();
	}

	@Override
	public List<SysTest> findTest(int pageNum, int pageSize) {
		return userDao.findTest(pageNum, pageSize);
	}

	@Override
	public List<SysTest> findTest(ParamTest paramTest) {
		return userDao.findTest(paramTest);
	}

}

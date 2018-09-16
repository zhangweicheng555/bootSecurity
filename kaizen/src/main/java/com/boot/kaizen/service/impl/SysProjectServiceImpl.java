package com.boot.kaizen.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.boot.kaizen.dao.SysProjectDao;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
public class SysProjectServiceImpl implements SysProjectService {

	@Autowired
	private SysProjectDao projectDao;

	@Override
	public List<SysProject> query() {
		return projectDao.query();
	}

	@Override
	public List<SysProject> find(Map<String, Object> map) {
		return projectDao.find(map);
	}

	@Transactional
	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (StringUtils.isNoneBlank(ids)) {
				String[] idsArray = ids.trim().split(",");
				Long[] array = new Long[idsArray.length];
				for (int i = 0; i < idsArray.length; i++) {
					String id = idsArray[i];
					array[i] = Long.valueOf(id.trim());
				}
				j = new JsonMsgUtil(true, "删除操作成功", projectDao.delete(array));
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public JsonMsgUtil edit(SysProject sysProject) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (sysProject.getId() == null) {//add
				sysProject.setCreateTime(new Date());
				projectDao.insert(sysProject);
			} else {// edit
				sysProject.setUpdateTime(new Date());
				projectDao.update(sysProject);
			}
			j = new JsonMsgUtil(true, "操作成功", null);
		} catch (Exception e) {

		}
		return j;
	}

}

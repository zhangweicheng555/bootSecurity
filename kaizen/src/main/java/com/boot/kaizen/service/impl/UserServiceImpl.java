package com.boot.kaizen.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import com.boot.kaizen.dao.SysUserDao;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.UserDto;
import com.boot.kaizen.model.SysUser.Status;
import com.boot.kaizen.service.SysRoleUserService;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
public class UserServiceImpl implements UserService {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private SysUserDao userDao;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	@Autowired
	private SysRoleUserService roleUserService;

	@Override
	@Transactional
	public SysUser saveUser(SysUser sysUser) {
		sysUser.setPassword(passwordEncoder.encode(sysUser.getPassword()));
		sysUser.setStatus(Status.VALID);
		sysUser.setCreateTime(new Date());
		userDao.save(sysUser);
		return sysUser;
	}

	@Override
	public SysUser getUser(String username) {
		return userDao.getUser(username);
	}

	@Override
	public void changePassword(String username, String oldPassword, String newPassword) {
		SysUser u = userDao.getUser(username);
		if (u == null) {
			throw new IllegalArgumentException("用户不存在");
		}

		if (!passwordEncoder.matches(oldPassword, u.getPassword())) {
			throw new IllegalArgumentException("旧密码错误");
		}

		userDao.changePassword(u.getId(), passwordEncoder.encode(newPassword));

		log.debug("修改{}的密码", username);
	}

	@Override
	@Transactional
	public JsonMsgUtil updateUser(SysUser sysUser) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			sysUser.setUpdateTime(new Date());
			userDao.update(sysUser);
			j = new JsonMsgUtil(true, "操作成功", "");
		} catch (Exception e) {
			j.setMsg("修改失败");
			e.printStackTrace();
		}
		return j;
	}

	@Override
	public List<SysUser> find(Map<String, Object> map) {
		return userDao.find(map);
	}

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
				// 删除用户角色关系
				roleUserService.deleteBatch(array);
				userDao.deleteBatch(array);
				j = new JsonMsgUtil(true, "删除操作成功", "");
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			j = new JsonMsgUtil(true, "操作成功", userDao.getById(id));
		} catch (Exception e) {
			j.setMsg("擦走失败");
			e.printStackTrace();
		}
		return j;
	}

	@Override
	public String findUserNames(Long roleId) {
		return userDao.findUserNames(roleId);
	}

	@Override
	public List<Long> findUserIds(Long roleId) {
		return userDao.findUserIds(roleId);
	}

}

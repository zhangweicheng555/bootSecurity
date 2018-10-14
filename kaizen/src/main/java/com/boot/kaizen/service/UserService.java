package com.boot.kaizen.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.UserDto;
import com.boot.kaizen.util.JsonMsgUtil;

public interface UserService {

	/**
	 * 
	 * @Description: 保存用户
	 * @author weichengz
	 * @date 2018年10月6日 下午5:06:10
	 */
	SysUser saveUser(SysUser userDto);

	JsonMsgUtil updateUser(SysUser sysUser);

	SysUser getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

	/**
	 * @Description: 列表查询
	 * @author weichengz
	 * @date 2018年10月6日 下午5:39:16
	 */
	List<SysUser> find(Map<String, Object> map);

	JsonMsgUtil delete(String ids);

	JsonMsgUtil findById(Long id);

}

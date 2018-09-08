package com.boot.kaizen.service;

import com.boot.kaizen.entity.UserDto;
import com.boot.kaizen.model.SysUser;

public interface UserService {

	SysUser saveUser(UserDto userDto);

	SysUser updateUser(UserDto userDto);

	SysUser getUser(String username);

	void changePassword(String username, String oldPassword, String newPassword);

}

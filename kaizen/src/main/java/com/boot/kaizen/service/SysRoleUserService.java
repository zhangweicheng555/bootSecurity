package com.boot.kaizen.service;

import java.util.List;


import com.boot.kaizen.model.SysRoleUser;

public interface SysRoleUserService {

	void delete(Long roleId);

	void batchInsert(List<SysRoleUser> roleUsers);
}

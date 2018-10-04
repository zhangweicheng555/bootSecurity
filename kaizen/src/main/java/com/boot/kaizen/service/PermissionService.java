package com.boot.kaizen.service;

import com.boot.kaizen.model.Permission;
import com.boot.kaizen.util.JsonMsgUtil;

public interface PermissionService {

	void save(Permission permission);

	void update(Permission permission);

	JsonMsgUtil delete(Long id);
	
	JsonMsgUtil edit(Permission permission);
}

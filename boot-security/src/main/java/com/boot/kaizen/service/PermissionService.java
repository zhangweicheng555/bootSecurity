package com.boot.kaizen.service;

import com.boot.kaizen.model.Permission;

public interface PermissionService {

	void save(Permission permission);

	void update(Permission permission);

	void delete(Long id);
}

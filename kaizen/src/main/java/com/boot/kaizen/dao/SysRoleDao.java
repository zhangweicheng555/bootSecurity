package com.boot.kaizen.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.SysRole;

@Mapper
public interface SysRoleDao {

	List<SysRole> queryByProId(@Param("projId") Long projId);

	void save(SysRole sysRole);

	SysRole findById(@Param("id") Long id);

	List<Long> findPermissionIdsByRoleId(@Param("roleId") Long roleId);

	void update(SysRole sysRole);

	void delete(@Param("id") Long id);

}

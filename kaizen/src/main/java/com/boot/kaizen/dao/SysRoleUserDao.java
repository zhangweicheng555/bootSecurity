package com.boot.kaizen.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface SysRoleUserDao {

	void delete(@Param("roleId") Long roleId);

}

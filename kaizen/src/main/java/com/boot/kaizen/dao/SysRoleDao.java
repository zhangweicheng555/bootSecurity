package com.boot.kaizen.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.SysRole;

@Mapper
public interface SysRoleDao {

	List<SysRole> queryByProId(@Param("projId") Long projId);

}

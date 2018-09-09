package com.boot.kaizen.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.SysProject;

@Mapper
public interface SysProjectDao {

	List<SysProject> query();

	List<SysProject> find(@Param("map") Map<String, Object> map);

	Integer delete(@Param("idsArray") Long[] array);
}

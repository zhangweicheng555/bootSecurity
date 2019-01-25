package com.boot.kaizen.business.tddsf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.business.tddsf.model.LteTddParameter;

@Mapper
public interface LteTddParameterMapper {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddParameter record);

	LteTddParameter selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddParameter record);

	List<LteTddParameter> find(@Param("map") Map<String, Object> map);

}
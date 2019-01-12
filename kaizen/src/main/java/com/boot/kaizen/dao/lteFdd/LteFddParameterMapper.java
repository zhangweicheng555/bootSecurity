package com.boot.kaizen.dao.lteFdd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.lteFddModel.LteFddParameter;

@Mapper
public interface LteFddParameterMapper {

	int deleteByPrimaryKey(String id);

	int insertSelective(LteFddParameter record);

	LteFddParameter selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteFddParameter record);

	List<LteFddParameter> query(@Param("map") Map<String, Object> map);

	Integer delete(@Param("idsArray") String[] idsArray);
}
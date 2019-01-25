package com.boot.kaizen.business.tddsf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.business.tddsf.model.LteTddStation;

@Mapper
public interface LteTddStationMapper {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddStation record);

	LteTddStation selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddStation record);

	List<LteTddStation> find(@Param("map") Map<String, Object> map);

}
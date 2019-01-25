package com.boot.kaizen.business.tddsf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.business.tddsf.model.LteTddPlan;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;

@Mapper
public interface LteTddPlanMapper {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddPlan record);

	LteTddPlan selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddPlan record);

	List<LteFddPlan> find(@Param("map") Map<String, Object> map);

}
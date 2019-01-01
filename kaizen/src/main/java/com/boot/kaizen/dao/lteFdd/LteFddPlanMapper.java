package com.boot.kaizen.dao.lteFdd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.model.lteFddModel.LteFddPlanInfo;

@Mapper
public interface LteFddPlanMapper {
	int deleteByPrimaryKey(String id);

	int insert(LteFddPlan record);

	int insertSelective(LteFddPlan record);

	LteFddPlan selectByPrimaryKey(String id);

	List<LteFddPlan> query(@Param("map") Map<String, Object> map);

	int updateByPrimaryKeySelective(LteFddPlan record);

	int updateByPrimaryKey(LteFddPlan record);

	Integer delete(@Param("idsArray") String[] idsArray);
	
	List<BaseStationBean> queryStationList(@Param("userId") Long userId, @Param("projId") Long projId,
			@Param("testDate") String testDate);
}
package com.boot.kaizen.business.tddsf.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.business.tddsf.model.LteTddPlan;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteTddPlanService {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddPlan record);

	LteTddPlan selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddPlan record);

	List<LteFddPlan> find(Map<String, Object> map);

	JsonMsgUtil edit(LteTddPlan lteTddPlan, LoginUser loginUser);

	JsonMsgUtil findById(String id);

	JsonMsgUtil deleteByIds(String ids);

}
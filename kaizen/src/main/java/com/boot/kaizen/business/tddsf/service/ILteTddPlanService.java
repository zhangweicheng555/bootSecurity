package com.boot.kaizen.business.tddsf.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.business.tddsf.model.LteTddPlan;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteTddPlanService {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddPlan record);

	LteTddPlan selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddPlan record);

	List<LteTddPlan> find(Map<String, Object> map);

	JsonMsgUtil edit(LteTddPlan lteTddPlan, LoginUser loginUser);

	JsonMsgUtil findById(String id);

	JsonMsgUtil deleteByIds(String ids);

	/**
	 * 
	* @Description: app使用 拉取测试计划列表
	* @author weichengz
	* @date 2019年1月27日 下午9:08:38
	 */
	List<Map<String, Object>> queryPlanList(Long userId, Long projId,String testDate);

	/**
	 * 拉取基站信息
	* @Description: TODO
	* @author weichengz
	* @date 2019年1月27日 下午9:23:32
	 */
	List<BaseStationBean> queryBaseStationList(Long userId, Long projId, String testDate);

}
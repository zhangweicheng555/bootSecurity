package com.boot.kaizen.business.tddsf.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.business.tddsf.model.LteTddStation;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteTddStationService {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddStation record);

	LteTddStation selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddStation record);

	JsonMsgUtil deleteByIds(String ids);

	JsonMsgUtil findById(String id);

	JsonMsgUtil edit(LteTddStation lteConfig, LoginUser loginUser);

	List<LteTddStation> find(Map<String, Object> map);

	/**
	 * 
	* @Description: app基站信息的测试接口
	* @author weichengz
	* @date 2019年1月27日 下午9:42:36
	 */
	void upSert(LteTddStation lteTddStation);

}
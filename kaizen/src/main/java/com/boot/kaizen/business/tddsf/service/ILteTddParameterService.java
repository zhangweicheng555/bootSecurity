package com.boot.kaizen.business.tddsf.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.business.tddsf.model.LteTddParameter;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteTddParameterService {
	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddParameter record);

	LteTddParameter selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddParameter record);

	List<LteTddParameter> find(Map<String, Object> map);

	JsonMsgUtil edit(LteTddParameter lteTddParameter, LoginUser loginUser);

	JsonMsgUtil findById(String id);

	JsonMsgUtil deleteByIds(String ids);

	/**
	 * 
	* @Description: app上传小区测试信息
	* @author weichengz
	* @date 2019年1月27日 下午10:48:42
	 */
	void upsert(LteTddParameter lteFddParameter);

}
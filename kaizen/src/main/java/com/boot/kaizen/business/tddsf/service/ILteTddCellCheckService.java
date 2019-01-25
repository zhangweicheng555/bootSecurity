package com.boot.kaizen.business.tddsf.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.business.tddsf.model.LteTddCellCheck;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteTddCellCheckService {

	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddCellCheck record);

	LteTddCellCheck selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddCellCheck record);

	List<LteTddCellCheck> find(Map<String, Object> map);

	JsonMsgUtil edit(LteTddCellCheck lteTddCellCheck, LoginUser loginUser);

	JsonMsgUtil findById(String id);

	JsonMsgUtil deleteByIds(String ids);

}
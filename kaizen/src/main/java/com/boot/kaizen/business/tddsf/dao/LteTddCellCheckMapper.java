package com.boot.kaizen.business.tddsf.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.business.tddsf.model.LteTddCellCheck;

@Mapper
public interface LteTddCellCheckMapper {

	int deleteByPrimaryKey(String id);

	int insertSelective(LteTddCellCheck record);

	LteTddCellCheck selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteTddCellCheck record);

	List<LteTddCellCheck> find(@Param("map") Map<String, Object> map);

}
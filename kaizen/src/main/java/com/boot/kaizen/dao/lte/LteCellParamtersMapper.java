package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.lte.LteCellParamters;
@Mapper
public interface LteCellParamtersMapper {
	
    int deleteByPrimaryKey(String id);

    int insert(LteCellParamters record);

    int insertSelective(LteCellParamters record);

    LteCellParamters selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LteCellParamters record);

    int updateByPrimaryKey(LteCellParamters record);
    
    List<LteCellParamters> query(@Param("map") Map<String, Object> map);
}
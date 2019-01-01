package com.boot.kaizen.dao.lteFdd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.lteFddModel.LteFddStation;

@Mapper
public interface LteFddStatrionMapper {
    int deleteByPrimaryKey(String id);

    int insert(LteFddStation record);

    int insertSelective(LteFddStation record);

    LteFddStation selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LteFddStation record);

    int updateByPrimaryKey(LteFddStation record);
    
    List<LteFddStation> query(@Param("map") Map<String, Object> map);
    
    Integer delete(@Param("idsArray") String[] idsArray);
}
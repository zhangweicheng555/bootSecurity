package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.lte.LteCellStructuralValidation;
@Mapper
public interface LteCellStructuralValidationMapper {
    int deleteByPrimaryKey(String id);

    int insert(LteCellStructuralValidation record);

    int insertSelective(LteCellStructuralValidation record);

    LteCellStructuralValidation selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(LteCellStructuralValidation record);

    int updateByPrimaryKey(LteCellStructuralValidation record);

	List<LteCellStructuralValidation> query(@Param("map") Map<String, Object> map);
}
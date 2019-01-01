package com.boot.kaizen.dao.lteFdd;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;

@Mapper
public interface LteFddCellCheckMapper {
	int deleteByPrimaryKey(String id);

	int insert(LteFddCellCheck record);

	int insertSelective(LteFddCellCheck record);

	LteFddCellCheck selectByPrimaryKey(String id);

	int updateByPrimaryKeySelective(LteFddCellCheck record);

	int updateByPrimaryKey(LteFddCellCheck record);

	List<LteFddCellCheck> query(@Param("map") Map<String, Object> map);

	Integer delete(@Param("idsArray") String[] idsArray);
}
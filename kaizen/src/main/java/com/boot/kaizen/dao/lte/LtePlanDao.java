package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.boot.kaizen.model.lte.LtePlan;


@Mapper
public interface LtePlanDao {

	List<LtePlan> find(@Param("map") Map<String, Object> map);

}

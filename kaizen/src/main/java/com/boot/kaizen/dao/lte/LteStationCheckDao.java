package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.boot.kaizen.model.LteStationCheck;

@Mapper
public interface LteStationCheckDao {
	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2018年10月28日 下午4:42:04
	 */
	List<LteStationCheck> find(@Param("map") Map<String, Object> map);

	/**
	 *
	* @Description: 删除
	* @author weichengz
	* @date 2018年10月28日 下午11:06:34
	 */
	Integer delete(@Param("idsArray") Long[] array);
	
	/**
	 * 批量添加数据  app
	 * @param stationChecks
	 */
	void batchInsert(@Param("stationChecks") List<LteStationCheck> stationChecks);

}

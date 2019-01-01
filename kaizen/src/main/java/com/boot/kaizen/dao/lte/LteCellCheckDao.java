package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.lte.LteCellCheck;
import com.boot.kaizen.model.lte.LteStationCheck;

@Mapper
public interface LteCellCheckDao {
	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2018年10月28日 下午4:42:04
	 */
	List<LteCellCheck> find(@Param("map") Map<String, Object> map);

	/**
	 *
	 * @Description: 删除
	 * @author weichengz
	 * @date 2018年10月28日 下午11:06:34
	 */
	Integer delete(@Param("idsArray") Long[] array);

	/**
	 * 批量添加数据 app
	 * 
	 * @param stationChecks
	 */
	void batchInsert(@Param("cellChecks") List<LteCellCheck> cellChecks);

	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2018年11月11日 上午8:28:32
	 */
	List<LteCellCheck> findListByMenodeBID(@Param("mENodeBID") String mENodeBID);
	/**
	 * 根据站号删除
	* @Description: TODO
	* @author weichengz
	* @date 2018年11月11日 下午10:47:21
	 */
	void deleteByeNodeBID(@Param("mENodeBID") String mENodeBID);

}

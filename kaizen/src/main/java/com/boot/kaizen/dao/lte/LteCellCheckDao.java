package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.boot.kaizen.model.LteCellCheck;

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

}

package com.boot.kaizen.dao.act;

import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.util.JsonMsgUtil;

@Mapper
public interface ActBusinessDao {

	/**
	 * buss_type,create_time,buss_id,proj_id,act_piid
	 * 
	 * @Description: 添加四项
	 * @author weichengz
	 * @date 2018年11月4日 下午12:15:48
	 */
	void insert(@Param("map") Map<String, Object> map);

	/**
	 * 
	 * @Description: 根据业务id跟业务类型查询流程实例
	 * @author weichengz
	 * @date 2018年11月4日 下午1:14:49
	 */
	String queryPiid(@Param("id") Long id, @Param("bussType") String bussType);

	/**
	 * 
	 * @Description: 查询审核人 审核信息
	 * @author weichengz
	 * @date 2018年11月4日 下午1:52:45
	 */
	Map<String, Object> findCheckInfo(@Param("id") Long id, @Param("bussType") String bussType);

	/**
	 * 
	 * @Description: 全部添加
	 * @author weichengz
	 * @date 2018年11月4日 下午9:01:08
	 */
	void insertAll(Map<String, Object> map);

}
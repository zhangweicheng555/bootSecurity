package com.boot.kaizen.dao.act;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.util.JsonMsgUtil;

@Mapper
public interface ActBusinessDao {

	/**
	 * buss_type,create_time,buss_id,proj_id,act_piid
	 * 
	 * @Description: 添加四项  主要用于启动流程实例
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
	void insertAll(@Param("map") Map<String, Object> map);

	/**
	 * 跟怒业务表的id跟业务类型删除关系表
	 * @param recordId
	 * @param bussType
	 */
	void deleteByIdAndType(@Param("recordId") Long recordId,@Param("bussType")  String bussType);
	/**
	 * 根据业务表id跟业务类型 查询流程实例ids
	 * @param recordId
	 * @param bussType
	 * @return
	 */
	List<String> queryProcessInstanceIds(@Param("recordId") Long recordId,@Param("bussType")  String bussType);

	Long queryCountMatchBusinessKey(@Param("bussType") String bussType,@Param("content")  String content);
	
	String queryMatchBusinessKey(@Param("bussType") String bussType,@Param("content")  String content);

	Long queryCountMatchLink(@Param("bussType") String bussType,@Param("link")  String link,@Param("piid")  String piid);

	List<String> findLinksMatchBusinessKey(@Param("content")  String content);

	void deleteActBusinessBykey(@Param("businessKey") String businessKey);

}

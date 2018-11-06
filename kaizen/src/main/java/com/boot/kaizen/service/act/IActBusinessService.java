package com.boot.kaizen.service.act;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.util.JsonMsgUtil;

public interface IActBusinessService {

	/**
	 * 添加关系   主要用于启动流程实例
	* @Description: TODO
	* @author weichengz
	* @date 2018年11月4日 下午1:13:52
	 */
	void insert(Map<String, Object> map);

	/**
	 * 
	* @Description: 根据业务id跟业务编码查询流程实例id
	* @author weichengz
	* @date 2018年11月4日 下午1:13:49
	 */
	String queryPiid(Long id, String bussType);

	/**
	 * 
	* @Description: 根据id跟业务类型 查询审核的信息
	* @author weichengz
	* @date 2018年11月4日 下午1:50:01
	 */
	JsonMsgUtil findCheckInfo(long id, String bussType);
	
	/**
	 * 插入数据  全部信息插入
	* @Description: 
	* @author weichengz
	* @date 2018年11月4日 下午9:00:27
	 */
	void insertAll(Map<String, Object> map);

	/**
	 * 根据业务表记录的id跟类型删除关系表
	 * @param recordId
	 * @param bussType
	 */
	void deleteByIdAndType(Long recordId, String bussType);

	/**
	 * 根据业务表的记录、业务类型查询流程实例
	 * @param recordId
	 * @param bussType
	 * @return
	 */
	List<String> queryProcessInstanceIds(Long recordId, String bussType);
}

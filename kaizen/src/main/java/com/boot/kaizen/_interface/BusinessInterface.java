package com.boot.kaizen._interface;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.service.act.ActBusinessService;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.SpringUtil;

/**
 * 执行流程的时候 业务模块操作接口
 * 
 * @author weichengz
 * @date 2018年11月4日 上午12:56:26
 */
public interface BusinessInterface {
	/**
	 * 
	 * @Description: 启动流程实例时 业务模块需要做的操作
	 * @author weichengz
	 * @date 2018年11月4日 上午12:57:41
	 */
	public void startProcessInstance(Map<String, Object> map);

	/**
	 * 
	 * @Description: 根据业务表的id获取流程实力的id
	 * @author weichengz
	 * @date 2018年11月4日 上午11:20:46
	 */
	public String getActProcessInstanceId(Long recordId);
	
	/**
	 * 记录流程实例与业务表的关系 主要用于流程启动
	* @Description: TODO
	* @author weichengz
	* @date 2018年11月4日 上午11:34:02
	 */
	public void recordActProcessWithBusioness(Map<String, Object> map);
	/**
	 * 
	* @Description: 完成任务
	* @author weichengz
	* @date 2018年11月4日 下午8:55:35
	 */
	public void completeTask(Map<String, Object> map);
	/**
	 * 根据记录的id、业务类型删除关系表
	 * @param recordId
	 * @param bussType
	 */
	default public void deleteActBusinessRelation(Long recordId,String bussType) {
		IActBusinessService actBusinessService =SpringUtil.getBean(ActBusinessService.class);
		actBusinessService.deleteByIdAndType(recordId,bussType);
	}
	/**
	 * 根据记录的id、业务类型查询所有的流程实例id
	 * @param recordId
	 * @param bussType
	 */
	default public List<String> queryProcessInstanceIds(Long recordId,String bussType) {
		IActBusinessService actBusinessService =SpringUtil.getBean(ActBusinessService.class);
		return actBusinessService.queryProcessInstanceIds(recordId,bussType);
	}
	
}

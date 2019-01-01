package com.boot.kaizen.service.lteFdd;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteFddPlanService {

	/**
	 * 
	 * @Description: 添加
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:10
	 */
	int insertSelective(LteFddPlan record);

	/**
	 * 
	 * @Description: 通过主键查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:48
	 */
	LteFddPlan selectByPrimaryKey(String id);

	/**
	 * 
	 * @Description: 列表查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:13:08
	 */
	List<LteFddPlan> query(Map<String, Object> map);

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2018年12月31日 上午11:28:10
	 */
	JsonMsgUtil edit(LteFddPlan lteFddPlan, LoginUser loginUser);

	/**
	 * 
	 * @Description: 根据任务id查询
	 * @author weichengz
	 * @date 2018年12月31日 下午12:02:12
	 */
	JsonMsgUtil findById(String id);

	/**
	 * 
	 * @Description: 删除
	 * @author weichengz
	 * @date 2018年12月31日 下午12:13:07
	 */
	JsonMsgUtil delete(String ids);

	/**
	 * 查询计划列表 app使用
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年1月1日 上午9:56:40
	 */
	List<Map<String, Object>> queryPlanList(Long userId, Long projId);

	/**
	 * 拉去基站信息 app对接
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年1月1日 上午10:34:50
	 */
	List<BaseStationBean> queryStationList(Long userId, Long projId, String testDate);

	/**
	 * 通过规划表的id查询所有的相关的审核信息
	* @Description: TODO
	* @author weichengz
	* @date 2019年1月1日 下午6:33:10
	 */
	JsonMsgUtil queryCheckInfoById(String id);
}

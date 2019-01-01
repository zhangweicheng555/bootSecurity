package com.boot.kaizen.service.lteFdd;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteFddParameterService {

	/**
	 * 
	 * @Description: 添加
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:10
	 */
	int insertSelective(LteFddParameter record);

	/**
	 * 
	 * @Description: 通过主键查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:48
	 */
	LteFddParameter selectByPrimaryKey(String id);

	/**
	 * 
	 * @Description: 列表查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:13:08
	 */
	List<LteFddParameter> query(Map<String, Object> map);

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2018年12月31日 上午11:28:10
	 */
	JsonMsgUtil edit(LteFddParameter lteFddParameter, LoginUser loginUser);

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
	 * 存在更新 不存在就创建
	* @Description: TODO
	* @author weichengz
	* @date 2018年12月31日 下午11:45:04
	 */
	void upSert(LteFddParameter lteFddParameter);
}

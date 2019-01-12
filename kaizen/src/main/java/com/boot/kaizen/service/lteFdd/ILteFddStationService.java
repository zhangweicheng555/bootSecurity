package com.boot.kaizen.service.lteFdd;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteFddStationService {

	/**
	 * 
	 * @Description: 添加
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:10
	 */
	int insertSelective(LteFddStation record);

	/**
	 * 
	 * @Description: 通过主键查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:10:48
	 */
	LteFddStation selectByPrimaryKey(String id);

	/**
	 * 
	 * @Description: 列表查询
	 * @author weichengz
	 * @date 2018年12月31日 上午10:13:08
	 */
	List<LteFddStation> query(Map<String, Object> map);

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2018年12月31日 上午11:28:10
	 */
	JsonMsgUtil edit(LteFddStation lteFddCellCheck, LoginUser loginUser);

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
	 * 添加更新 app对接
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年1月1日 上午11:33:10
	 */
	void upSert(LteFddStation lteFddStation);
}

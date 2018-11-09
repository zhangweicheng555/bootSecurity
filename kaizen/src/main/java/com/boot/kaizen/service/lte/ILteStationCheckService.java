package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.boot.kaizen.model.LteStationCheck;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteStationCheckService {

	/**
	 * 
	 * @Description: 列表信息查询
	 * @author weichengz
	 * @date 2018年10月28日 下午12:29:52
	 */
	public List<LteStationCheck> find(Map<String, Object> map);

	/**
	 * 
	* @Description: 删除
	* @author weichengz
	* @date 2018年10月28日 下午11:05:44
	 */
	public JsonMsgUtil delete(String ids);
	
	/**
	 * 批量查询   app
	 * @param stationChecks
	 */
	void batchInsert(List<LteStationCheck> stationChecks);
	
	/**
	 * 根据id查询
	 * @param id
	 * @return
	 */
	LteStationCheck findById(Long id);

}

package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.model.LtePlan;

public interface ILtePlanService {

	/**
	 * 
	 * @Description: 列表信息查询
	 * @author weichengz
	 * @date 2018年10月28日 下午12:29:52
	 */
	public List<LtePlan> find(Map<String, Object> map);

	
}

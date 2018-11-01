package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;
import com.boot.kaizen.model.LteCellCheck;
import com.boot.kaizen.util.JsonMsgUtil;

public interface ILteCellCheckService {

	/**
	 * 
	 * @Description: 列表信息查询
	 * @author weichengz
	 * @date 2018年10月28日 下午12:29:52
	 */
	public List<LteCellCheck> find(Map<String, Object> map);

	/**
	 * 
	 * @Description: 删除
	 * @author weichengz
	 * @date 2018年10月28日 下午11:05:44
	 */
	public JsonMsgUtil delete(String ids);

	/**
	 * 批量添加数据 app
	 * 
	 * @param stationChecks
	 */
	void batchInsert(List<LteCellCheck> cellChecks);

}

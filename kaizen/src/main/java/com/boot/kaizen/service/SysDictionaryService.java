package com.boot.kaizen.service;

import java.util.List;

import com.boot.kaizen.model.SysDic;

public interface SysDictionaryService {

	/**
	 根据类型查询字典
	* @Description: TODO
	* @author weichengz
	* @date 2018年10月3日 上午9:46:07
	 */
	public List<SysDic> findByType(String type);

}

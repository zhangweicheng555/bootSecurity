package com.boot.kaizen.dao.lte;
import org.apache.ibatis.annotations.Mapper;

import com.boot.kaizen.model.LteLoadTest;

@Mapper
public interface LteLoadTestDao {
	
	/**
	 * 上传路测信息  app
	 * @param lteLoadTest
	 */
	void save(LteLoadTest lteLoadTest);

}

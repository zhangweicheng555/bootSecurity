package com.boot.kaizen.service.lte;

import com.boot.kaizen.model.LteLoadTest;

public interface ILteLoadTestService {

	/**
	 * 上传路测信息 app
	 * 
	 * @param lteLoadTest
	 */
	void save(LteLoadTest lteLoadTest);
}
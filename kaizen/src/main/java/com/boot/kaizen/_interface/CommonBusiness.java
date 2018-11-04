package com.boot.kaizen._interface;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.boot.kaizen.service.act.IActBusinessService;
/**
 * 流程与业务表的关系的公共部分
 * @author weichengz
 * @date 2018年11月4日 上午11:54:39
 */
@Component
public class CommonBusiness implements BusinessInterface {

	@Autowired
	private IActBusinessService actBusinessService;
	
	@Override
	public void startProcessInstance(Map<String, Object> map) {
		
	}

	@Override
	public String getActProcessInstanceId(Long recordId) {
		return null;
	}
	
	@Override
	public void recordActProcessWithBusioness(Map<String, Object> map) {
		actBusinessService.insert(map);
	}

	@Override
	public void completeTask(Map<String, Object> map) {
		
	}

}

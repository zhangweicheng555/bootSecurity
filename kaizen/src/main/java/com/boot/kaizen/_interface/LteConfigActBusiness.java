package com.boot.kaizen._interface;

import java.util.Map;
import org.activiti.engine.HistoryService;
import org.activiti.engine.history.HistoricProcessInstance;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.boot.kaizen.model.LteConfig;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.service.lte.ILteConfigService;

/**
 * LteConfig 模块流程相关的业务
 * @author weichengz
 * @date 2018年11月4日 上午9:48:28
 */
@Component
public class LteConfigActBusiness extends CommonBusiness {

	@Autowired
	private ILteConfigService lteConfigService;
	@Autowired
	private HistoryService historyService;
	@Autowired
	private IActBusinessService actBusinessService;
	
	/**
	 * 修改状态
	 */
	@Override
	public void startProcessInstance(Map<String, Object> map) {
		Long id=Long.valueOf(map.get("recordId").toString());
		lteConfigService.changeStatus(id, 1l);
	}

	@Override
	public String getActProcessInstanceId(Long recordId) {
		String processKey=LteConfig.class.getSimpleName();
		HistoricProcessInstance processInstance = historyService.createHistoricProcessInstanceQuery().processDefinitionKey(processKey).processInstanceBusinessKey(processKey+recordId).singleResult();
		if (processInstance == null) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		return processInstance.getId();
	}

	@Override
	public void completeTask(Map<String, Object> map) {
		Long recordId=Long.valueOf(map.get("bussId").toString());
		Long status=Long.valueOf(map.get("status").toString());
		//更新记录状态
	    lteConfigService.changeStatus(recordId, status);
	    //添加业务关系表
	    actBusinessService.insertAll(map);
	}

	
	

}

package com.boot.kaizen.activiti.listener;

import java.io.Serializable;
import org.activiti.engine.delegate.event.ActivitiEvent;
import org.activiti.engine.delegate.event.ActivitiEventListener;
import org.activiti.engine.delegate.event.ActivitiEventType;
import org.springframework.stereotype.Component;

/**
 * 这个监听是可以拆分的，然后通过activiti Config逐一添加进去
 * 
 * @author a-zhangweicheng
 *
 */
@Component
public class GlobalListener implements ActivitiEventListener, Serializable {

	private static final long serialVersionUID = 1L;

	@Override
	public void onEvent(ActivitiEvent event) {
		ActivitiEventType type = event.getType();
		if (ActivitiEventType.ACTIVITY_COMPLETED.equals(type)) {
			System.out.println("活动顺利完成了.......................");
		}
		if (ActivitiEventType.ENTITY_CREATED.equals(type)) {
			System.out.println("实体类被创建了.......................");
		}
		if (ActivitiEventType.ENTITY_DELETED.equals(type)) {
			System.out.println("实体类被删除了.......................");
		}
		if (ActivitiEventType.PROCESS_COMPLETED.equals(type)) {
			System.out.println("流程实例顺利结束了.......................");
		}
		if (ActivitiEventType.PROCESS_CANCELLED.equals(type)) {
			System.out.println("流程实例被删除了.......................");
		}
		if (ActivitiEventType.PROCESS_STARTED.equals(type)) {
			System.out.println("流程实例被创建了.......................");
		}
		if (ActivitiEventType.TASK_ASSIGNED.equals(type)) {
			System.out.println("任务被分配了.......................");
		}
	}

	@Override
	public boolean isFailOnException() {
		return false;// 忽略出错误异常
	}

}

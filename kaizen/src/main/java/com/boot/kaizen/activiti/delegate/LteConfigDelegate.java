package com.boot.kaizen.activiti.delegate;

import org.activiti.engine.delegate.DelegateExecution;
import org.activiti.engine.delegate.JavaDelegate;
/**
 * 测试配置流程代理服务类
 * @author a-zhangweicheng
 *
 */
public class LteConfigDelegate  implements JavaDelegate{

	@Override
	public void execute(DelegateExecution execution) {
		System.out.println("service-task自动执行了。。。。。");
	}

}

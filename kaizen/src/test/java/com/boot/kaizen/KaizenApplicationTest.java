package com.boot.kaizen;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.TaskService;
import org.activiti.engine.task.Task;
import org.aspectj.lang.Aspects14;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.boot.kaizen.activiti.service.Activitiservice;
import com.boot.kaizen.util.MyDateUtil;

/**
 * 测试类
 * 
 * @author a-zhangweicheng
 */
@SpringBootTest
@RunWith(SpringRunner.class)
public class KaizenApplicationTest {

	@Autowired
	private Activitiservice activitiservice;
	
	@Autowired
	private TaskService taskService;
	
	@Test
	public void Test() throws InterruptedException {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("receive", "a-zhangweicheng@kuandeng.com");
		activitiservice.srartProcessInstanceByKeyV("myTest",map);
		
		
		Thread.sleep(200000000);
	}

}

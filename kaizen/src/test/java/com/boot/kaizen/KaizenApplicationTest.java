package com.boot.kaizen;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.boot.kaizen.activiti.service.Activitiservice;

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
	
	@Test
	public void Test() {
		activitiservice.completeTaskById("2505");
		//activitiservice.srartProcessInstanceByKey("myProcess");
	}

}

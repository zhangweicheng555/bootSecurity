package com.boot.kaizen;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.FormService;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.form.FormProperty;
import org.activiti.engine.form.StartFormData;
import org.activiti.engine.form.TaskFormData;
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
	
	@Autowired
	private FormService formService;
	@Autowired
	private RuntimeService runtimeService;
	
	@Test
	public void Test() throws InterruptedException {
		//activitiservice.deleteProcessByDefinationId("myProcess222:3:32508",true);
		
		runtimeService.startProcessInstanceByKey("ModelA");
		
		StartFormData formData = formService.getStartFormData("ModelA:1:57513");
		List<FormProperty> formProperties = formData.getFormProperties();
		for (FormProperty formProperty : formProperties) {
			System.out.println(formProperty.getId()+"   "+formProperty.getName()+"  "+formProperty.getValue()+"  "+formProperty.getType().getName());
		}
		System.out.println("-----------------------------------------------------------");
		TaskFormData taskFormData = formService.getTaskFormData("60005");
		List<FormProperty> properties = taskFormData.getFormProperties();
		for (FormProperty formProperty : properties) {
			System.out.println(formProperty.getId()+"   "+formProperty.getName()+"  "+formProperty.getValue()+"  "+formProperty.getType().getName());
		}
		
		//Thread.sleep(200000000);
	}

}

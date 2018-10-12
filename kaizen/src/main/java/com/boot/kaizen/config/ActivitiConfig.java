package com.boot.kaizen.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.EventListener;
import java.util.List;

import javax.sql.DataSource;
import org.activiti.engine.HistoryService;
import org.activiti.engine.IdentityService;
import org.activiti.engine.ManagementService;
import org.activiti.engine.ProcessEngine;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.delegate.event.ActivitiEventListener;
import org.activiti.spring.SpringProcessEngineConfiguration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;

import com.boot.kaizen.activiti.listener.GlobalListener;

/**
 * 工作流配置
 * 
 * @author a-zhangweicheng
 */
@Configuration
public class ActivitiConfig {

	@Autowired
	private GlobalListener globalListener;
	
	@Bean
	public ProcessEngine processEngine(DataSourceTransactionManager transactionManager, DataSource dataSource)
			throws IOException {
		SpringProcessEngineConfiguration configuration = new SpringProcessEngineConfiguration();
		// 自动部署已有的流程文件
		Resource[] resources = new PathMatchingResourcePatternResolver()
				.getResources(ResourceLoader.CLASSPATH_URL_PREFIX + "processes/*.bpmn");
		configuration.setTransactionManager(transactionManager);
		configuration.setDataSource(dataSource);
		configuration.setDatabaseSchemaUpdate("true");
		configuration.setDeploymentResources(resources);
		configuration.setDbIdentityUsed(false);
		configuration.setAsyncExecutorActivate(false);
		configuration.setActivityFontName("宋体");
		configuration.setAnnotationFontName("宋体");
		configuration.setLabelFontName("宋体");
		List<ActivitiEventListener> eventListeners=new ArrayList<ActivitiEventListener>();
		eventListeners.add(globalListener);
		configuration.setEventListeners(eventListeners);
		return configuration.buildProcessEngine();
	}

	@Bean
	public RepositoryService repositoryService(ProcessEngine processEngine) {
		return processEngine.getRepositoryService();
	}

	@Bean
	public RuntimeService runtimeService(ProcessEngine processEngine) {
		return processEngine.getRuntimeService();
	}

	@Bean
	public TaskService taskService(ProcessEngine processEngine) {
		return processEngine.getTaskService();
	}

	@Bean
	public HistoryService historyService(ProcessEngine processEngine) {
		return processEngine.getHistoryService();
	}

	@Bean
	public ManagementService managementService(ProcessEngine processEngine) {
		return processEngine.getManagementService();
	}

	@Bean
	public IdentityService identityService(ProcessEngine processEngine) {
		return processEngine.getIdentityService();
	}

	

}

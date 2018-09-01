package com.boot.kaizen.startRun;

import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;

/**
 * Order优先级问题
 * 
 * @author weichengz
 * @date 2018年9月1日 上午8:24:21
 */
// @Order(value=1)
// @Component
public class TestTwo implements ApplicationRunner {

	@Override
	public void run(ApplicationArguments args) throws Exception {
		// System.out.println("---------------这是其次执行的方法--------------");
	}

}

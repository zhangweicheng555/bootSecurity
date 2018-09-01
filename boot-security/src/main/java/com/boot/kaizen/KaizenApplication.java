package com.boot.kaizen;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cache.annotation.EnableCaching;

/**
 * 启动类
 */
@EnableCaching
@SpringBootApplication
public class KaizenApplication {

	public static void main(String[] args) {
		SpringApplication.run(KaizenApplication.class, args);
	}
}

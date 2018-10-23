package com.boot.kaizen.advice;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;
import com.boot.kaizen.annotation.LogAnnotation;

/**
 * 日志拦截器 使用方式 在方法上    用@LogAnnotation(flag="")
 * 
 * @author a-zhangweicheng
 * 
 */
@Aspect
@Component
public class LogAdvice {

	/** 可以注入日志模块的业务service */

	@Around(value = "@annotation(com.boot.kaizen.annotation.LogAnnotation)")
	public Object logSave(ProceedingJoinPoint joinPoint) throws Throwable {
		MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();

		methodSignature.getDeclaringTypeName();// 获取方法对应的包名
		methodSignature.getName();// 获取方法名

		// 获取方法上面的注解
		LogAnnotation logAnnotation = methodSignature.getMethod().getDeclaredAnnotation(LogAnnotation.class);
		// 获取注解的参数
		String flag = logAnnotation.flag();

		try {// try的原因就是这个方法可能会出现异常
			Object object = joinPoint.proceed();// 执行拦截的方法

			return object;
		} catch (Exception e) {
			// 可以业务处理
			throw e; // 异常一定要抛出来 方便json捕获
		} finally {
			// 可以业务处理
		}

	}
}

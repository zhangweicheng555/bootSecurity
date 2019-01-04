package com.boot.kaizen.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.boot.kaizen.filter.TokenFilter;

/**
 * spring security 配置
 * 
 * @author weichengz
 * @date 2018年9月2日 上午2:01:45
 */
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private AuthenticationSuccessHandler authenticationSuccessHandler;
	@Autowired
	private AuthenticationFailureHandler authenticationFailureHandler;
	@Autowired
	private LogoutSuccessHandler logoutSuccessHandler;
	@Autowired
	private AuthenticationEntryPoint authenticationEntryPoint;
	@Autowired
	private UserDetailsService userDetailsService;
	@Autowired
	private TokenFilter tokenFilter;

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.csrf().disable();

		/** 基于token 屏蔽session */
		http.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

		/** 静态资源不拦截 */
		http.authorizeRequests().antMatchers("/", //  这个地方验证一下    /app/**是不是就不会拦截app开头的所有的连接了   因为这个地方是配置静态的拦截器的
				"/*.html", //
				"/css/**", //
				"/js/**", //
				"/fonts/**", //
				"/layui/**", //
				"/img/**", //
				"/swagger-resources/**", //
				"/pages/**", //
				"/druid/**", //
				"/favicon.ico", //
				"/statics/**").permitAll().anyRequest().authenticated();

		http.formLogin()//
				.loginProcessingUrl("/login")//
				.successHandler(authenticationSuccessHandler)//
				.failureHandler(authenticationFailureHandler).and().exceptionHandling()//
				.authenticationEntryPoint(authenticationEntryPoint);//

		http.logout()//
				.logoutUrl("/logout")//
				.logoutSuccessHandler(logoutSuccessHandler);//

		/** 解决不允许显示在iframe的问题 */
		http.headers().frameOptions().disable();
		http.headers().cacheControl();

		http.addFilterBefore(tokenFilter, UsernamePasswordAuthenticationFilter.class);

	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(bCryptPasswordEncoder());
	}

}

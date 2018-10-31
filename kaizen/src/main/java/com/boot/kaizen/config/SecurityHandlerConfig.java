package com.boot.kaizen.config;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.Token;
import com.boot.kaizen.filter.TokenFilter;
import com.boot.kaizen.service.TokenService;
import com.boot.kaizen.util.AppUtil;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.ResponseUtil;

/**
 * security 处理器
 * 
 * @author weichengz
 * @date 2018年9月2日 上午2:06:17
 */
@Configuration
public class SecurityHandlerConfig {

	@Autowired
	private TokenService tokenService;

	/**
	 * @Description: 登陆成功处理器
	 * @author weichengz
	 * @date 2018年9月2日 上午2:06:45
	 */
	@Bean
	public AuthenticationSuccessHandler loginSuccessHandler() {
		return new AuthenticationSuccessHandler() {

			@Override
			public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
					Authentication authentication) throws IOException, ServletException {
				LoginUser loginUser = (LoginUser) authentication.getPrincipal();

				Token token = tokenService.saveToken(loginUser);
				ResponseUtil.responseJson(response, HttpStatus.OK.value(), token);
			}
		};
	}

	/**
	 * @Description: 登陆失败处理器
	 * @author weichengz
	 * @date 2018年9月2日 上午2:07:55
	 */
	@Bean
	public AuthenticationFailureHandler loginFailureHandler() {
		return new AuthenticationFailureHandler() {

			@Override
			public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
					AuthenticationException exception) throws IOException, ServletException {
				String msg = null;
				if (exception instanceof BadCredentialsException) {
					msg = "密码错误";
				} else {
					msg = exception.getMessage();
				}
				JsonMsgUtil j = new JsonMsgUtil(HttpStatus.UNAUTHORIZED.value(), msg);
				ResponseUtil.responseJson(response, HttpStatus.UNAUTHORIZED.value(), j);
			}
		};

	}

	/**
	 * @Description: 未登录处理
	 * @author weichengz
	 * @date 2018年9月2日 上午2:08:09
	 */
	@Bean
	public AuthenticationEntryPoint authenticationEntryPoint() {
		return new AuthenticationEntryPoint() {

			@Override
			public void commence(HttpServletRequest request, HttpServletResponse response,
					AuthenticationException authException) throws IOException, ServletException {
				JsonMsgUtil j = new JsonMsgUtil(HttpStatus.UNAUTHORIZED.value(), "请先登录");
				ResponseUtil.responseJson(response, HttpStatus.UNAUTHORIZED.value(), j);
			}
		};
	}

	/**
	 * @Description: 退出登陆处理器
	 * @author weichengz
	 * @date 2018年9月2日 上午2:08:48
	 */
	@Bean
	public LogoutSuccessHandler logoutSussHandler() {
		return new LogoutSuccessHandler() {

			@Override
			public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
					Authentication authentication) throws IOException, ServletException {
				JsonMsgUtil j = new JsonMsgUtil(HttpStatus.OK.value(), "退出成功");
				String token = TokenFilter.getToken(request);
				tokenService.deleteToken(token);
				ResponseUtil.responseJson(response, HttpStatus.OK.value(), j);
			}
		};

	}

}

package com.boot.kaizen.config;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 重写spring security 密码验证机制
 * 
 * @author a-zhangweicheng
 *
 */
public class MyUsernamePasswordAuthenticationFilter extends UsernamePasswordAuthenticationFilter {

	public static final String SPRING_SECURITY_FORM_PROJ_KEY = "proj";

	private String projParameter = SPRING_SECURITY_FORM_PROJ_KEY;
	private boolean postOnly = true;
	
	@Override
	public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response)
			throws AuthenticationException {
		if (postOnly && !request.getMethod().equals("POST")) {
			throw new AuthenticationServiceException("Authentication method not supported: " + request.getMethod());
		}

		String username = obtainUsername(request);
		String password = obtainPassword(request);
		String proj = obtainProj(request);

		if (username == null) {
			username = "";
		}
		if (proj == null) {
			proj = "";
		}

		if (password == null) {
			password = "";
		}

		username = username.trim() + "_" + proj.trim();

		UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password);

		setDetails(request, authRequest);

		return this.getAuthenticationManager().authenticate(authRequest);
	}

	

	protected String obtainProj(HttpServletRequest request) {
		return request.getParameter(projParameter);
	}


	protected void setDetails(HttpServletRequest request, UsernamePasswordAuthenticationToken authRequest) {
		authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
	}


	public void setProjParameter(String projParameter) {
		Assert.hasText(projParameter, "projParameter parameter must not be empty or null");
		this.projParameter = projParameter;
	}


	public void setPostOnly(boolean postOnly) {
		this.postOnly = postOnly;
	}

	public final String getProjParameter() {
		return projParameter;
	}
}

package com.boot.kaizen.model;

import java.util.Date;

/**
 * 登录日志 监听登录的所有信息
 * 
 * @author a-zhangweicheng
 *
 */
public class LoginLog {

	private Long id;
	private String username;
	private String ipNo;
	private String loginAddress;
	private String statusFlag;// 成功 失败
	private Date loginTime;
	private String msg;// 附加信息

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getIpNo() {
		return ipNo;
	}

	public void setIpNo(String ipNo) {
		this.ipNo = ipNo;
	}

	public String getLoginAddress() {
		return loginAddress;
	}

	public void setLoginAddress(String loginAddress) {
		this.loginAddress = loginAddress;
	}

	public String getStatusFlag() {
		return statusFlag;
	}

	public void setStatusFlag(String statusFlag) {
		this.statusFlag = statusFlag;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public LoginLog(Long id, String username, String ipNo, String loginAddress, String statusFlag, Date loginTime,
			String msg) {
		super();
		this.id = id;
		this.username = username;
		this.ipNo = ipNo;
		this.loginAddress = loginAddress;
		this.statusFlag = statusFlag;
		this.loginTime = loginTime;
		this.msg = msg;
	}

	public LoginLog() {
		super();
	}

}

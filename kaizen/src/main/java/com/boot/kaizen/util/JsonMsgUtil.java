package com.boot.kaizen.util;

/**
 * json结构实体类
 * 
 * @author weichengz
 * @date 2018年9月1日 上午8:24:45
 */
public class JsonMsgUtil {

	private boolean success = false;
	private String msg;
	private Object object = null;

	public JsonMsgUtil(boolean success, String msg, Object object) {
		super();
		this.success = success;
		this.msg = msg;
		this.object = object;
	}

	public JsonMsgUtil() {
		super();
	}

	public JsonMsgUtil(boolean success) {
		super();
		this.success = success;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObject() {
		return object;
	}

	public void setObject(Object object) {
		this.object = object;
	}

}

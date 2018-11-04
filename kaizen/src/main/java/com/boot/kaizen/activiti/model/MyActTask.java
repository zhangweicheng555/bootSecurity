package com.boot.kaizen.activiti.model;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 任务实体类
 * 
 * @author weichengz
 * @date 2018年11月4日 下午7:25:09
 */
public class MyActTask implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String formKey;
	private String pdid;
	private String piid;
	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
	private Date createTime;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFormKey() {
		return formKey;
	}

	public void setFormKey(String formKey) {
		this.formKey = formKey;
	}

	public String getPdid() {
		return pdid;
	}

	public void setPdid(String pdid) {
		this.pdid = pdid;
	}

	public String getPiid() {
		return piid;
	}

	public void setPiid(String piid) {
		this.piid = piid;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public MyActTask(String id, String name, String formKey, String pdid, String piid, Date createTime) {
		super();
		this.id = id;
		this.name = name;
		this.formKey = formKey;
		this.pdid = pdid;
		this.piid = piid;
		this.createTime = createTime;
	}

	public MyActTask() {
		super();
	}

}

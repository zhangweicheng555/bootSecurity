package com.boot.kaizen.model;

/**
 * 用户项目角色实体类设计
 * 
 * @author weichengz
 * @date 2018年9月8日 上午10:26:05
 */
public class SysProjectRoleRelation extends BaseEntity<Long> {

	private static final long serialVersionUID = 1L;
	private String roleId;// 角色ID
	private String projId;// 项目ID

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getProjId() {
		return projId;
	}

	public void setProjId(String projId) {
		this.projId = projId;
	}

}

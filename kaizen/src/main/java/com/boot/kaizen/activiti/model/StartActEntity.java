package com.boot.kaizen.activiti.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/**
 * 流程实例启动参数实体类设计
 * 
 * @author weichengz
 * @date 2018年11月4日 上午12:37:12
 */
public class StartActEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	private Long recordId;// 记录的id
	private Long projId;// 项目的id
	private String assignIds;// 任务的分配人员 多个人员以逗号分割
	private String processKey;// 流程定义的key

	private Map<String, Object> tags = new HashMap<>();// 附加参数

	public Long getRecordId() {
		return recordId;
	}

	public void setRecordId(Long recordId) {
		this.recordId = recordId;
	}

	public Long getProjId() {
		return projId;
	}

	public void setProjId(Long projId) {
		this.projId = projId;
	}

	public String getAssignIds() {
		return assignIds;
	}

	public void setAssignIds(String assignIds) {
		this.assignIds = assignIds;
	}

	public String getProcessKey() {
		return processKey;
	}

	public void setProcessKey(String processKey) {
		this.processKey = processKey;
	}

	public Map<String, Object> getTags() {
		return tags;
	}

	public void setTags(Map<String, Object> tags) {
		this.tags = tags;
	}

	public StartActEntity(Long recordId, Long projId, String assignIds, String processKey, Map<String, Object> tags) {
		super();
		this.recordId = recordId;
		this.projId = projId;
		this.assignIds = assignIds;
		this.processKey = processKey;
		this.tags = tags;
	}

	public StartActEntity() {
		super();
	}

}

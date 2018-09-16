package com.boot.kaizen.service;

import java.util.List;
import java.util.Map;

import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.util.JsonMsgUtil;

public interface SysProjectService {

	/**
	 * 查询出对应的角色
	 * 
	 * @author weichengz
	 * @date 2018年9月8日 下午2:52:28
	 */
	public List<SysProject> query();

	/**
	 * 返回角色的id/名字串
	 * 
	 * @author weichengz
	 * @date 2018年9月8日 下午2:53:15
	 */
	public List<SysProject> find(Map<String, Object> map);

	/**
	 * 删除
	 * 
	 * @author weichengz
	 * @date 2018年9月9日 下午12:59:30
	 */
	public JsonMsgUtil delete(String ids);

	/**
	 * 编辑
	 * 
	 * @author weichengz
	 * @date 2018年9月16日 下午6:27:00
	 */
	public JsonMsgUtil edit(SysProject sysProject);
}

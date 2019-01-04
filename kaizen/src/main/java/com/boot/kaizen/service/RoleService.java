package com.boot.kaizen.service;

import java.util.List;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.TreeTable;
import com.boot.kaizen.entity.ZtreeModel;
import com.boot.kaizen.model.SysRole;
import com.boot.kaizen.util.JsonMsgUtil;

public interface RoleService {

	public List<TreeTable> list(LoginUser user,String projName);

	public JsonMsgUtil edit(SysRole sysRole, String permissionIds,String projId);

	public SysRole findById(Long id);

	public List<Long> findPermissionIdsByRoleId(Long roleId);

	public JsonMsgUtil delete(Long id);
	
	/**
	 * 
	* @Description: 根据项目的id查询角色人员树
	* @author weichengz
	* @date 2018年11月3日 下午11:09:06
	 */
	List<ZtreeModel> findRolePersion(Long projId);

	/**
	 * 
	* @Description: 同一项目下的统一名字验证
	* @author weichengz
	* @date 2018年11月24日 下午7:56:44
	 */
	public JsonMsgUtil chechUnique(String name,Long projId);


}

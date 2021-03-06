package com.boot.kaizen.service;

import java.util.List;

import com.boot.kaizen.model.SysRoleUser;


public interface SysRoleUserService {

	void delete(Long roleId);

	void batchInsert(List<SysRoleUser> roleUsers);

	/**
	 * 
	 * @Description: 根据用户id批量删除
	 * @author weichengz
	 * @date 2018年10月21日 下午7:35:18
	 */
	void deleteBatch(Long[] userIds);

	/**
	 * 
	* @Description: 通过项目的id删除用户角色的对应关系表
	* @author weichengz
	* @date 2018年10月21日 下午8:09:10
	 */
	void deleteByProjIds(Long[] projIds);
}

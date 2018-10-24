package com.boot.kaizen.config;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.PermissionDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.Permission;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.SysUser.Status;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.service.UserService;

/**
 * 资源权限获取
 * 
 * @author weichengz
 * @date 2018年9月2日 上午2:16:11
 */
@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserService userService;
	@Autowired
	private SysProjectService projectService;
	@Autowired
	private PermissionDao permissionDao;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		String[] nameAndProj=username.split("_");//(用户名字唯一)
		System.out.println(nameAndProj.length);
		System.out.println(nameAndProj[1]);
		String projId=nameAndProj[1];
		System.out.println(projId);
		SysUser sysUser = userService.getUser(nameAndProj[0]);
		
		Long proj=null;
		
		if (sysUser == null) {
			throw new AuthenticationCredentialsNotFoundException("用户名不存在");
		} else if (sysUser.getStatus() == Status.LOCKED) {
			throw new LockedException("用户被锁定,请联系管理员");
		} else if (sysUser.getStatus() == Status.DISABLED) {
			throw new DisabledException("用户已作废");
		}
		
		//项目id处理  没有就传递该用户的第一个   根据用户的名字查询项目的id
		if (StringUtils.isBlank(projId)) {//取编号最小的项目id
			//查询
		}else {
			proj=Long.valueOf(projId);
		}
		
		if (proj == null) {
			throw new AuthenticationCredentialsNotFoundException("用户未指定项目");
		} 
		
		LoginUser loginUser = new LoginUser();
		BeanUtils.copyProperties(sysUser, loginUser);
		
		//根据用户的id、项目id  查询所有的资源
		List<Permission> permissions = permissionDao.listByUserId(sysUser.getId());
		loginUser.setPermissions(permissions);

		return loginUser;
	}

}

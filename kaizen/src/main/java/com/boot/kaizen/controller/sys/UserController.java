package com.boot.kaizen.controller.sys;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen._enum.DicType;
import com.boot.kaizen.dao.SysUserDao;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.model.SysProject;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.UserDto;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.TableResultUtil;
import com.boot.kaizen.util.UserUtil;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import io.swagger.annotations.ApiOperation;

/**
 * 用户控制层
 * 
 * @author weichengz
 * @date 2018年9月2日 上午10:16:10
 */
@RestController
@RequestMapping("/users")
public class UserController {

	private static final Logger log = LoggerFactory.getLogger("adminLogger");

	@Autowired
	private UserService userService;
	@Autowired
	private SysUserDao userDao;

	/**
	 * 
	* @Description: 查询列表
	* @author weichengz
	* @date 2018年10月7日 上午11:24:20
	 */
	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {
		PageInfo<SysUser> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						userService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 
	 * @Description: 添加
	 * @author weichengz
	 * @date 2018年10月7日 上午11:04:45
	 */
	@RequestMapping(value = "/saveUser")
	public JsonMsgUtil saveUser(SysUser sysUser) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			SysUser u = userService.getUser(sysUser.getUsername());
			if (u != null) {
				throw new IllegalArgumentException(sysUser.getUsername() + "已存在");
			}
			userService.saveUser(sysUser);
			j = new JsonMsgUtil(true, "操作成功", "");
		} catch (Exception e) {
			j.setMsg("操作失败");
			e.printStackTrace();
		}
		return j;
	}

	@PutMapping
	@ApiOperation(value = "修改用户")
	@PreAuthorize("hasAuthority('sys:user:add')")
	public SysUser updateUser(@RequestBody UserDto userDto) {
		return userService.updateUser(userDto);
	}

	@PutMapping(params = "headImgUrl")
	@ApiOperation(value = "修改头像")
	public void updateHeadImgUrl(String headImgUrl) {
		SysUser user = UserUtil.getLoginUser();
		UserDto userDto = new UserDto();
		BeanUtils.copyProperties(user, userDto);
		userDto.setHeadImgUrl(headImgUrl);

		userService.updateUser(userDto);
		log.debug("{}修改了头像", user.getUsername());
	}

	@PutMapping("/{username}")
	@ApiOperation(value = "修改密码")
	@PreAuthorize("hasAuthority('sys:user:password')")
	public void changePassword(@PathVariable String username, String oldPassword, String newPassword) {
		userService.changePassword(username, oldPassword, newPassword);
	}

	@ApiOperation(value = "当前登录用户")
	@GetMapping("/current")
	public SysUser currentUser() {
		return UserUtil.getLoginUser();
	}

	@ApiOperation(value = "根据用户id获取用户")
	@GetMapping("/{id}")
	@PreAuthorize("hasAuthority('sys:user:query')")
	public SysUser user(@PathVariable Long id) {
		return userDao.getById(id);
	}

	@RequestMapping(value="/delete")
	@PreAuthorize("hasAuthority('sys:user:edit')")
	public JsonMsgUtil delete(@RequestParam("ids") String ids) {
		return userService.delete(ids);
	}

}

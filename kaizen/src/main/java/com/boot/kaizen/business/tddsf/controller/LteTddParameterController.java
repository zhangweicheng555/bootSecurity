package com.boot.kaizen.business.tddsf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.business.tddsf.model.LteTddParameter;
import com.boot.kaizen.business.tddsf.service.ILteTddParameterService;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.TableResultUtil;
import com.boot.kaizen.util.UserUtil;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @author weichengz
 * @date 2019年1月25日 下午5:45:30
 */
@RestController
@RequestMapping("/tdd/parameter")
public class LteTddParameterController {

	@Autowired
	private ILteTddParameterService lteTddParameterService;

	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LteTddParameter> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteTddParameterService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

/**
 * 
* @Description: 编辑
* @author weichengz
* @date 2019年1月25日 下午5:46:22
 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LteTddParameter lteTddParameter) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteTddParameterService.edit(lteTddParameter, loginUser);
	}

	/**
	 * 
	* @Description: 根据ID查询
	* @author weichengz
	* @date 2019年1月25日 下午5:46:50
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") String id) {
		return lteTddParameterService.findById(id);
	}

/**
 * 
* @Description: 多项删除
* @author weichengz
* @date 2019年1月25日 下午5:47:13
 */
	@ResponseBody
	@RequestMapping(value = "/deleteByIds", method = RequestMethod.POST)
	public JsonMsgUtil deleteByIds(@RequestParam("ids") String ids) {
		return lteTddParameterService.deleteByIds(ids);
	}
}

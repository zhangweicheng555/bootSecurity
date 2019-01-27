package com.boot.kaizen.business.tddsf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.boot.kaizen.business.tddsf.model.LteTddPlan;
import com.boot.kaizen.business.tddsf.service.ILteTddPlanService;
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
 * @date 2019年1月25日 下午5:13:41
 */
@RestController
@RequestMapping("/tdd/plan")
public class LteTddPlanController {

	@Autowired
	private ILteTddPlanService lteTddPlanService;

	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2019年1月25日 下午5:54:11
	 */
	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LteTddPlan> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteTddPlanService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2019年1月25日 下午5:54:29
	 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LteTddPlan lteTddPlan) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteTddPlanService.edit(lteTddPlan, loginUser);
	}

	/**
	 * 
	 * @Description: 根据ID查询
	 * @author weichengz
	 * @date 2019年1月25日 下午5:54:40
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") String id) {
		return lteTddPlanService.findById(id);
	}

	/**
	 * 
	 * @Description: 多项删除
	 * @author weichengz
	 * @date 2019年1月25日 下午5:54:50
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteByIds", method = RequestMethod.POST)
	public JsonMsgUtil deleteByIds(@RequestParam("ids") String ids) {
		return lteTddPlanService.deleteByIds(ids);
	}
}

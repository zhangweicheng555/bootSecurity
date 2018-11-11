package com.boot.kaizen.controller.lte;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.model.LtePlan;
import com.boot.kaizen.service.lte.ILtePlanService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.TableResultUtil;
import com.boot.kaizen.util.UserUtil;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @author weichengz
 * @date 2018年10月28日 上午3:13:32
 */
@RestController
@RequestMapping("/plan")
public class LtePlanController {

	@Autowired
	private ILtePlanService ltePlanService;

	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LtePlan> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						ltePlanService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2018年10月28日 下午4:36:46
	 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LtePlan ltePlan) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return ltePlanService.edit(ltePlan, loginUser);
	}

	

	/**
	 * 
	 * @Description: 查看流程图
	 * @author weichengz
	 * @date 2018年11月11日 上午10:18:31
	 */
	@RequestMapping(value = "/findLteConfigActivitiImage")
	public void findLteConfigActivitiImage(@RequestParam("id") Long id, HttpServletResponse response) {
		ltePlanService.findLteConfigActivitiImage(id, response);
	}

	/**
	 * 
	 * @Description: 根据id查询
	 * @author weichengz
	 * @date 2018年10月28日 下午5:00:01
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") Long id) {
		return ltePlanService.findById(id);
	}

	/**
	 * 
	 * @Description: 审核规划表
	 * @author weichengz
	 * @date 2018年10月28日 下午5:00:01
	 */
	@ResponseBody
	@RequestMapping(value = "/check", method = RequestMethod.POST)
	public JsonMsgUtil check(@RequestParam("id") Long id, @RequestParam("statusM") Long statusM) {
		return ltePlanService.check(id, statusM);
	}

	/**
	 * 
	 * @Description: 根据id查询
	 * @author weichengz
	 * @date 2018年10月28日 下午5:00:01
	 */
	@ResponseBody
	@RequestMapping(value = "/queryLtePlanInfo", method = RequestMethod.POST)
	public JsonMsgUtil queryLtePlanInfo(@RequestParam("id") Long id) {
		LoginUser LoginUser = UserUtil.getLoginUser();
		return ltePlanService.queryLtePlanInfo(id, LoginUser);
	}

	/**
	 * 
	 * @Description: 删除
	 * @author weichengz
	 * @date 2018年10月28日 下午5:52:35
	 */
	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public JsonMsgUtil delete(@RequestParam("ids") String ids) {
		return ltePlanService.delete(ids);
	}
}

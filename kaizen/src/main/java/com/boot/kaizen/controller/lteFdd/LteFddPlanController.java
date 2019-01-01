package com.boot.kaizen.controller.lteFdd;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.boot.kaizen._enum.Constant;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.model.lte.LteCellCheck;
import com.boot.kaizen.model.lte.LteGcParameter;
import com.boot.kaizen.model.lte.LteLoadTest;
import com.boot.kaizen.model.lte.LtePlan;
import com.boot.kaizen.model.lte.LtePlanInfo;
import com.boot.kaizen.model.lte.LteStationCheck;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.service.lte.ILtePlanService;
import com.boot.kaizen.service.lteFdd.ILteFddPlanService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;
import com.boot.kaizen.util.TableResultUtil;
import com.boot.kaizen.util.UserUtil;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 
 * @author weichengz
 * @date 2018年12月31日 上午10:17:16
 */
@Controller
@RequestMapping("/fdd/plan")
public class LteFddPlanController {

	@Autowired
	private ILteFddPlanService lteFddPlanService;
	@Value("${files.lteExcel}")
	private String lteExcel;
	@Value("${files.lteImage}")
	private String lteImage;

	@ResponseBody
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		param.getMap().put("projId", MyUtil.getDealProjId(UserUtil.getLoginUser()));

		PageInfo<LteFddPlan> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteFddPlanService.query(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}
	
	/**
	 * 
	* @Description: 编辑
	* @author weichengz
	* @date 2018年12月31日 上午11:27:36
	 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LteFddPlan lteFddPlan) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteFddPlanService.edit(lteFddPlan, loginUser);
	}

	/**
	 * 
	* @Description: 通过任务id查询
	* @author weichengz
	* @date 2018年12月31日 下午12:01:44
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") String id) {
		return lteFddPlanService.findById(id);
	}
	
	/**
	 * 
	* @Description: 删除
	* @author weichengz
	* @date 2018年12月31日 下午12:12:51
	 */
	@ResponseBody
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public JsonMsgUtil delete(@RequestParam("ids") String ids) {
		return lteFddPlanService.delete(ids);
	}
	
	
	/**
	 * 通过规划表的id查询所有的相关的审核信息
	* @Description: TODO
	* @author weichengz
	* @date 2019年1月1日 下午6:33:10
	 */
	@ResponseBody
	@RequestMapping(value = "/queryCheckInfoById", method = RequestMethod.POST)
	public JsonMsgUtil queryCheckInfoById(@RequestParam("id") String id) {
		return lteFddPlanService.queryCheckInfoById(id);
	}
}

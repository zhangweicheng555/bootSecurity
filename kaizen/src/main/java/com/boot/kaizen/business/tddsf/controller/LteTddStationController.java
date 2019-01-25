package com.boot.kaizen.business.tddsf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.boot.kaizen.business.tddsf.model.LteTddStation;
import com.boot.kaizen.business.tddsf.service.ILteTddStationService;
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
@RequestMapping("/tdd/station")
public class LteTddStationController {

	@Autowired
	private ILteTddStationService lteTddStationService;

	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2019年1月25日 下午6:00:34
	 */
	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LteTddStation> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteTddStationService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2019年1月25日 下午6:00:50
	 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LteTddStation lteTddStation) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteTddStationService.edit(lteTddStation, loginUser);
	}

	/**
	 * 
	 * @Description: 根据ID查询
	 * @author weichengz
	 * @date 2019年1月25日 下午6:00:57
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") String id) {
		return lteTddStationService.findById(id);
	}

	/**
	 * 
	 * @Description: 多项删除
	 * @author weichengz
	 * @date 2019年1月25日 下午6:01:06
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteByIds", method = RequestMethod.POST)
	public JsonMsgUtil deleteByIds(@RequestParam("ids") String ids) {
		return lteTddStationService.deleteByIds(ids);
	}
}

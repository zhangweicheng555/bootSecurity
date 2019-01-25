package com.boot.kaizen.business.tddsf.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.boot.kaizen.business.tddsf.model.LteTddCellCheck;
import com.boot.kaizen.business.tddsf.service.ILteTddCellCheckService;
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
@RequestMapping("/tdd/cellcheck")
public class LteTddCellCheckController {

	@Autowired
	private ILteTddCellCheckService lteTddCellCheckService;

	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2019年1月25日 下午5:28:06
	 */
	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LteTddCellCheck> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteTddCellCheckService.find(param.getMap());
					}
				});
		return new TableResultUtil(0l, "操作成功", pageInfo.getTotal(), pageInfo.getList());
	}

	/**
	 * 
	 * @Description: 编辑
	 * @author weichengz
	 * @date 2019年1月25日 下午5:29:29
	 */
	@ResponseBody
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public JsonMsgUtil edit(LteTddCellCheck lteTddCellCheck) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteTddCellCheckService.edit(lteTddCellCheck, loginUser);
	}

	/**
	 * 
	 * @Description: 根据id查询
	 * @author weichengz
	 * @date 2019年1月25日 下午5:29:39
	 */
	@ResponseBody
	@RequestMapping(value = "/findById", method = RequestMethod.POST)
	public JsonMsgUtil findById(@RequestParam("id") String id) {
		return lteTddCellCheckService.findById(id);
	}

	/**
	 * 
	 * @Description: 多项删除
	 * @author weichengz
	 * @date 2019年1月25日 下午5:29:52
	 */
	@ResponseBody
	@RequestMapping(value = "/deleteByIds", method = RequestMethod.POST)
	public JsonMsgUtil deleteByIds(@RequestParam("ids") String ids) {
		return lteTddCellCheckService.deleteByIds(ids);
	}
}

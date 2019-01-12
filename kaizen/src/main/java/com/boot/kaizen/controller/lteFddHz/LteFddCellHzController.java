package com.boot.kaizen.controller.lteFddHz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;
import com.boot.kaizen.service.lteFdd.ILteFddCellService;
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
@RequestMapping("/fddhz/cell")
public class LteFddCellHzController {

	@Autowired
	private ILteFddCellService lteFddCellService;

	@ResponseBody
	@RequestMapping(value = "/query", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		param.getMap().put("projId", MyUtil.getDealProjId(UserUtil.getLoginUser()));
		param.getMap().put("jzType", "2");

		PageInfo<LteFddCellCheck> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteFddCellService.query(param.getMap());
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
	public JsonMsgUtil edit(LteFddCellCheck lteFddCellCheck) {
		lteFddCellCheck.setJzType("2");
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteFddCellService.edit(lteFddCellCheck, loginUser);
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
		return lteFddCellService.findById(id);
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
		return lteFddCellService.delete(ids);
	}

}

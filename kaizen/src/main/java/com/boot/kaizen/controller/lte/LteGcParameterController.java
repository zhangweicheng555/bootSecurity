package com.boot.kaizen.controller.lte;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.entity.RequestParamEntity;
import com.boot.kaizen.model.lte.LteGcParameter;
import com.boot.kaizen.service.lte.ILteGcParameterService;
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
@RequestMapping("/gc")
public class LteGcParameterController {

	@Autowired
	private ILteGcParameterService lteGcParameterService;

	@ResponseBody
	@RequestMapping(value = "/find", method = RequestMethod.POST)
	public TableResultUtil find(RequestParamEntity param) {

		LoginUser loginUser = UserUtil.getLoginUser();
		param.getMap().put("projId", loginUser.getProjId());

		PageInfo<LteGcParameter> pageInfo = PageHelper.startPage(param.getPage(), param.getLimit())
				.doSelectPageInfo(new ISelect() {
					@Override
					public void doSelect() {
						lteGcParameterService.find(param.getMap());
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
	public JsonMsgUtil edit(LteGcParameter lteGcParameter) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteGcParameterService.edit(lteGcParameter, loginUser);
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
		return lteGcParameterService.findById(id);
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
		return lteGcParameterService.delete(ids);
	}
	
	/**
	 * 文件的批量上传
	 */
	@ResponseBody
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public JsonMsgUtil uploadRoadTest(@RequestParam(value = "files") MultipartFile file) {
		LoginUser loginUser = UserUtil.getLoginUser();
		return lteGcParameterService.upload(file,loginUser);
	}
}

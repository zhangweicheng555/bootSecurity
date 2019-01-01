package com.boot.kaizen.controller.app;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
/**
 * 
 * @author LTE FDD app对接模块
 * @date 2018年12月31日 下午11:26:55
 */
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSONObject;
import com.boot.kaizen.model.lte.LteLoadTest;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.service.lteFdd.ILteFddParameterService;
import com.boot.kaizen.util.AppUtil;
import com.boot.kaizen.util.FileUtil;
@RestController
@RequestMapping("/lte/app/fdd")
public class LteFddAppController {

	@Value("${files.path}")
	private String filesPath;
	@Autowired
	private  ILteFddParameterService lteFddParameterService;
	
	
	/**
	 * 上传小区的信息
	 */
	@RequestMapping(value = "/uploadFddCellInfo", method = RequestMethod.POST)
	public AppUtil uploadRoadTest(LteFddParameter lteFddParameter,
			@RequestParam("rsrpPic") MultipartFile rsrpPic,
			@RequestParam("sinrPic") MultipartFile sinrPic,
			@RequestParam("downRatePic") MultipartFile downRatePic,
			@RequestParam("upRatePic") MultipartFile upRatePic,
			@RequestParam("rsrpWirePic") MultipartFile rsrpWirePic) {
		AppUtil appUtil = new AppUtil(1, "上传成功", null);
		try {
			Integer projId=lteFddParameter.getProjId();
			String eNodeBID=lteFddParameter.getmENodeBID();
			String cellId=lteFddParameter.getCellId();
			Integer createAt=lteFddParameter.getCreateAt();
			if (projId == null || createAt==null || StringUtils.isBlank(eNodeBID) || StringUtils.isBlank(cellId)) {
				appUtil = new AppUtil(0, "项目projId、基站号eNodeBID、小区号cellId不能为空、创建者createAt不能为空", "");
				return appUtil;
			}
			
			String rsrpPicStr = upFile(rsrpPic, "fdd");
			String sinrPicStr = upFile(sinrPic, "fdd");
			String downRatePicStr = upFile(downRatePic, "fdd");
			String upRatePicStr = upFile(upRatePic, "fdd");
			String rsrpWirePicStr = upFile(rsrpWirePic, "fdd");

			lteFddParameter.setRsrpPic(rsrpPicStr);
			lteFddParameter.setSinrPic(sinrPicStr);
			lteFddParameter.setDownRatePic(downRatePicStr);
			lteFddParameter.setUpRatePic(upRatePicStr);
			lteFddParameter.setRsrpWirePic(rsrpWirePicStr);
			
			lteFddParameterService.upSert(lteFddParameter);
			appUtil.setDataSource("上传成功,接收的信息为："+JSONObject.toJSONString(lteFddParameter));
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	private String upFile(MultipartFile file, String modelName) {
		return FileUtil.UpFile(file, filesPath, modelName);
	}
	
}
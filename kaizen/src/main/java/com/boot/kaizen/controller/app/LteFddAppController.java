package com.boot.kaizen.controller.app;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.controller.lte.model.CommunityBean;
import com.boot.kaizen.controller.lte.model.MCommunityNetworkOptimizationBean;
import com.boot.kaizen.controller.lte.model.MCommunityProjectBean;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.service.lteFdd.ILteFddCellService;
import com.boot.kaizen.service.lteFdd.ILteFddParameterService;
import com.boot.kaizen.service.lteFdd.ILteFddPlanService;
import com.boot.kaizen.service.lteFdd.ILteFddStationService;
import com.boot.kaizen.util.AppUtil;
import com.boot.kaizen.util.FileUtil;
import com.google.gson.Gson;

@RestController
@RequestMapping("/lte/fdd/app")
public class LteFddAppController {

	@Value("${files.path}")
	private String filesPath;
	@Autowired
	private ILteFddParameterService lteFddParameterService;
	@Autowired
	private SysProjectService projectService;
	@Autowired
	private UserService userService;
	@Autowired
	private ILteFddPlanService lteFddPlanService;
	@Autowired
	private ILteFddCellService lteFddCellService;
	@Autowired
	private ILteFddStationService lteFddStationService;

	/**
	 * 根据登录的用户查询拥有的项目
	 * 
	 * @param username
	 */
	@RequestMapping(value = "/queryProjectList", method = RequestMethod.POST)
	public AppUtil queryProjectList(@RequestParam(value = "name", required = true) String name) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		List<Map<String, Object>> list = new ArrayList<>();
		try {
			List<Map<String, Object>> queryProjects = projectService.queryProjects(name);
			if (queryProjects == null || queryProjects.size() == 0) {
				appUtil = new AppUtil(0, "查询项目列表为空", "");
				return appUtil;
			}

			for (Map<String, Object> map : queryProjects) {
				Map<String, Object> model = new HashMap<>();
				Long projId = Long.valueOf(map.get("id").toString());
				model.put("proName", map.get("projName").toString());
				model.put("projId", projId);
				SysUser user = userService.queryUser(projId, name);
				model.put("userId", user.getId());
				list.add(model);
			}
			appUtil.setDataSource(list);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	/**
	 * 查询测试计划任务列表
	 * 
	 * @param username
	 * @param projId
	 */
	@RequestMapping(value = "/queryPlanList", method = RequestMethod.POST)
	public AppUtil queryPlanList(@RequestParam(value = "userId", required = true) Long userId,
			@RequestParam(value = "projId", required = true) Long projId) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		try {
			List<Map<String, Object>> planList = lteFddPlanService.queryPlanList(userId, projId);

			if (planList == null || planList.size() == 0) {
				appUtil = new AppUtil(0, "查询任务列表为空", "");
				return appUtil;
			}
			appUtil.setDataSource(planList);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	/**
	 * 拉取基站列表
	 * 
	 * @param userId
	 * @param projId
	 * @param testDate
	 */
	@RequestMapping(value = "/queryStationList", method = RequestMethod.POST)
	public AppUtil queryStationList(@RequestParam(value = "userId", required = true) Long userId,
			@RequestParam(value = "projId", required = true) Long projId,
			@RequestParam(value = "testDate", required = true) String testDate) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		try {
			List<BaseStationBean> stationList = lteFddPlanService.queryStationList(userId, projId, testDate);
			if (stationList != null && stationList.size() > 0) {
				for (BaseStationBean baseStationBean : stationList) {
					Map<String, Object> map = new HashMap<>();
					map.put("mENodeBID", baseStationBean.getmENodeBID());
					// 查询小区信息
					List<LteFddCellCheck> lteFddCellChecks = lteFddCellService.query(map);

					if (lteFddCellChecks != null && lteFddCellChecks.size() > 0) {
						for (LteFddCellCheck lteFddCellCheck : lteFddCellChecks) {
							CommunityBean communityBean = new CommunityBean();
							communityBean.setmCommunityBeanName(lteFddCellCheck.getCellName());

							MCommunityProjectBean mCommunityProjectBean = new MCommunityProjectBean(
									lteFddCellCheck.getCellId(), lteFddCellCheck.getFrequency(),
									lteFddCellCheck.getPci());
							communityBean.setmCommunityProject(mCommunityProjectBean);

							MCommunityNetworkOptimizationBean mCommunityNetworkOptimizationBean = new MCommunityNetworkOptimizationBean(
									lteFddCellCheck.getRsPower(), lteFddCellCheck.getAntennaHangUp(),
									lteFddCellCheck.getAzimuth(), lteFddCellCheck.getMechanicalLowerInclination(),
									lteFddCellCheck.getPresetElectricDip(),
									lteFddCellCheck.getMtotalLowerInclination());
							communityBean.setmCommunityNetworkOptimization(mCommunityNetworkOptimizationBean);

							baseStationBean.getmCommunityBeanList().add(communityBean);
						}
					}
				}
			} else {
				appUtil = new AppUtil(0, "查询信息列表为空", "");
				return appUtil;
			}
			appUtil.setDataSource(stationList);
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	
	
	
	/**
	 * 上传基站的信息接口 项目/测试时间/站号/createAt 这三个是必须传递的
	 */
	@RequestMapping(value = "/uploadStationCheck", method = RequestMethod.POST)
	public AppUtil uploadStationCheck(@RequestParam(value = "allViewPicMulti", required = false) MultipartFile allViewPicMulti,
			@RequestParam(value = "stationEntrancePicMulti", required = false) MultipartFile stationEntrancePicMulti,
			@RequestParam(value = "roofViewPicMulti", required = false) MultipartFile roofViewPicMulti,
			@RequestParam(value = "cellFirstPicMulti", required = false) MultipartFile cellFirstPicMulti,
			@RequestParam(value = "cellScecondPicMulti", required = false) MultipartFile cellScecondPicMulti,
			@RequestParam(value = "cellThirdPicMulti", required = false) MultipartFile cellThirdPicMulti,
			@RequestParam(value = "stationDirection0Multi", required = false) MultipartFile stationDirection0Multi,
			@RequestParam(value = "stationDirection45Multi", required = false) MultipartFile stationDirection45Multi,
			@RequestParam(value = "stationDirection90Multi", required = false) MultipartFile stationDirection90Multi,
			@RequestParam(value = "stationDirection135Multi", required = false) MultipartFile stationDirection135Multi,
			@RequestParam(value = "stationDirection180Multi", required = false) MultipartFile stationDirection180Multi,
			@RequestParam(value = "stationDirection225Multi", required = false) MultipartFile stationDirection225Multi,
			@RequestParam(value = "stationDirection270Multi", required = false) MultipartFile stationDirection270Multi,
			@RequestParam(value = "stationDirection315Multi", required = false) MultipartFile stationDirection315Multi,
			@RequestParam(value = "stationRsrpPicMulti", required = false) MultipartFile stationRsrpPicMulti,
			@RequestParam(value = "stationSinrPicMulti", required = false) MultipartFile stationSinrPicMulti,
			@RequestParam(value = "stationDownRatePicMulti", required = false) MultipartFile stationDownRatePicMulti,
			@RequestParam(value = "stationPciPicMulti", required = false) MultipartFile stationPciPicMulti,
			LteFddStation lteFddStation, @RequestParam(value = "userId", required = false) Integer userId) {
		AppUtil appUtil = new AppUtil(1, "上传成功", null);
		try {
			lteFddStation.setCreateAt(userId);
			Integer projId = lteFddStation.getProjId();
			String eNodeBID = lteFddStation.geteNodeBID();
			String testDate = lteFddStation.getTestDate();
			Integer createAt = lteFddStation.getCreateAt();
			if (projId == null || createAt == null || StringUtils.isBlank(eNodeBID) || StringUtils.isBlank(testDate)) {
				appUtil = new AppUtil(0, "项目projId、基站号eNodeBID、测试时间testDate、创建者userId不能为空", "");
				return appUtil;
			}

			String allViewPicStr = upFile(allViewPicMulti, "ltefdd");
			String stationEntrancePicStr = upFile(stationEntrancePicMulti, "ltefdd");
			String roofViewPicStr = upFile(roofViewPicMulti, "ltefdd");
			String cellFirstPicStr = upFile(cellFirstPicMulti, "ltefdd");
			String cellScecondPicStr = upFile(cellScecondPicMulti, "ltefdd");
			String cellThirdPicStr = upFile(cellThirdPicMulti, "ltefdd");
			String stationDirection0Str = upFile(stationDirection0Multi, "ltefdd");
			String stationDirection45Str = upFile(stationDirection45Multi, "ltefdd");
			String stationDirection90Str = upFile(stationDirection90Multi, "ltefdd");
			String stationDirection135Str = upFile(stationDirection135Multi, "ltefdd");
			String stationDirection180Str = upFile(stationDirection180Multi, "ltefdd");
			String stationDirection225Str = upFile(stationDirection225Multi, "ltefdd");
			String stationDirection270Str = upFile(stationDirection270Multi, "ltefdd");
			String stationDirection315Str = upFile(stationDirection315Multi, "ltefdd");
			String stationRsrpPicStr = upFile(stationRsrpPicMulti, "ltefdd");
			String stationSinrPicStr = upFile(stationSinrPicMulti, "ltefdd");
			String stationDownRatePicStr = upFile(stationDownRatePicMulti, "ltefdd");
			String stationPciPicStr = upFile(stationPciPicMulti, "ltefdd");

			
			lteFddStation.setAllViewPic(allViewPicStr);
			lteFddStation.setStationEntrancePic(stationEntrancePicStr);
			lteFddStation.setRoofViewPic(roofViewPicStr);
			lteFddStation.setCellFirstPic(cellFirstPicStr);
			lteFddStation.setCellScecondPic(cellScecondPicStr);
			lteFddStation.setCellThirdPic(cellThirdPicStr);

			lteFddStation.setStationDirection0(stationDirection0Str);
			lteFddStation.setStationDirection45(stationDirection45Str);
			lteFddStation.setStationDirection90(stationDirection90Str);
			lteFddStation.setStationDirection135(stationDirection135Str);
			lteFddStation.setStationDirection180(stationDirection180Str);
			lteFddStation.setStationDirection225(stationDirection225Str);
			lteFddStation.setStationDirection270(stationDirection270Str);
			lteFddStation.setStationDirection315(stationDirection315Str);
			lteFddStation.setStationRsrpPic(stationRsrpPicStr);
			lteFddStation.setStationSinrPic(stationSinrPicStr);
			lteFddStation.setStationDownRatePic(stationDownRatePicStr);
			lteFddStation.setStationPciPic(stationPciPicStr);

			lteFddStationService.upSert(lteFddStation);

			appUtil.setDataSource("上传成功,接收的信息为：" + new Gson().toJson(lteFddStation));
			return appUtil;
		} catch (Exception e) {
			appUtil = new AppUtil(2, "系统异常：" + e.getMessage(), "");
			return appUtil;
		}
	}

	/**
	 * 上传小区的信息信息接口
	 */
	@RequestMapping(value = "/uploadCellCheck", method = RequestMethod.POST)
	public AppUtil uploadCellCheck(LteFddParameter lteFddParameter,@RequestParam(value="userId",required=false)  Integer userId,@RequestParam(value="rsrpPicMulti",required=false) MultipartFile rsrpPicMulti,
			@RequestParam(value="sinrPicMulti",required=false) MultipartFile sinrPicMulti, @RequestParam(value="downRatePicMulti",required=false) MultipartFile downRatePicMulti,
			@RequestParam(value="upRatePicMulti",required=false) MultipartFile upRatePicMulti,
			@RequestParam(value="rsrpWirePicMulti",required=false) MultipartFile rsrpWirePicMulti) {
		AppUtil appUtil = new AppUtil(1, "上传成功", null);
		try {
			lteFddParameter.setCreateAt(userId);
			Integer projId = lteFddParameter.getProjId();
			String eNodeBID = lteFddParameter.geteNodeBID();
			String cellId = lteFddParameter.getCellId();
			String testDate = lteFddParameter.getTestDate();
			Integer createAt = lteFddParameter.getCreateAt();
			if (projId == null || createAt == null || StringUtils.isBlank(eNodeBID) || StringUtils.isBlank(cellId) || StringUtils.isBlank(testDate)) {
				appUtil = new AppUtil(0, "项目projId、基站号eNodeBID、小区号cellId、测试时间createAt、创建者userId不能为空", "");
				return appUtil;
			}

			String rsrpPicStr = upFile(rsrpPicMulti, "ltefdd");
			String sinrPicStr = upFile(sinrPicMulti, "ltefdd");
			String downRatePicStr = upFile(downRatePicMulti, "ltefdd");
			String upRatePicStr = upFile(upRatePicMulti, "ltefdd");
			String rsrpWirePicStr = upFile(rsrpWirePicMulti, "ltefdd");

			lteFddParameter.setRsrpPic(rsrpPicStr);
			lteFddParameter.setSinrPic(sinrPicStr);
			lteFddParameter.setDownRatePic(downRatePicStr);
			lteFddParameter.setUpRatePic(upRatePicStr);
			lteFddParameter.setRsrpWirePic(rsrpWirePicStr);

			lteFddParameterService.upSert(lteFddParameter);
			appUtil.setDataSource("上传成功,接收的信息为：" + new Gson().toJson(lteFddParameter));
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
package com.boot.kaizen.business.tddsf.controller.app;

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

import org.springframework.web.multipart.MultipartFile;

import com.boot.kaizen.business.tddsf.model.LteTddCellCheck;
import com.boot.kaizen.business.tddsf.model.LteTddParameter;
import com.boot.kaizen.business.tddsf.model.LteTddStation;
import com.boot.kaizen.business.tddsf.service.ILteTddCellCheckService;
import com.boot.kaizen.business.tddsf.service.ILteTddParameterService;
import com.boot.kaizen.business.tddsf.service.ILteTddPlanService;
import com.boot.kaizen.business.tddsf.service.ILteTddStationService;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.controller.lte.model.CommunityBean;
import com.boot.kaizen.controller.lte.model.MCommunityNetworkOptimizationBean;
import com.boot.kaizen.controller.lte.model.MCommunityProjectBean;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.service.SysProjectService;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.util.AppUtil;
import com.boot.kaizen.util.FileUtil;
import com.google.gson.Gson;

/**
 * tdd室分 app对接接口
 * 
 * @author weichengz
 * @date 2019年1月27日 下午10:51:47
 */
@RestController
@RequestMapping("/lte/tddsf/app")
public class LteTddSfAppController {

	@Value("${files.path}")
	private String filesPath;
	@Autowired
	private SysProjectService projectService;
	@Autowired
	private UserService userService;
	@Autowired
	private ILteTddPlanService lteTddPlanService;
	@Autowired
	private ILteTddCellCheckService lteTddCellCheckService;
	@Autowired
	private ILteTddStationService lteTddStationService;
	@Autowired
	private ILteTddParameterService lteTddParameterService;

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
			@RequestParam(value = "projId", required = true) Long projId,
			@RequestParam(value = "testDate", required = true) String testDate) {
		AppUtil appUtil = new AppUtil(1, "查询成功", "");
		try {
			List<Map<String, Object>> planList = lteTddPlanService.queryPlanList(userId, projId, testDate);

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
			List<BaseStationBean> stationList = lteTddPlanService.queryBaseStationList(userId, projId, testDate);
			if (stationList != null && stationList.size() > 0) {
				for (BaseStationBean baseStationBean : stationList) {
					Map<String, Object> map = new HashMap<>();
					map.put("enodeBID", baseStationBean.getmENodeBID());
					map.put("beginTime", testDate);
					map.put("endTime", testDate);
					map.put("projId", projId);
					// 查询小区信息
					List<LteTddCellCheck> lteFddCellChecks = lteTddCellCheckService.find(map);

					if (lteFddCellChecks != null && lteFddCellChecks.size() > 0) {
						for (LteTddCellCheck lteFddCellCheck : lteFddCellChecks) {
							CommunityBean communityBean = new CommunityBean();
							communityBean.setmCommunityBeanName(lteFddCellCheck.getCellName());

							MCommunityProjectBean mCommunityProjectBean = new MCommunityProjectBean(
									lteFddCellCheck.getCellId(), "", lteFddCellCheck.getPci());
							communityBean.setmCommunityProject(mCommunityProjectBean);

							MCommunityNetworkOptimizationBean mCommunityNetworkOptimizationBean = new MCommunityNetworkOptimizationBean(
									lteFddCellCheck.getRsPower(), lteFddCellCheck.getAntennaHangUp(),
									lteFddCellCheck.getAzimuth(), "", "", "");
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
	 * 上传基站的测试信息接口 项目/测试时间/站号/createAt 这三个是必须传递的
	 */
	@RequestMapping(value = "/uploadStationCheck", method = RequestMethod.POST)
	public AppUtil uploadStationCheck(
			@RequestParam(value = "allViewPicMulti", required = false) MultipartFile allViewPicMulti,
			@RequestParam(value = "stationEntrancePicMulti", required = false) MultipartFile stationEntrancePicMulti,
			LteTddStation lteFddStation, @RequestParam(value = "userId", required = false) Integer userId) {
		AppUtil appUtil = new AppUtil(1, "上传成功", null);
		try {
			lteFddStation.setCreateAt(userId);
			Integer projId = lteFddStation.getProjId();
			String enodeBID = lteFddStation.getEnodeBID();
			String testDate = lteFddStation.getTestDate();
			Integer createAt = lteFddStation.getCreateAt();
			if (projId == null || createAt == null || StringUtils.isBlank(enodeBID) || StringUtils.isBlank(testDate)) {
				appUtil = new AppUtil(0, "项目projId、基站号enodeBID、测试时间testDate、创建者userId不能为空", "");
				return appUtil;
			}
			String allViewPicStr = upFile(allViewPicMulti, "ltetdd");
			String stationEntrancePicStr = upFile(stationEntrancePicMulti, "ltetdd");

			lteFddStation.setAllViewPic(allViewPicStr);
			lteFddStation.setStationEntrancePic(stationEntrancePicStr);
			lteTddStationService.upSert(lteFddStation);
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
	public AppUtil uploadCellCheck(LteTddParameter lteFddParameter,
			@RequestParam(value = "userId", required = false) Integer userId,
			@RequestParam(value = "rsrpPicMulti", required = false) MultipartFile rsrpPicMulti,
			@RequestParam(value = "sinrPicMulti", required = false) MultipartFile sinrPicMulti,
			@RequestParam(value = "downRatePicMulti", required = false) MultipartFile downRatePicMulti,

			@RequestParam(value = "testFlowImage", required = false) MultipartFile[] testFlowImage,

			@RequestParam(value = "flowCoverRsrpPicMulti", required = false) MultipartFile flowCoverRsrpPicMulti,
			@RequestParam(value = "flowCoverSinrPicMulti", required = false) MultipartFile flowCoverSinrPicMulti,
			@RequestParam(value = "flowCoverpCIPicMulti", required = false) MultipartFile flowCoverpCIPicMulti,

			@RequestParam(value = "upRatePicMulti", required = false) MultipartFile upRatePicMulti) {
		AppUtil appUtil = new AppUtil(1, "上传成功", null);
		try {
			lteFddParameter.setCreateAt(userId);
			Integer projId = lteFddParameter.getProjId();
			String enodeBID = lteFddParameter.getEnodeBID();
			String cellId = lteFddParameter.getCellId();
			String testDate = lteFddParameter.getTestDate();
			Integer createAt = lteFddParameter.getCreateAt();

			if (projId == null || createAt == null || StringUtils.isBlank(enodeBID) || StringUtils.isBlank(cellId)
					|| StringUtils.isBlank(testDate)) {
				appUtil = new AppUtil(0, "项目projId、基站号enodeBID、小区号cellId、测试时间testDate、创建者userId不能为空", "");
				return appUtil;
			}

			String rsrpPicStr = upFile(rsrpPicMulti, "ltetdd");
			String sinrPicStr = upFile(sinrPicMulti, "ltetdd");
			String downRatePicStr = upFile(downRatePicMulti, "ltetdd");
			String upRatePicStr = upFile(upRatePicMulti, "ltetdd");

			lteFddParameter.setRsrpImage(rsrpPicStr);
			lteFddParameter.setSinrImage(sinrPicStr);
			lteFddParameter.setDownRateImage(downRatePicStr);
			lteFddParameter.setUpRateImage(upRatePicStr);

			String flowCoverRsrpPicMultiStr = upFile(flowCoverRsrpPicMulti, "ltetdd");
			String flowCoverSinrPicMultiStr = upFile(flowCoverSinrPicMulti, "ltetdd");
			String flowCoverpCIPicMultiStr = upFile(flowCoverpCIPicMulti, "ltetdd");

			lteFddParameter.setFlowCoverRsrpImage(flowCoverRsrpPicMultiStr);
			lteFddParameter.setFlowCoverSinrImage(flowCoverSinrPicMultiStr);
			lteFddParameter.setFlowCoverpCIImage(flowCoverpCIPicMultiStr);

			String testFlowImageStr = "";
			if (testFlowImage != null && testFlowImage.length > 0) {
				for (int i = 0; i < testFlowImage.length; i++) {
					String name = upFile(testFlowImage[i], "lte");
					if (StringUtils.isNoneBlank(name)) {
						if (StringUtils.isNoneBlank(testFlowImageStr)) {
							testFlowImageStr = testFlowImageStr + "," + name;
						} else {
							testFlowImageStr = name;
						}
					}
				}
			}

			lteFddParameter.setTestFlowImage(testFlowImageStr);
			lteTddParameterService.upsert(lteFddParameter);
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
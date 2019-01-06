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
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.model.lteFddModel.LteFddPlanInfo;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
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
	@Value("${files.lteFddExcel}")
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
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年1月1日 下午6:33:10
	 */
	@ResponseBody
	@RequestMapping(value = "/queryCheckInfoById", method = RequestMethod.POST)
	public JsonMsgUtil queryCheckInfoById(@RequestParam("id") String id) {
		return lteFddPlanService.queryCheckInfoById(id);
	}

	/**
	 * 导出报告
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年1月5日 上午11:17:50
	 */
	@RequestMapping(value = "/exportPlanDoc", method = RequestMethod.POST)
	public void exportPlanDoc(@RequestParam(value = "id", required = true) String id, HttpServletResponse response,
			HttpSession session) {
		Map<String, String> map = new HashMap<>();// 存储导出excel的数据信息
		// 基站描述
		map.put("title", "导出出错误");
		map.put("mBaseStationName", "");
		map.put("testTime", "");
		map.put("mENodeBID", "");
		map.put("districtCountry", "");
		map.put("address", "");
		map.put("mBaseStationType", "");
		map.put("deviceType", "");
		map.put("videoFrequency", "");
		map.put("region", "");
		map.put("commonStationName", "");

		// 相关参数验收
		map.put("mLongitude", "");
		map.put("mLatitude", "");
		map.put("broadBand", "");
		map.put("ipConfig", "");

		// 验收人员
		map.put("testPerson", "");
		map.put("backPerson", "");
		map.put("testPersonPhone", "");
		map.put("backPersonPhone", "");

		// 基站遍历覆盖图
		map.put("stationRsrpPic", "");
		map.put("stationSinrPic", "");
		map.put("stationDownRatePic", "");
		map.put("stationPciPic", "");

		
		map.put("stationType", "");
		map.put("buildingFunction", "");
		map.put("floorsNum", "");
		map.put("yuanTaWeizhi", "");
		map.put("yuanTiMianFs", "");
		map.put("yuanTiMianGg", "");
		map.put("xinZengTiMianType", "");
		map.put("reasonDescrib", "");
		map.put("xinZengTiMianFs", "");
		map.put("reasonDescribNew", "");
		map.put("xinZengFwj", "");
		map.put("xinTiMianGg", "");
		map.put("tianMianZd", "");
		map.put("stationDistance", "");
		map.put("remark", "");

		map.put("allViewPic", "");
		map.put("stationEntrancePic", "");
		map.put("roofViewPic", "");

		map.put("cellFirstPic", "");
		map.put("cellScecondPic", "");
		map.put("cellThirdPic", "");

		map.put("stationDirection0", "");
		map.put("stationDirection45", "");
		map.put("stationDirection90", "");
		map.put("stationDirection135", "");
		map.put("stationDirection180", "");
		map.put("stationDirection225", "");
		map.put("stationDirection270", "");
		map.put("stationDirection315", "");

		// 小区参数

		// 1
		map.put("cellName0", "");
		map.put("upDownRatio0", "");
		map.put("specialRatio0", "");
		map.put("eci0", "");
		map.put("earfcn0", "");
		map.put("pci0", "");
		map.put("tac0", "");
		map.put("rsPower0", "");
		map.put("pa0", "");
		map.put("pb0", "");
		map.put("antennaHangUp0", "");
		map.put("azimuth0", "");
		map.put("mechanicalLowerInclination0", "");
		map.put("presetElectricDip0", "");
		map.put("mtotalLowerInclination0", "");
		// 性能验收测试
		map.put("rrcSuccRateAttempt0", "");
		map.put("rrcSuccRateSucc0", "");
		map.put("rrcSuccRateFailure0", "");
		map.put("rrcSuccRatepercent0", "");

		map.put("erabSuccRateAttempt0", "");
		map.put("erabSuccRateSucc0", "");
		map.put("erabSuccRateFailure0", "");
		map.put("erabSuccRatepercent0", "");

		map.put("accessSuccRateAttempt0", "");
		map.put("accessSuccRateSucc0", "");
		map.put("accessSuccRateFailure0", "");
		map.put("accessSuccRatepercent0", "");

		map.put("volteFailureAttempt0", "");
		map.put("volteFailureSucc0", "");
		map.put("volteFailureFailure0", "");
		map.put("volteFailurepercent0", "");

		map.put("tdLteCxAttempt0", "");
		map.put("tdLteCxSucc0", "");
		map.put("tdLteCxFailure0", "");
		map.put("tdLteCxpercent0", "");

		map.put("lteFddCxAttempt0", "");
		map.put("lteFddCxSucc0", "");
		map.put("lteFddCxFailure0", "");
		map.put("lteFddCxpercent0", "");

		map.put("tdLteChangeAttempt0", "");
		map.put("tdLteChangeSucc0", "");
		map.put("tdLteChangeFailure0", "");
		map.put("tdLteChangepercent0", "");

		map.put("lteFddChangeAttempt0", "");
		map.put("lteFddChangeSucc0", "");
		map.put("lteFddChangeFailure0", "");
		map.put("lteFddChangepercent0", "");

		map.put("systemChangeAttempt0", "");
		map.put("systemChangeSucc0", "");
		map.put("systemChangeFailure0", "");
		map.put("systemChangepercent0", "");

		map.put("csfbReturnAttempt0", "");
		map.put("csfbReturnSucc0", "");
		map.put("csfbReturnFailure0", "");
		map.put("csfbReturnpercent0", "");

		// 2
		map.put("cellName1", "");
		map.put("upDownRatio1", "");
		map.put("specialRatio1", "");
		map.put("eci1", "");
		map.put("earfcn1", "");
		map.put("pci1", "");
		map.put("tac1", "");
		map.put("rsPower1", "");
		map.put("pa1", "");
		map.put("pb1", "");
		map.put("antennaHangUp1", "");
		map.put("azimuth1", "");
		map.put("mechanicalLowerInclination1", "");
		map.put("presetElectricDip1", "");
		map.put("mtotalLowerInclination1", "");
		// 性能验收测试
		map.put("rrcSuccRateAttempt1", "");
		map.put("rrcSuccRateSucc1", "");
		map.put("rrcSuccRateFailure1", "");
		map.put("rrcSuccRatepercent1", "");

		map.put("erabSuccRateAttempt1", "");
		map.put("erabSuccRateSucc1", "");
		map.put("erabSuccRateFailure1", "");
		map.put("erabSuccRatepercent1", "");

		map.put("accessSuccRateAttempt1", "");
		map.put("accessSuccRateSucc1", "");
		map.put("accessSuccRateFailure1", "");
		map.put("accessSuccRatepercent1", "");

		map.put("volteFailureAttempt1", "");
		map.put("volteFailureSucc1", "");
		map.put("volteFailureFailure1", "");
		map.put("volteFailurepercent1", "");

		map.put("tdLteCxAttempt1", "");
		map.put("tdLteCxSucc1", "");
		map.put("tdLteCxFailure1", "");
		map.put("tdLteCxpercent1", "");

		map.put("lteFddCxAttempt1", "");
		map.put("lteFddCxSucc1", "");
		map.put("lteFddCxFailure1", "");
		map.put("lteFddCxpercent1", "");

		map.put("tdLteChangeAttempt1", "");
		map.put("tdLteChangeSucc1", "");
		map.put("tdLteChangeFailure1", "");
		map.put("tdLteChangepercent1", "");

		map.put("lteFddChangeAttempt1", "");
		map.put("lteFddChangeSucc1", "");
		map.put("lteFddChangeFailure1", "");
		map.put("lteFddChangepercent1", "");

		map.put("systemChangeAttempt1", "");
		map.put("systemChangeSucc1", "");
		map.put("systemChangeFailure1", "");
		map.put("systemChangepercent1", "");

		map.put("csfbReturnAttempt1", "");
		map.put("csfbReturnSucc1", "");
		map.put("csfbReturnFailure1", "");
		map.put("csfbReturnpercent1", "");

		// 3
		map.put("cellName2", "");
		map.put("upDownRatio2", "");
		map.put("specialRatio2", "");
		map.put("eci2", "");
		map.put("earfcn2", "");
		map.put("pci2", "");
		map.put("tac2", "");
		map.put("rsPower2", "");
		map.put("pa2", "");
		map.put("pb2", "");
		map.put("antennaHangUp2", "");
		map.put("azimuth2", "");
		map.put("mechanicalLowerInclination2", "");
		map.put("presetElectricDip2", "");
		map.put("mtotalLowerInclination2", "");
		// 性能验收测试
		map.put("rrcSuccRateAttempt2", "");
		map.put("rrcSuccRateSucc2", "");
		map.put("rrcSuccRateFailure2", "");
		map.put("rrcSuccRatepercent2", "");

		map.put("erabSuccRateAttempt2", "");
		map.put("erabSuccRateSucc2", "");
		map.put("erabSuccRateFailure2", "");
		map.put("erabSuccRatepercent2", "");

		map.put("accessSuccRateAttempt2", "");
		map.put("accessSuccRateSucc2", "");
		map.put("accessSuccRateFailure2", "");
		map.put("accessSuccRatepercent2", "");

		map.put("volteFailureAttempt2", "");
		map.put("volteFailureSucc2", "");
		map.put("volteFailureFailure2", "");
		map.put("volteFailurepercent2", "");

		map.put("tdLteCxAttempt2", "");
		map.put("tdLteCxSucc2", "");
		map.put("tdLteCxFailure2", "");
		map.put("tdLteCxpercent2", "");

		map.put("lteFddCxAttempt2", "");
		map.put("lteFddCxSucc2", "");
		map.put("lteFddCxFailure2", "");
		map.put("lteFddCxpercent2", "");

		map.put("tdLteChangeAttempt2", "");
		map.put("tdLteChangeSucc2", "");
		map.put("tdLteChangeFailure2", "");
		map.put("tdLteChangepercent2", "");

		map.put("lteFddChangeAttempt2", "");
		map.put("lteFddChangeSucc2", "");
		map.put("lteFddChangeFailure2", "");
		map.put("lteFddChangepercent2", "");

		map.put("systemChangeAttempt2", "");
		map.put("systemChangeSucc2", "");
		map.put("systemChangeFailure2", "");
		map.put("systemChangepercent2", "");

		map.put("csfbReturnAttempt2", "");
		map.put("csfbReturnSucc2", "");
		map.put("csfbReturnFailure2", "");
		map.put("csfbReturnpercent2", "");

		// app部分
		map.put("appeci0", "");
		map.put("appearfcn0", "");
		map.put("apppci0", "");
		map.put("apptac0", "");
		map.put("appftpDownPass0", "");
		map.put("appftpUpPass0", "");
		map.put("volteWirelessAttempt0", "");
		map.put("volteWirelessConnSucc0", "");
		map.put("volteWirelessConnFailure0", "");
		map.put("volteWirelessConnpercent0", "");
		
		map.put("csfbCallSuccAttempt0", "");
		map.put("csfbCallSuccSucc0", "");
		map.put("csfbCallSuccfailure0", "");
		map.put("csfbCallSuccpercent0", "");
		map.put("csfbPassiveCallSuccAttempt0", "");
		map.put("csfbPassiveCallSuccSucc0", "");
		map.put("csfbPassiveCallSuccfailure0", "");
		map.put("csfbPassiveCallSuccpercent0", "");
		
		map.put("csfbVoiceSuccAttempt0", "");
		map.put("csfbVoiceSuccSucc0", "");
		map.put("csfbVoiceSuccfailure0", "");
		map.put("csfbVoiceSuccpercent0", "");
		map.put("csfbCallDelay0", "");
		map.put("csfbPassiveCallDelay0", "");
		map.put("csfbVoiceDelay0", "");
		map.put("rsrpPic0", "");
		map.put("sinrPic0", "");
		map.put("downRatePic0", "");
		map.put("upRatePic0", "");
		map.put("rsrpWirePic0", "");

		map.put("appeci1", "");
		map.put("appearfcn1", "");
		map.put("apppci1", "");
		map.put("apptac1", "");
		map.put("appftpDownPass1", "");
		map.put("appftpUpPass1", "");
		map.put("volteWirelessAttempt1", "");
		map.put("volteWirelessConnSucc1", "");
		map.put("volteWirelessConnFailure1", "");
		map.put("volteWirelessConnpercent1", "");
		map.put("csfbCallSuccAttempt1", "");
		map.put("csfbCallSuccSucc1", "");
		map.put("csfbCallSuccfailure1", "");
		map.put("csfbCallSuccpercent1", "");
		map.put("csfbPassiveCallSuccAttempt1", "");
		map.put("csfbPassiveCallSuccSucc1", "");
		map.put("csfbPassiveCallSuccfailure1", "");
		map.put("csfbPassiveCallSuccpercent1", "");
		map.put("csfbVoiceSuccAttempt1", "");
		map.put("csfbVoiceSuccSucc1", "");
		map.put("csfbVoiceSuccfailure1", "");
		map.put("csfbVoiceSuccpercent1", "");
		map.put("csfbCallDelay1", "");
		map.put("csfbPassiveCallDelay1", "");
		map.put("csfbVoiceDelay1", "");
		map.put("rsrpPic1", "");
		map.put("sinrPic1", "");
		map.put("downRatePic1", "");
		map.put("upRatePic1", "");
		map.put("rsrpWirePic1", "");

		map.put("appeci2", "");
		map.put("appearfcn2", "");
		map.put("apppci2", "");
		map.put("apptac2", "");
		map.put("appftpDownPass2", "");
		map.put("appftpUpPass2", "");
		map.put("volteWirelessAttempt2", "");
		map.put("volteWirelessConnSucc2", "");
		map.put("volteWirelessConnFailure2", "");
		map.put("volteWirelessConnpercent2", "");
		map.put("csfbCallSuccAttempt2", "");
		map.put("csfbCallSuccSucc2", "");
		map.put("csfbCallSuccfailure2", "");
		map.put("csfbCallSuccpercent2", "");
		map.put("csfbPassiveCallSuccAttempt2", "");
		map.put("csfbPassiveCallSuccSucc2", "");
		map.put("csfbPassiveCallSuccfailure2", "");
		map.put("csfbPassiveCallSuccpercent2", "");
		map.put("csfbVoiceSuccAttempt2", "");
		map.put("csfbVoiceSuccSucc2", "");
		map.put("csfbVoiceSuccfailure2", "");
		map.put("csfbVoiceSuccpercent2", "");
		map.put("csfbCallDelay2", "");
		map.put("csfbPassiveCallDelay2", "");
		map.put("csfbVoiceDelay2", "");
		map.put("rsrpPic2", "");
		map.put("sinrPic2", "");
		map.put("downRatePic2", "");
		map.put("upRatePic2", "");
		map.put("rsrpWirePic2", "");

		
		map.put("fourCoverCheck", "");
		map.put("heightLocationDirectionCheck", "");
		map.put("skyBlockCheck", "");
		map.put("wireBackCheck", "");
		LteFddPlanInfo lteFddPlanInfo = null;
		try {
			if (StringUtils.isNoneBlank(id)) {
				lteFddPlanInfo = lteFddPlanService.findLteFddPlanInfo(id);
				if (lteFddPlanInfo != null) {
					map.put("mBaseStationName", lteFddPlanInfo.getmBaseStationName());
					map.put("testTime", lteFddPlanInfo.getTestTime());
					map.put("mENodeBID", lteFddPlanInfo.getmENodeBID());
					map.put("districtCountry", lteFddPlanInfo.getDistrictCountry());
					map.put("address", lteFddPlanInfo.getAddress());
					map.put("mBaseStationType", lteFddPlanInfo.getmBaseStationType());
					map.put("deviceType", lteFddPlanInfo.getDeviceType());
					map.put("videoFrequency", lteFddPlanInfo.getVideoFrequency());
					map.put("mLongitude", lteFddPlanInfo.getmLongitude());
					map.put("mLatitude", lteFddPlanInfo.getmLatitude());
					map.put("broadBand", lteFddPlanInfo.getBroadBand());
					map.put("ipConfig", lteFddPlanInfo.getIpConfig());
					map.put("testPerson", lteFddPlanInfo.getTestPerson());
					map.put("backPerson", lteFddPlanInfo.getBackPerson());
					map.put("testPersonPhone", lteFddPlanInfo.getTestPersonPhone());
					map.put("backPersonPhone", lteFddPlanInfo.getBackPersonPhone());

					map.put("region", lteFddPlanInfo.getRegion());
					map.put("commonStationName", lteFddPlanInfo.getCommonStationName());

					// 小区信息
					List<LteFddCellCheck> lteFddCellChecks = lteFddPlanInfo.getLteFddCellChecks();
					// 小区app测试
					List<LteFddParameter> lteFddParameters = lteFddPlanInfo.getLteFddParameters();
					// 基站app测试
					List<LteFddStation> lteFddStations = lteFddPlanInfo.getLteFddStations();
					if (lteFddStations != null && lteFddStations.size() > 0) {
						LteFddStation lteFddStation = lteFddStations.get(0);
						map.put("stationRsrpPic", lteFddStation.getStationRsrpPic());
						map.put("stationSinrPic", lteFddStation.getStationSinrPic());
						map.put("stationDownRatePic", lteFddStation.getStationDownRatePic());
						map.put("stationPciPic", lteFddStation.getStationPciPic());

						map.put("stationType", lteFddStation.getStationType());
						map.put("buildingFunction", lteFddStation.getBuildingFunction());
						map.put("floorsNum", lteFddStation.getFloorsNum());
						map.put("yuanTaWeizhi", lteFddStation.getYuanTaWeizhi());
						map.put("yuanTiMianFs", lteFddStation.getYuanTiMianFs());
						map.put("yuanTiMianGg", lteFddStation.getYuanTiMianGg());
						map.put("xinZengTiMianType", lteFddStation.getXinZengTiMianType());
						map.put("reasonDescrib", lteFddStation.getReasonDescrib());
						map.put("xinZengTiMianFs", lteFddStation.getXinZengTiMianFs());
						map.put("reasonDescribNew", lteFddStation.getReasonDescribNew());
						map.put("xinZengFwj", lteFddStation.getXinZengFwj());
						map.put("xinTiMianGg", lteFddStation.getXinTiMianGg());
						map.put("tianMianZd", lteFddStation.getTianMianZd());
						map.put("stationDistance", lteFddStation.getStationDistance());
						map.put("remark", lteFddStation.getRemark());

						map.put("allViewPic", lteFddStation.getAllViewPic());
						map.put("stationEntrancePic", lteFddStation.getStationEntrancePic());
						map.put("roofViewPic", lteFddStation.getRoofViewPic());

						map.put("cellFirstPic", lteFddStation.getCellFirstPic());
						map.put("cellScecondPic", lteFddStation.getCellScecondPic());
						map.put("cellThirdPic", lteFddStation.getCellThirdPic());

						map.put("stationDirection0", lteFddStation.getStationDirection0());
						map.put("stationDirection45", lteFddStation.getStationDirection45());
						map.put("stationDirection90", lteFddStation.getStationDirection90());
						map.put("stationDirection135", lteFddStation.getStationDirection135());
						map.put("stationDirection180", lteFddStation.getStationDirection180());
						map.put("stationDirection225", lteFddStation.getStationDirection225());
						map.put("stationDirection270", lteFddStation.getStationDirection270());
						map.put("stationDirection315", lteFddStation.getStationDirection315());
						
						map.put("fourCoverCheck", lteFddStation.getFourCoverCheck());
						map.put("heightLocationDirectionCheck", lteFddStation.getHeightLocationDirectionCheck());
						map.put("skyBlockCheck", lteFddStation.getSkyBlockCheck());
						map.put("wireBackCheck", lteFddStation.getWireBackCheck());
					}

					if (lteFddCellChecks != null && lteFddCellChecks.size() > 0) {
						for (int i = 0; i < lteFddCellChecks.size(); i++) {
							LteFddCellCheck lteFddCellCheck = lteFddCellChecks.get(i);
							if (i == 0) {
								map.put("cellName0", lteFddCellCheck.getCellName());
								map.put("upDownRatio0", lteFddCellCheck.getUpDownRatio());
								map.put("specialRatio0", lteFddCellCheck.getSpecialRatio());
								map.put("eci0", lteFddCellCheck.getEci());
								map.put("earfcn0", lteFddCellCheck.getEarfcn());
								map.put("pci0", lteFddCellCheck.getPci());
								map.put("tac0", lteFddCellCheck.getTac());
								map.put("rsPower0", lteFddCellCheck.getTac());
								map.put("pa0", lteFddCellCheck.getPa());
								map.put("pb0", lteFddCellCheck.getPb());
								map.put("antennaHangUp0", lteFddCellCheck.getAntennaHangUp());
								map.put("azimuth0", lteFddCellCheck.getAzimuth());
								map.put("mechanicalLowerInclination0", lteFddCellCheck.getMechanicalLowerInclination());
								map.put("presetElectricDip0", lteFddCellCheck.getPresetElectricDip());
								map.put("mtotalLowerInclination0", lteFddCellCheck.getMtotalLowerInclination());

								// 性能验收测试
								map.put("rrcSuccRateAttempt0", lteFddCellCheck.getRrcSuccRateAttempt());
								map.put("rrcSuccRateSucc0", lteFddCellCheck.getRrcSuccRateSucc());
								map.put("rrcSuccRateFailure0", lteFddCellCheck.getRrcSuccRateFailure());
								map.put("rrcSuccRatepercent0", MyUtil.getNumPercent(
										lteFddCellCheck.getRrcSuccRateSucc(), lteFddCellCheck.getRrcSuccRateAttempt()));

								map.put("erabSuccRateAttempt0", lteFddCellCheck.getErabSuccRateAttempt());
								map.put("erabSuccRateSucc0", lteFddCellCheck.getErabSuccRateSucc());
								map.put("erabSuccRateFailure0", lteFddCellCheck.getErabSuccRateFailure());
								map.put("erabSuccRatepercent0",
										MyUtil.getNumPercent(lteFddCellCheck.getErabSuccRateSucc(),
												lteFddCellCheck.getErabSuccRateAttempt()));

								map.put("accessSuccRateAttempt0", lteFddCellCheck.getAccessSuccRateAttempt());
								map.put("accessSuccRateSucc0", lteFddCellCheck.getAccessSuccRateSucc());
								map.put("accessSuccRateFailure0", lteFddCellCheck.getAccessSuccRateFailure());
								map.put("accessSuccRatepercent0",
										MyUtil.getNumPercent(lteFddCellCheck.getAccessSuccRateSucc(),
												lteFddCellCheck.getAccessSuccRateAttempt()));

								map.put("volteFailureAttempt0", lteFddCellCheck.getVolteFailureAttempt());
								map.put("volteFailureSucc0", lteFddCellCheck.getVolteFailureSucc());
								map.put("volteFailureFailure0", lteFddCellCheck.getVolteFailureFailure());
								map.put("volteFailurepercent0",
										MyUtil.getNumPercent(lteFddCellCheck.getVolteFailureSucc(),
												lteFddCellCheck.getVolteFailureAttempt()));

								map.put("tdLteCxAttempt0", lteFddCellCheck.getTdLteCxAttempt());
								map.put("tdLteCxSucc0", lteFddCellCheck.getTdLteCxSucc());
								map.put("tdLteCxFailure0", lteFddCellCheck.getTdLteCxFailure());
								map.put("tdLteCxpercent0", MyUtil.getNumPercent(lteFddCellCheck.getTdLteCxSucc(),
										lteFddCellCheck.getTdLteCxAttempt()));

								map.put("lteFddCxAttempt0", lteFddCellCheck.getLteFddCxAttempt());
								map.put("lteFddCxSucc0", lteFddCellCheck.getLteFddCxSucc());
								map.put("lteFddCxFailure0", lteFddCellCheck.getLteFddCxFailure());
								map.put("lteFddCxpercent0", MyUtil.getNumPercent(lteFddCellCheck.getLteFddCxSucc(),
										lteFddCellCheck.getLteFddCxAttempt()));

								map.put("tdLteChangeAttempt1", lteFddCellCheck.getTdLteChangeAttempt());
								map.put("tdLteChangeSucc0", lteFddCellCheck.getTdLteChangeSucc());
								map.put("tdLteChangeFailure0", lteFddCellCheck.getTdLteChangeFailure());
								map.put("tdLteChangepercent0", MyUtil.getNumPercent(
										lteFddCellCheck.getTdLteChangeSucc(), lteFddCellCheck.getTdLteChangeAttempt()));

								map.put("lteFddChangeAttempt0", lteFddCellCheck.getLteFddChangeAttempt());
								map.put("lteFddChangeSucc0", lteFddCellCheck.getLteFddChangeSucc());
								map.put("lteFddChangeFailure0", lteFddCellCheck.getLteFddChangeFailure());
								map.put("lteFddChangepercent0",
										MyUtil.getNumPercent(lteFddCellCheck.getLteFddChangeSucc(),
												lteFddCellCheck.getLteFddChangeAttempt()));

								map.put("systemChangeAttempt0", lteFddCellCheck.getSystemChangeAttempt());
								map.put("systemChangeSucc0", lteFddCellCheck.getSystemChangeSucc());
								map.put("systemChangeFailure0", lteFddCellCheck.getSystemChangeFailure());
								map.put("systemChangepercent0",
										MyUtil.getNumPercent(lteFddCellCheck.getSystemChangeSucc(),
												lteFddCellCheck.getSystemChangeAttempt()));

								map.put("csfbReturnAttempt0", lteFddCellCheck.getCsfbReturnAttempt());
								map.put("csfbReturnSucc0", lteFddCellCheck.getCsfbReturnSucc());
								map.put("csfbReturnFailure0", lteFddCellCheck.getCsfbReturnFailure());
								map.put("csfbReturnpercent0", MyUtil.getNumPercent(lteFddCellCheck.getCsfbReturnSucc(),
										lteFddCellCheck.getCsfbReturnAttempt()));

								// 处理小区测试
								if (lteFddParameters != null && lteFddParameters.size() > 0) {
									for (LteFddParameter lteFddParameter : lteFddParameters) {
										if (StringUtils.isNoneBlank(lteFddCellCheck.getCellId())) {
											if (lteFddCellCheck.getCellId().equals(lteFddParameter.getCellId())) {
												map.put("appeci0", lteFddParameter.getEci());
												map.put("appearfcn0", lteFddParameter.getEarfcn());
												map.put("apppci0", lteFddParameter.getPci());
												map.put("apptac0", lteFddParameter.getTac());

												map.put("appftpDownPass0", lteFddParameter.getFtpDownPass());
												map.put("appftpUpPass0", lteFddParameter.getFtpUpPass());

												map.put("volteWirelessAttempt0",
														lteFddParameter.getVolteWirelessAttempt());
												map.put("volteWirelessConnSucc0",
														lteFddParameter.getVolteWirelessConnSucc());
												map.put("volteWirelessConnFailure0",
														lteFddParameter.getVolteWirelessConnFailure());
												map.put("volteWirelessConnpercent0",
														MyUtil.getNumPercent(lteFddParameter.getVolteWirelessConnSucc(),
																lteFddParameter.getVolteWirelessAttempt()));

												map.put("csfbCallSuccAttempt0",
														lteFddParameter.getCsfbCallSuccAttempt());
												map.put("csfbCallSuccSucc0", lteFddParameter.getCsfbCallSuccSucc());
												map.put("csfbCallSuccfailure0",
														lteFddParameter.getCsfbCallSuccfailure());
												map.put("csfbCallSuccpercent0",
														MyUtil.getNumPercent(lteFddParameter.getCsfbCallSuccSucc(),
																lteFddParameter.getCsfbCallSuccAttempt()));

												map.put("csfbPassiveCallSuccAttempt0",
														lteFddParameter.getCsfbPassiveCallSuccAttempt());
												map.put("csfbPassiveCallSuccSucc0",
														lteFddParameter.getCsfbPassiveCallSuccSucc());
												map.put("csfbPassiveCallSuccfailure0",
														lteFddParameter.getCsfbPassiveCallSuccfailure());
												map.put("csfbPassiveCallSuccpercent0",
														MyUtil.getNumPercent(
																lteFddParameter.getCsfbPassiveCallSuccSucc(),
																lteFddParameter.getCsfbPassiveCallSuccAttempt()));

												map.put("csfbVoiceSuccAttempt0",
														lteFddParameter.getCsfbVoiceSuccAttempt());
												map.put("csfbVoiceSuccSucc0", lteFddParameter.getCsfbVoiceSuccSucc());
												map.put("csfbVoiceSuccfailure0",
														lteFddParameter.getCsfbVoiceSuccfailure());
												map.put("csfbVoiceSuccpercent0",
														MyUtil.getNumPercent(lteFddParameter.getCsfbVoiceSuccSucc(),
																lteFddParameter.getCsfbVoiceSuccAttempt()));

												map.put("csfbCallDelay0", lteFddParameter.getCsfbCallDelay());
												map.put("csfbPassiveCallDelay0",
														lteFddParameter.getCsfbPassiveCallDelay());
												map.put("csfbVoiceDelay0", lteFddParameter.getCsfbVoiceDelay());

												map.put("rsrpPic0", "");
												map.put("sinrPic0", "");
												map.put("downRatePic0", "");
												map.put("upRatePic0", "");
												map.put("rsrpWirePic0", "");

												map.put("rsrpPic0", lteFddParameter.getRsrpPic());
												map.put("sinrPic0", lteFddParameter.getSinrPic());
												map.put("downRatePic0", lteFddParameter.getDownRatePic());
												map.put("upRatePic0", lteFddParameter.getUpRatePic());
												map.put("rsrpWirePic0", lteFddParameter.getRsrpWirePic());

												break;
											}
										}
									}
								}
							}
							if (i == 1) {
								map.put("cellName1", lteFddCellCheck.getCellName());
								map.put("upDownRatio1", lteFddCellCheck.getUpDownRatio());
								map.put("specialRatio1", lteFddCellCheck.getSpecialRatio());
								map.put("eci1", lteFddCellCheck.getEci());
								map.put("earfcn1", lteFddCellCheck.getEarfcn());
								map.put("pci1", lteFddCellCheck.getPci());
								map.put("tac1", lteFddCellCheck.getTac());
								map.put("rsPower1", lteFddCellCheck.getTac());
								map.put("pa1", lteFddCellCheck.getPa());
								map.put("pb1", lteFddCellCheck.getPb());
								map.put("antennaHangUp1", lteFddCellCheck.getAntennaHangUp());
								map.put("azimuth1", lteFddCellCheck.getAzimuth());
								map.put("mechanicalLowerInclination1", lteFddCellCheck.getMechanicalLowerInclination());
								map.put("presetElectricDip1", lteFddCellCheck.getPresetElectricDip());
								map.put("mtotalLowerInclination1", lteFddCellCheck.getMtotalLowerInclination());

								// 性能验收测试
								map.put("rrcSuccRateAttempt1", lteFddCellCheck.getRrcSuccRateAttempt());
								map.put("rrcSuccRateSucc1", lteFddCellCheck.getRrcSuccRateSucc());
								map.put("rrcSuccRateFailure1", lteFddCellCheck.getRrcSuccRateFailure());
								map.put("rrcSuccRatepercent1", MyUtil.getNumPercent(
										lteFddCellCheck.getRrcSuccRateAttempt(), lteFddCellCheck.getRrcSuccRateSucc()));

								map.put("erabSuccRateAttempt1", lteFddCellCheck.getErabSuccRateAttempt());
								map.put("erabSuccRateSucc1", lteFddCellCheck.getErabSuccRateSucc());
								map.put("erabSuccRateFailure1", lteFddCellCheck.getErabSuccRateFailure());
								map.put("erabSuccRatepercent1",
										MyUtil.getNumPercent(lteFddCellCheck.getErabSuccRateSucc(),
												lteFddCellCheck.getErabSuccRateAttempt()));

								map.put("accessSuccRateAttempt1", lteFddCellCheck.getAccessSuccRateAttempt());
								map.put("accessSuccRateSucc1", lteFddCellCheck.getAccessSuccRateSucc());
								map.put("accessSuccRateFailure1", lteFddCellCheck.getAccessSuccRateFailure());
								map.put("accessSuccRatepercent1",
										MyUtil.getNumPercent(lteFddCellCheck.getAccessSuccRateSucc(),
												lteFddCellCheck.getAccessSuccRateAttempt()));

								map.put("volteFailureAttempt1", lteFddCellCheck.getVolteFailureAttempt());
								map.put("volteFailureSucc1", lteFddCellCheck.getVolteFailureSucc());
								map.put("volteFailureFailure1", lteFddCellCheck.getVolteFailureFailure());
								map.put("volteFailurepercent1",
										MyUtil.getNumPercent(lteFddCellCheck.getVolteFailureSucc(),
												lteFddCellCheck.getVolteFailureAttempt()));

								map.put("tdLteCxAttempt1", lteFddCellCheck.getTdLteCxAttempt());
								map.put("tdLteCxSucc1", lteFddCellCheck.getTdLteCxSucc());
								map.put("tdLteCxFailure1", lteFddCellCheck.getTdLteCxFailure());
								map.put("tdLteCxpercent1", MyUtil.getNumPercent(lteFddCellCheck.getTdLteCxSucc(),
										lteFddCellCheck.getTdLteCxAttempt()));

								map.put("lteFddCxAttempt1", lteFddCellCheck.getLteFddCxAttempt());
								map.put("lteFddCxSucc1", lteFddCellCheck.getLteFddCxSucc());
								map.put("lteFddCxFailure1", lteFddCellCheck.getLteFddCxFailure());
								map.put("lteFddCxpercent1", MyUtil.getNumPercent(lteFddCellCheck.getLteFddCxSucc(),
										lteFddCellCheck.getLteFddCxAttempt()));

								map.put("tdLteChangeAttempt1", lteFddCellCheck.getTdLteChangeAttempt());
								map.put("tdLteChangeSucc1", lteFddCellCheck.getTdLteChangeSucc());
								map.put("tdLteChangeFailure1", lteFddCellCheck.getTdLteChangeFailure());
								map.put("tdLteChangepercent1", MyUtil.getNumPercent(
										lteFddCellCheck.getTdLteChangeSucc(), lteFddCellCheck.getTdLteChangeAttempt()));

								map.put("lteFddChangeAttempt1", lteFddCellCheck.getLteFddChangeAttempt());
								map.put("lteFddChangeSucc1", lteFddCellCheck.getLteFddChangeSucc());
								map.put("lteFddChangeFailure1", lteFddCellCheck.getLteFddChangeFailure());
								map.put("lteFddChangepercent1",
										MyUtil.getNumPercent(lteFddCellCheck.getLteFddChangeSucc(),
												lteFddCellCheck.getLteFddChangeAttempt()));

								map.put("systemChangeAttempt1", lteFddCellCheck.getSystemChangeAttempt());
								map.put("systemChangeSucc1", lteFddCellCheck.getSystemChangeSucc());
								map.put("systemChangeFailure1", lteFddCellCheck.getSystemChangeFailure());
								map.put("systemChangepercent1",
										MyUtil.getNumPercent(lteFddCellCheck.getSystemChangeSucc(),
												lteFddCellCheck.getSystemChangeAttempt()));

								map.put("csfbReturnAttempt1", lteFddCellCheck.getCsfbReturnAttempt());
								map.put("csfbReturnSucc1", lteFddCellCheck.getCsfbReturnSucc());
								map.put("csfbReturnFailure1", lteFddCellCheck.getCsfbReturnFailure());
								map.put("csfbReturnpercent1", MyUtil.getNumPercent(lteFddCellCheck.getCsfbReturnSucc(),
										lteFddCellCheck.getCsfbReturnAttempt()));

								// 处理小区测试
								if (lteFddParameters != null && lteFddParameters.size() > 0) {
									for (LteFddParameter lteFddParameter : lteFddParameters) {
										if (StringUtils.isNoneBlank(lteFddCellCheck.getCellId())) {
											if (lteFddCellCheck.getCellId().equals(lteFddParameter.getCellId())) {
												map.put("appeci1", lteFddParameter.getEci());
												map.put("appearfcn1", lteFddParameter.getEarfcn());
												map.put("apppci1", lteFddParameter.getPci());
												map.put("apptac1", lteFddParameter.getTac());

												map.put("appftpDownPass1", lteFddParameter.getFtpDownPass());
												map.put("appftpUpPass1", lteFddParameter.getFtpUpPass());

												map.put("volteWirelessAttempt1",
														lteFddParameter.getVolteWirelessAttempt());
												map.put("volteWirelessConnSucc1",
														lteFddParameter.getVolteWirelessConnSucc());
												map.put("volteWirelessConnFailure1",
														lteFddParameter.getVolteWirelessConnFailure());
												map.put("volteWirelessConnpercent1",
														MyUtil.getNumPercent(lteFddParameter.getVolteWirelessConnSucc(),
																lteFddParameter.getVolteWirelessAttempt()));

												map.put("csfbCallSuccAttempt1",
														lteFddParameter.getCsfbCallSuccAttempt());
												map.put("csfbCallSuccSucc1", lteFddParameter.getCsfbCallSuccSucc());
												map.put("csfbCallSuccfailure1",
														lteFddParameter.getCsfbCallSuccfailure());
												map.put("csfbCallSuccpercent1",
														MyUtil.getNumPercent(lteFddParameter.getCsfbCallSuccSucc(),
																lteFddParameter.getCsfbCallSuccAttempt()));

												map.put("csfbPassiveCallSuccAttempt1",
														lteFddParameter.getCsfbPassiveCallSuccAttempt());
												map.put("csfbPassiveCallSuccSucc1",
														lteFddParameter.getCsfbPassiveCallSuccSucc());
												map.put("csfbPassiveCallSuccfailure1",
														lteFddParameter.getCsfbPassiveCallSuccfailure());
												map.put("csfbPassiveCallSuccpercent1",
														MyUtil.getNumPercent(
																lteFddParameter.getCsfbPassiveCallSuccSucc(),
																lteFddParameter.getCsfbPassiveCallSuccAttempt()));

												map.put("csfbVoiceSuccAttempt1",
														lteFddParameter.getCsfbVoiceSuccAttempt());
												map.put("csfbVoiceSuccSucc1", lteFddParameter.getCsfbVoiceSuccSucc());
												map.put("csfbVoiceSuccfailure1",
														lteFddParameter.getCsfbVoiceSuccfailure());
												map.put("csfbVoiceSuccpercent1",
														MyUtil.getNumPercent(lteFddParameter.getCsfbVoiceSuccSucc(),
																lteFddParameter.getCsfbVoiceSuccAttempt()));

												map.put("csfbCallDelay1", lteFddParameter.getCsfbCallDelay());
												map.put("csfbPassiveCallDelay1",
														lteFddParameter.getCsfbPassiveCallDelay());
												map.put("csfbVoiceDelay1", lteFddParameter.getCsfbVoiceDelay());

												map.put("rsrpPic1", lteFddParameter.getRsrpPic());
												map.put("sinrPic1", lteFddParameter.getSinrPic());
												map.put("downRatePic1", lteFddParameter.getDownRatePic());
												map.put("upRatePic1", lteFddParameter.getUpRatePic());
												map.put("rsrpWirePic1", lteFddParameter.getRsrpWirePic());
												break;
											}
										}
									}
								}
							}
							if (i == 2) {
								map.put("cellName2", lteFddCellCheck.getCellName());
								map.put("upDownRatio2", lteFddCellCheck.getUpDownRatio());
								map.put("specialRatio2", lteFddCellCheck.getSpecialRatio());
								map.put("eci2", lteFddCellCheck.getEci());
								map.put("earfcn2", lteFddCellCheck.getEarfcn());
								map.put("pci2", lteFddCellCheck.getPci());
								map.put("tac2", lteFddCellCheck.getTac());
								map.put("rsPower2", lteFddCellCheck.getTac());
								map.put("pa2", lteFddCellCheck.getPa());
								map.put("pb2", lteFddCellCheck.getPb());
								map.put("antennaHangUp2", lteFddCellCheck.getAntennaHangUp());
								map.put("azimuth2", lteFddCellCheck.getAzimuth());
								map.put("mechanicalLowerInclination2", lteFddCellCheck.getMechanicalLowerInclination());
								map.put("presetElectricDip2", lteFddCellCheck.getPresetElectricDip());
								map.put("mtotalLowerInclination2", lteFddCellCheck.getMtotalLowerInclination());

								// 性能验收测试
								map.put("rrcSuccRateAttempt2", lteFddCellCheck.getRrcSuccRateAttempt());
								map.put("rrcSuccRateSucc2", lteFddCellCheck.getRrcSuccRateSucc());
								map.put("rrcSuccRateFailure2", lteFddCellCheck.getRrcSuccRateFailure());
								map.put("rrcSuccRatepercent2", MyUtil.getNumPercent(
										lteFddCellCheck.getRrcSuccRateAttempt(), lteFddCellCheck.getRrcSuccRateSucc()));

								map.put("erabSuccRateAttempt2", lteFddCellCheck.getErabSuccRateAttempt());
								map.put("erabSuccRateSucc2", lteFddCellCheck.getErabSuccRateSucc());
								map.put("erabSuccRateFailure2", lteFddCellCheck.getErabSuccRateFailure());
								map.put("erabSuccRatepercent2",
										MyUtil.getNumPercent(lteFddCellCheck.getErabSuccRateSucc(),
												lteFddCellCheck.getErabSuccRateAttempt()));

								map.put("accessSuccRateAttempt2", lteFddCellCheck.getAccessSuccRateAttempt());
								map.put("accessSuccRateSucc2", lteFddCellCheck.getAccessSuccRateSucc());
								map.put("accessSuccRateFailure2", lteFddCellCheck.getAccessSuccRateFailure());
								map.put("accessSuccRatepercent2",
										MyUtil.getNumPercent(lteFddCellCheck.getAccessSuccRateSucc(),
												lteFddCellCheck.getAccessSuccRateAttempt()));

								map.put("volteFailureAttempt2", lteFddCellCheck.getVolteFailureAttempt());
								map.put("volteFailureSucc2", lteFddCellCheck.getVolteFailureSucc());
								map.put("volteFailureFailure2", lteFddCellCheck.getVolteFailureFailure());
								map.put("volteFailurepercent2",
										MyUtil.getNumPercent(lteFddCellCheck.getVolteFailureSucc(),
												lteFddCellCheck.getVolteFailureAttempt()));

								map.put("tdLteCxAttempt2", lteFddCellCheck.getTdLteCxAttempt());
								map.put("tdLteCxSucc2", lteFddCellCheck.getTdLteCxSucc());
								map.put("tdLteCxFailure2", lteFddCellCheck.getTdLteCxFailure());
								map.put("tdLteCxpercent2", MyUtil.getNumPercent(lteFddCellCheck.getTdLteCxSucc(),
										lteFddCellCheck.getTdLteCxAttempt()));

								map.put("lteFddCxAttempt2", lteFddCellCheck.getLteFddCxAttempt());
								map.put("lteFddCxSucc2", lteFddCellCheck.getLteFddCxSucc());
								map.put("lteFddCxFailure2", lteFddCellCheck.getLteFddCxFailure());
								map.put("lteFddCxpercent2", MyUtil.getNumPercent(lteFddCellCheck.getLteFddCxSucc(),
										lteFddCellCheck.getLteFddCxAttempt()));

								map.put("tdLteChangeAttempt2", lteFddCellCheck.getTdLteChangeAttempt());
								map.put("tdLteChangeSucc2", lteFddCellCheck.getTdLteChangeSucc());
								map.put("tdLteChangeFailure2", lteFddCellCheck.getTdLteChangeFailure());
								map.put("tdLteChangepercent2", MyUtil.getNumPercent(
										lteFddCellCheck.getTdLteChangeSucc(), lteFddCellCheck.getTdLteChangeAttempt()));

								map.put("lteFddChangeAttemp2", lteFddCellCheck.getLteFddChangeAttempt());
								map.put("lteFddChangeSucc2", lteFddCellCheck.getLteFddChangeSucc());
								map.put("lteFddChangeFailure2", lteFddCellCheck.getLteFddChangeFailure());
								map.put("lteFddChangepercent2",
										MyUtil.getNumPercent(lteFddCellCheck.getLteFddChangeSucc(),
												lteFddCellCheck.getLteFddChangeAttempt()));

								map.put("systemChangeAttempt2", lteFddCellCheck.getSystemChangeAttempt());
								map.put("systemChangeSucc2", lteFddCellCheck.getSystemChangeSucc());
								map.put("systemChangeFailure2", lteFddCellCheck.getSystemChangeFailure());
								map.put("systemChangepercent2",
										MyUtil.getNumPercent(lteFddCellCheck.getSystemChangeSucc(),
												lteFddCellCheck.getSystemChangeAttempt()));

								map.put("csfbReturnAttempt2", lteFddCellCheck.getCsfbReturnAttempt());
								map.put("csfbReturnSucc2", lteFddCellCheck.getCsfbReturnSucc());
								map.put("csfbReturnFailure2", lteFddCellCheck.getCsfbReturnFailure());
								map.put("csfbReturnpercent2", MyUtil.getNumPercent(lteFddCellCheck.getCsfbReturnSucc(),
										lteFddCellCheck.getCsfbReturnAttempt()));

								// 处理小区测试
								if (lteFddParameters != null && lteFddParameters.size() > 0) {
									for (LteFddParameter lteFddParameter : lteFddParameters) {
										if (StringUtils.isNoneBlank(lteFddCellCheck.getCellId())) {
											if (lteFddCellCheck.getCellId().equals(lteFddParameter.getCellId())) {
												map.put("appeci2", lteFddParameter.getEci());
												map.put("appearfcn2", lteFddParameter.getEarfcn());
												map.put("apppci2", lteFddParameter.getPci());
												map.put("apptac2", lteFddParameter.getTac());

												map.put("appftpDownPass2", lteFddParameter.getFtpDownPass());
												map.put("appftpUpPass2", lteFddParameter.getFtpUpPass());

												map.put("volteWirelessAttempt2",
														lteFddParameter.getVolteWirelessAttempt());
												map.put("volteWirelessConnSucc2",
														lteFddParameter.getVolteWirelessConnSucc());
												map.put("volteWirelessConnFailure2",
														lteFddParameter.getVolteWirelessConnFailure());
												map.put("volteWirelessConnpercent2",
														MyUtil.getNumPercent(lteFddParameter.getVolteWirelessConnSucc(),
																lteFddParameter.getVolteWirelessAttempt()));

												map.put("csfbCallSuccAttempt2",
														lteFddParameter.getCsfbCallSuccAttempt());
												map.put("csfbCallSuccSucc2", lteFddParameter.getCsfbCallSuccSucc());
												map.put("csfbCallSuccfailure2",
														lteFddParameter.getCsfbCallSuccfailure());
												map.put("csfbCallSuccpercent2",
														MyUtil.getNumPercent(lteFddParameter.getCsfbCallSuccSucc(),
																lteFddParameter.getCsfbCallSuccAttempt()));

												map.put("csfbPassiveCallSuccAttempt2",
														lteFddParameter.getCsfbPassiveCallSuccAttempt());
												map.put("csfbPassiveCallSuccSucc2",
														lteFddParameter.getCsfbPassiveCallSuccSucc());
												map.put("csfbPassiveCallSuccfailure2",
														lteFddParameter.getCsfbPassiveCallSuccfailure());
												map.put("csfbPassiveCallSuccpercent2",
														MyUtil.getNumPercent(
																lteFddParameter.getCsfbPassiveCallSuccSucc(),
																lteFddParameter.getCsfbPassiveCallSuccAttempt()));

												map.put("csfbVoiceSuccAttempt2",
														lteFddParameter.getCsfbVoiceSuccAttempt());
												map.put("csfbVoiceSuccSucc2", lteFddParameter.getCsfbVoiceSuccSucc());
												map.put("csfbVoiceSuccfailure2",
														lteFddParameter.getCsfbVoiceSuccfailure());
												map.put("csfbVoiceSuccpercent2",
														MyUtil.getNumPercent(lteFddParameter.getCsfbVoiceSuccSucc(),
																lteFddParameter.getCsfbVoiceSuccAttempt()));

												map.put("csfbCallDelay2", lteFddParameter.getCsfbCallDelay());
												map.put("csfbPassiveCallDelay2",
														lteFddParameter.getCsfbPassiveCallDelay());
												map.put("csfbVoiceDelay2", lteFddParameter.getCsfbVoiceDelay());

												map.put("rsrpPic2", lteFddParameter.getRsrpPic());
												map.put("sinrPic2", lteFddParameter.getSinrPic());
												map.put("downRatePic2", lteFddParameter.getDownRatePic());
												map.put("upRatePic2", lteFddParameter.getUpRatePic());
												map.put("rsrpWirePic2", lteFddParameter.getRsrpWirePic());
												break;
											}
										}
									}
								}
							}
						}
					}
				}

			} else {
				map.put("title", "未选中要导出的项目");
			}

		} catch (Exception e) {
			e.printStackTrace();
			map.put("title", "出错误了");
		}
		// 模板的路径
		File file = null;
		file = new File(lteExcel);
		lteFddPlanService.exportPlanDoc(file.getAbsolutePath(), lteFddPlanInfo, map, response, session);
	}
}

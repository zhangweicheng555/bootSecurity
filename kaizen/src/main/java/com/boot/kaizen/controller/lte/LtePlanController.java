package com.boot.kaizen.controller.lte;

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
import com.boot.kaizen.model.LteCellCheck;
import com.boot.kaizen.model.LteGcParameter;
import com.boot.kaizen.model.LteLoadTest;
import com.boot.kaizen.model.LtePlan;
import com.boot.kaizen.model.LtePlanInfo;
import com.boot.kaizen.model.LteStationCheck;
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
@Controller
@RequestMapping("/plan")
public class LtePlanController {

	@Autowired
	private ILtePlanService ltePlanService;
	@Value("${files.lteExcel}")
	private String lteExcel;
	@Value("${files.lteImage}")
	private String lteImage;

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
	 * @Description: 根据当前的登陆用户查询该项目下的所有用户
	 * @author weichengz
	 * @date 2018年11月18日 上午8:16:45
	 */
	@ResponseBody
	@RequestMapping(value = "/queryUserByProjId", method = RequestMethod.POST)
	public JsonMsgUtil queryUserByProjId() {
		LoginUser user = UserUtil.getLoginUser();
		Long projId = null;
		if (Constant.SYSTEM_ID_PROJECT != projId) {
			projId = user.getProjId();
		}
		return ltePlanService.queryUserByProjId(projId);
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

	/**
	 * 
	 * @Description: 导出报告
	 * @author weichengz
	 * @date 2018年11月17日 上午8:55:44
	 */

	@RequestMapping(value = "/exportPlanDoc", method = RequestMethod.POST)
	public void exportPlanDoc(@RequestParam("id") Long id, HttpServletResponse response, HttpSession session) {
		Map<String, String> map = new HashMap<>();// 存储导出excel的数据信息
		map.put("title", "导出出错误");

		LtePlanInfo ltePlanInfo = null;
		try {
			if (id != null) {
				map.put("mBaseStationName", "");// 站名
				map.put("mBaseStationType", "");// 类型
				map.put("mENodeBID", "");// 站号
				map.put("mLongitude", "");// 经度
				map.put("mLatitude", "");// 纬度
				map.put("mTac", "");// tac
				
				map.put("mENodeBIDs", "");// 实测站号
				map.put("mLongitudes", "");// 实测经度
				map.put("mLatitudes", "");// 实测纬度
				map.put("mTacs", "");// 实测tac

				map.put("mAntennaHangUp1", "");// 天线挂高
				map.put("mAzimuth1", "");// 方位角
				map.put("mMechanicalLowerInclination1", "");// 机械下倾角
				map.put("mPresetElectricDip1", "");// 预置电下倾
				map.put("mtotalLowerInclination1", "");// 总下倾角
				map.put("mFrequency1", "");// 频点
				map.put("mPCI1", "");// PCI
				map.put("mCellID1", "");// 小区号

				map.put("mAntennaHangUp2", "");// 天线挂高
				map.put("mAzimuth2", "");// 方位角
				map.put("mMechanicalLowerInclination2", "");// 机械下倾角
				map.put("mPresetElectricDip2", "");// 预置电下倾
				map.put("mtotalLowerInclination2", "");// 总下倾角
				map.put("mFrequency2", "");// 频点
				map.put("mPCI2", "");// PCI
				map.put("mCellID2", "");// 小区号

				map.put("mAntennaHangUp3", "");// 天线挂高
				map.put("mAzimuth3", "");// 方位角
				map.put("mMechanicalLowerInclination3", "");// 机械下倾角
				map.put("mPresetElectricDip3", "");// 预置电下倾
				map.put("mtotalLowerInclination3", "");// 总下倾角
				map.put("mFrequency3", "");// 频点
				map.put("mPCI3", "");// PCI
				map.put("mCellID3", "");// 小区号

				map.put("testPerson1", "");// 工程负责人
				map.put("testPerson2", "");// 工程负责人电话
				map.put("testPersonPhone1", "");
				map.put("testPersonPhone2", "");

				map.put("csfbTestCount1", "");
				map.put("csfbFallSuccessCount1", "");
				map.put("csfbFallFailCount1", "");
				map.put("csfbFallRate1", "");

				map.put("goodFtpDownAverageRsrp1", "");
				map.put("generalFtpDownAverageRsrp1", "");
				map.put("poorFtpDownAverageRsrp1", "");

				map.put("goodFtpDownAverageSinr1", "");
				map.put("generalFtpDownAverageSinr1", "");
				map.put("poorFtpDownAverageSinr1", "");

				map.put("goodFtpDownRate1", "");
				map.put("generalFtpDownRate1", "");
				map.put("poorFtpDownRate1", "");

				map.put("goodFtpUpAverageRsrp1", "");
				map.put("generalFtpUpAverageRsrp1", "");
				map.put("poorFtpUpAverageRsrp1", "");

				map.put("goodFtpUpAverageSinr1", "");
				map.put("generalFtpUpAverageSinr1", "");
				map.put("poorFtpUpAverageSinr1", "");

				map.put("goodFtpUpRate1", "");
				map.put("generalFtpUpRate1", "");
				map.put("poorFtpUpRate1", "");

				map.put("csfbTestCount2", "");
				map.put("csfbFallSuccessCount2", "");
				map.put("csfbFallFailCount2", "");
				map.put("csfbFallRate2", "");

				map.put("goodFtpDownAverageRsrp2", "");
				map.put("generalFtpDownAverageRsrp2", "");
				map.put("poorFtpDownAverageRsrp2", "");

				map.put("goodFtpDownAverageSinr2", "");
				map.put("generalFtpDownAverageSinr2", "");
				map.put("poorFtpDownAverageSinr2", "");

				map.put("goodFtpDownRate2", "");
				map.put("generalFtpDownRate2", "");
				map.put("poorFtpDownRate2", "");

				map.put("goodFtpUpAverageRsrp2", "");
				map.put("generalFtpUpAverageRsrp2", "");
				map.put("poorFtpUpAverageRsrp2", "");

				map.put("goodFtpUpAverageSinr2", "");
				map.put("generalFtpUpAverageSinr2", "");
				map.put("poorFtpUpAverageSinr2", "");

				map.put("goodFtpUpRate2", "");
				map.put("generalFtpUpRate2", "");
				map.put("poorFtpUpRate2", "");

				map.put("csfbTestCount3", "");
				map.put("csfbFallSuccessCount3", "");
				map.put("csfbFallFailCount3", "");
				map.put("csfbFallRate3", "");

				map.put("goodFtpDownAverageRsrp3", "");
				map.put("generalFtpDownAverageRsrp3", "");
				map.put("poorFtpDownAverageRsrp3", "");

				map.put("goodFtpDownAverageSinr3", "");
				map.put("generalFtpDownAverageSinr3", "");
				map.put("poorFtpDownAverageSinr3", "");

				map.put("goodFtpDownRate3", "");
				map.put("generalFtpDownRate3", "");
				map.put("poorFtpDownRate3", "");

				map.put("goodFtpUpAverageRsrp3", "");
				map.put("generalFtpUpAverageRsrp3", "");
				map.put("poorFtpUpAverageRsrp3", "");

				map.put("goodFtpUpAverageSinr3", "");
				map.put("generalFtpUpAverageSinr3", "");
				map.put("poorFtpUpAverageSinr3", "");

				map.put("goodFtpUpRate3", "");
				map.put("generalFtpUpRate3", "");
				map.put("poorFtpUpRate3", "");

				map.put("communityName1", "");
				map.put("rsrpFtpUpImage1", "");
				map.put("sinrFtpUpImage1", "");
				map.put("upFtpRateImage1", "");
				map.put("rsrpFtpDownImage1", "");
				map.put("sinrFtpDownImage1", "");
				map.put("downFtpRateImage1", "");
				map.put("sinrThresholdImage1", "");
				map.put("rsrpThresholdImage1", "");
				map.put("ftpRateThresholdImage1", "");
				map.put("roadLogFile1", "");

				map.put("communityName2", "");
				map.put("rsrpFtpUpImage2", "");
				map.put("sinrFtpUpImage2", "");
				map.put("upFtpRateImage2", "");
				map.put("rsrpFtpDownImage2", "");
				map.put("sinrFtpDownImage2", "");
				map.put("downFtpRateImage2", "");
				map.put("sinrThresholdImage2", "");
				map.put("rsrpThresholdImage2", "");
				map.put("ftpRateThresholdImage2", "");
				map.put("roadLogFile2", "");

				map.put("communityName3", "");
				map.put("rsrpFtpUpImage3", "");
				map.put("sinrFtpUpImage3", "");
				map.put("upFtpRateImage3", "");
				map.put("rsrpFtpDownImage3", "");
				map.put("sinrFtpDownImage3", "");
				map.put("downFtpRateImage3", "");
				map.put("sinrThresholdImage3", "");
				map.put("rsrpThresholdImage3", "");
				map.put("ftpRateThresholdImage3", "");
				map.put("roadLogFile3", "");

				ltePlanInfo = ltePlanService.queryLtePlanInfoByEnobId(id);
				if (ltePlanInfo != null) {
					map.put("mENodeBID", ltePlanInfo.getmENodeBID());
					map.put("mBaseStationName", ltePlanInfo.getmBaseStationName());
					map.put("mBaseStationType", ltePlanInfo.getmBaseStationType());
					map.put("mLongitude", ltePlanInfo.getmLongitude());
					map.put("mLatitude", ltePlanInfo.getmLatitude());
					map.put("mTac", ltePlanInfo.getmTac());

					map.put("testPerson1", ltePlanInfo.getTestPerson());
					map.put("testPersonPhone1", ltePlanInfo.getTestPersonPhone());
					map.put("testPerson2", ltePlanInfo.getTestPerson());
					map.put("testPersonPhone2", ltePlanInfo.getTestPersonPhone());

					// 宏站验收记录单
					List<LteGcParameter> gcParameters = ltePlanInfo.getGcParameters();
					if (gcParameters != null) {
						int i = 1;
						for (LteGcParameter lteGcParameter : gcParameters) {
							map.put("mAntennaHangUp" + i, lteGcParameter.getmAntennaHangUp());
							map.put("mAzimuth" + i, lteGcParameter.getmAzimuth());
							map.put("mMechanicalLowerInclination" + i, lteGcParameter.getmMechanicalLowerInclination());
							map.put("mPresetElectricDip" + i, lteGcParameter.getmPresetElectricDip());
							map.put("mtotalLowerInclination" + i, lteGcParameter.getMtotalLowerInclination());
							map.put("mFrequency" + i, lteGcParameter.getmFrequency());
							map.put("mPCI" + i, lteGcParameter.getmPCI());
							map.put("mCellID" + i, lteGcParameter.getmCellID());
							i++;
						}
					}
					// 性能验收记录表
					List<LteCellCheck> cellChecks = ltePlanInfo.getCellChecks();
					if (cellChecks != null) {
						int j = 1;
						for (LteCellCheck lteCellCheck : cellChecks) {
							String count = lteCellCheck.getCsfbTestCount();
							map.put("csfbTestCount" + j, count);
							String successCount = lteCellCheck.getCsfbFallSuccessCount();
							map.put("csfbFallSuccessCount" + j, successCount);
							Long failCount = 0L;
							try {
								if (StringUtils.isNoneBlank(count) && StringUtils.isNoneBlank(successCount)) {
									failCount = Long.valueOf(count) - Long.valueOf(successCount);
								}
							} catch (Exception e) {
							}
							map.put("csfbFallFailCount" + j, String.valueOf(failCount));
							map.put("csfbFallRate" + j, lteCellCheck.getCsfbFallRate());

							map.put("goodFtpDownAverageRsrp" + j, lteCellCheck.getGoodFtpDownAverageRsrp());
							map.put("generalFtpDownAverageRsrp" + j, lteCellCheck.getGeneralFtpDownAverageRsrp());
							map.put("poorFtpDownAverageRsrp" + j, lteCellCheck.getPoorFtpDownAverageRsrp());

							map.put("goodFtpDownAverageSinr" + j, lteCellCheck.getGoodFtpDownAverageSinr());
							map.put("generalFtpDownAverageSinr" + j, lteCellCheck.getGeneralFtpDownAverageSinr());
							map.put("poorFtpDownAverageSinr" + j, lteCellCheck.getPoorFtpDownAverageSinr());

							map.put("goodFtpDownRate" + j, lteCellCheck.getGoodFtpDownRate());
							map.put("generalFtpDownRate" + j, lteCellCheck.getGeneralFtpDownRate());
							map.put("poorFtpDownRate" + j, lteCellCheck.getPoorFtpDownRate());

							map.put("goodFtpUpAverageRsrp" + j, lteCellCheck.getGoodFtpUpAverageRsrp());
							map.put("generalFtpUpAverageRsrp" + j, lteCellCheck.getGeneralFtpUpAverageRsrp());
							map.put("poorFtpUpAverageRsrp" + j, lteCellCheck.getPoorFtpUpAverageRsrp());

							map.put("goodFtpUpAverageSinr" + j, lteCellCheck.getGoodFtpUpAverageSinr());
							map.put("generalFtpUpAverageSinr" + j, lteCellCheck.getGeneralFtpUpAverageSinr());
							map.put("poorFtpUpAverageSinr" + j, lteCellCheck.getPoorFtpUpAverageSinr());

							map.put("goodFtpUpRate" + j, lteCellCheck.getGoodFtpUpRate());
							map.put("generalFtpUpRate" + j, lteCellCheck.getGeneralFtpUpRate());
							map.put("poorFtpUpRate" + j, lteCellCheck.getPoorFtpUpRate());

							j++;
						}
					}
					// 路测信息
					List<LteLoadTest> loadTests = ltePlanInfo.getLoadTests();
					if (loadTests != null) {
						int w = 1;
						for (LteLoadTest lteLoadTest : loadTests) {
							map.put("communityName" + w, lteLoadTest.getCommunityName());
							map.put("rsrpFtpUpImage" + w, lteLoadTest.getRsrpFtpUpImage());
							map.put("sinrFtpUpImage" + w, lteLoadTest.getSinrFtpUpImage());
							map.put("upFtpRateImage" + w, lteLoadTest.getUpFtpRateImage());
							map.put("rsrpFtpDownImage" + w, lteLoadTest.getRsrpFtpDownImage());
							map.put("sinrFtpDownImage" + w, lteLoadTest.getSinrFtpDownImage());
							map.put("downFtpRateImage" + w, lteLoadTest.getDownFtpRateImage());
							map.put("sinrThresholdImage" + w, lteLoadTest.getSinrThresholdImage());
							map.put("rsrpThresholdImage" + w, lteLoadTest.getRsrpThresholdImage());
							//map.put("ftpRateThresholdImage" + w, lteLoadTest.getFtpRateThresholdImage());
							map.put("roadLogFile" + w, lteLoadTest.getRoadLogFile());
							w++;
						}
					}
					
					//基站核查
					List<LteStationCheck> stationChecks = ltePlanInfo.getStationChecks();
					if (stationChecks != null && stationChecks.size()>0) {
						LteStationCheck lteStationCheck=stationChecks.get(0);
						map.put("mENodeBIDs", lteStationCheck.geteNodeBID());// 实测站号
						map.put("mLongitudes", lteStationCheck.getLongitude());// 实测经度
						map.put("mLatitudes", lteStationCheck.getLatitude());// 实测纬度
						map.put("mTacs", lteStationCheck.getTac());// 实测tac
					}
				}
			} else {
				map.put("title", "未选中要导出的项目");
			}

		} catch (Exception e) {
			map.put("title", "出错误了");
		}
		// 模板的路径
		File file = null;
		file = new File(lteExcel);
		ltePlanService.exportPlanDoc(file.getAbsolutePath(), ltePlanInfo, map, response, session);
	}

}

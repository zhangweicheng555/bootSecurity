package com.boot.kaizen.service.lteFdd;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.dao.lteFdd.LteFddPlanMapper;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lte.LtePlan;
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.model.lteFddModel.LteFddPlanInfo;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyDateUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteFddPlanServiceImpl implements ILteFddPlanService {

	@Autowired
	private LteFddPlanMapper lteFddPlanMapper;
	@Autowired
	private ILteFddCellService lteFddCellService;
	@Autowired
	private ILteFddParameterService lteFddParameterService;
	@Autowired
	private ILteFddStationService lteFddStationService;
	@Value("${files.lteImage}")
	private String lteImage;

	@Override
	public int insertSelective(LteFddPlan record) {
		return lteFddPlanMapper.insertSelective(record);
	}

	@Override
	public LteFddPlan selectByPrimaryKey(String id) {
		return lteFddPlanMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<LteFddPlan> query(Map<String, Object> map) {
		return lteFddPlanMapper.query(map);
	}

	@Override
	public JsonMsgUtil edit(LteFddPlan lteFddPlan, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteFddPlan.getId())) {// edit
			lteFddPlan.setUpdateTime(new Date());
			lteFddPlanMapper.updateByPrimaryKeySelective(lteFddPlan);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());
			Integer status = LteFddPlan.StatueType.NO_CHECK.getCode();

			lteFddPlan.setId(id);
			lteFddPlan.setProjId(projId);
			lteFddPlan.setCreateTime(createTime);
			lteFddPlan.setCreateAt(createAt);
			lteFddPlan.setStatus(status);
			insertSelective(lteFddPlan);
		}
		return new JsonMsgUtil(true, "修改成功", lteFddPlan);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddPlan lteFddPlan = selectByPrimaryKey(id);
		if (lteFddPlan == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", lteFddPlan);
	}

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isNoneBlank(ids)) {
			String[] idsArray = ids.trim().split(",");
			Integer deleteNum = lteFddPlanMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【" + deleteNum + "】条数据", null);
		}
		return j;
	}

	@Override
	public List<Map<String, Object>> queryPlanList(Long userId, Long projId, String jzType) {
		Map<String, Object> map = new HashMap<>();
		map.put("projId", projId);
		map.put("dealPersonId", userId);
		map.put("beginTime", MyDateUtil.getNowDate("yyyy-MM-dd"));
		map.put("endTime", MyDateUtil.getNowDate("yyyy-MM-dd"));
		map.put("jzType", jzType);
		List<LteFddPlan> lteFddPlans = lteFddPlanMapper.query(map);
		List<Map<String, Object>> list = new ArrayList<>();
		if (lteFddPlans != null && lteFddPlans.size() > 0) {
			for (LteFddPlan lteFddPlan : lteFddPlans) {
				Map<String, Object> model = new HashMap<>();
				model.put("planId", lteFddPlan.getId());
				model.put("testDate", lteFddPlan.getTestTime());
				list.add(model);
			}
		}
		return list;
	}

	@Override
	public List<BaseStationBean> queryStationList(Long userId, Long projId, String testDate, String jzType) {
		return lteFddPlanMapper.queryStationList(userId, projId, testDate, jzType);
	}

	@Override
	public JsonMsgUtil queryCheckInfoById(String id, String jzType) {
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddPlanInfo lteFddPlanInfo = findLteFddPlanInfo(id, jzType);
		return new JsonMsgUtil(true, "查询成功", lteFddPlanInfo);
	}

	public LteFddPlanInfo findLteFddPlanInfo(String id, String jzType) {
		LteFddPlanInfo lteFddPlanInfo = new LteFddPlanInfo();
		LteFddPlan lteFddPlan = selectByPrimaryKey(id);
		if (lteFddPlan == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		BeanUtils.copyProperties(lteFddPlan, lteFddPlanInfo);

		Map<String, Object> map = new HashMap<>();
		map.put("mENodeBID", lteFddPlanInfo.getmENodeBID());
		map.put("jzType", jzType);
		map.put("testTime", lteFddPlanInfo.getTestTime());
		map.put("projId", lteFddPlanInfo.getProjId());
		List<LteFddCellCheck> lteFddCellChecks = lteFddCellService.query(map);
		if (lteFddCellChecks != null && lteFddCellChecks.size() > 0) {
			lteFddPlanInfo.setLteFddCellChecks(lteFddCellChecks);
		}

		Map<String, Object> map1 = new HashMap<>();
		map1.put("eNodeBID", lteFddPlanInfo.getmENodeBID());
		map1.put("testDate", lteFddPlanInfo.getTestTime());
		map1.put("jzType", jzType);
		map1.put("projId", lteFddPlanInfo.getProjId());

		List<LteFddParameter> lteFddParameters = lteFddParameterService.query(map1);
		if (lteFddParameters != null && lteFddParameters.size() > 0) {
			lteFddPlanInfo.setLteFddParameters(lteFddParameters);
		}

		List<LteFddStation> lteFddStations = lteFddStationService.query(map1);
		if (lteFddStations != null && lteFddStations.size() > 0) {
			lteFddPlanInfo.setLteFddStations(lteFddStations);
		}
		return lteFddPlanInfo;
	}

	@Override
	public void exportPlanDoc(String absolutePath, LteFddPlanInfo lteFddPlanInfo, Map<String, String> map,
			HttpServletResponse response, HttpSession session) {
		try {
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(new File(absolutePath)));

			if (lteFddPlanInfo != null) {
				HSSFCell cell;
				HSSFRow row;

				HSSFSheet sheetOne = workbook.getSheetAt(0);
				HSSFPatriarch patriarchOne = sheetOne.createDrawingPatriarch();
				String mENodeBID = map.get("mENodeBID");
				String mBaseStationName = map.get("mBaseStationName");
				String mBaseStationType = map.get("mBaseStationType");

				row = sheetOne.getRow(2);
				cell = row.getCell(5);
				cell.setCellValue(mBaseStationName);
				cell = row.getCell(25);
				cell.setCellValue(map.get("testTime"));

				row = sheetOne.getRow(4);
				cell = row.getCell(5);
				cell.setCellValue(map.get("mENodeBID"));
				cell = row.getCell(25);
				cell.setCellValue(map.get("districtCountry"));

				row = sheetOne.getRow(6);
				cell = row.getCell(5);
				cell.setCellValue(map.get("address"));
				cell = row.getCell(25);
				cell.setCellValue(map.get("mBaseStationType"));

				row = sheetOne.getRow(8);
				cell = row.getCell(5);
				cell.setCellValue(map.get("deviceType"));
				cell = row.getCell(25);
				cell.setCellValue(map.get("videoFrequency"));

				row = sheetOne.getRow(12);
				cell = row.getCell(7);
				cell.setCellValue(map.get("mLongitude"));
				cell = row.getCell(13);
				cell.setCellValue(map.get("mLongitude"));

				row = sheetOne.getRow(13);
				cell = row.getCell(7);
				cell.setCellValue(map.get("mLatitude"));
				cell = row.getCell(13);
				cell.setCellValue(map.get("mLatitude"));

				row = sheetOne.getRow(14);
				cell = row.getCell(7);
				cell.setCellValue(map.get("broadBand"));
				cell = row.getCell(13);
				cell.setCellValue(map.get("broadBand"));

				row = sheetOne.getRow(15);
				cell = row.getCell(7);
				cell.setCellValue(map.get("ipConfig"));
				cell = row.getCell(13);
				cell.setCellValue(map.get("ipConfig"));

				row = sheetOne.getRow(16);
				cell = row.getCell(7);
				cell.setCellValue(map.get("cellName0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("cellName1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("cellName2"));

				row = sheetOne.getRow(18);
				cell = row.getCell(7);
				cell.setCellValue(map.get("upDownRatio0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("upDownRatio0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("upDownRatio1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("upDownRatio1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("upDownRatio2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("upDownRatio2"));

				row = sheetOne.getRow(19);
				cell = row.getCell(7);
				cell.setCellValue(map.get("specialRatio0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("specialRatio0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("specialRatio1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("specialRatio1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("specialRatio2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("specialRatio2"));

				String eci0 = map.get("eci0");
				String appeci0 = map.get("appeci0");
				String eci0Is = getIsoK(eci0, appeci0);
				String eci1 = map.get("eci1");
				String appeci1 = map.get("appeci1");
				String eci1Is = getIsoK(eci1, appeci1);
				String eci2 = map.get("eci2");
				String appeci2 = map.get("appeci2");
				String eci2Is = getIsoK(eci2, appeci2);

				row = sheetOne.getRow(20);
				cell = row.getCell(7);
				cell.setCellValue(eci0);
				cell = row.getCell(10);
				cell.setCellValue(appeci0);
				cell = row.getCell(15);
				cell.setCellValue(eci1);
				cell = row.getCell(18);
				cell.setCellValue(appeci1);
				cell = row.getCell(23);
				cell.setCellValue(eci2);
				cell = row.getCell(26);
				cell.setCellValue(appeci2);
				cell = row.getCell(13);
				cell.setCellValue(eci0Is);
				cell = row.getCell(21);
				cell.setCellValue(eci1Is);
				cell = row.getCell(29);
				cell.setCellValue(eci2Is);

				row = sheetOne.getRow(21);
				String earfcn0Is = getIsoK(map.get("earfcn0"), map.get("appearfcn0"));
				String earfcn1Is = getIsoK(map.get("earfcn1"), map.get("appearfcn1"));
				String earfcn2Is = getIsoK(map.get("earfcn2"), map.get("appearfcn2"));
				cell = row.getCell(13);
				cell.setCellValue(earfcn0Is);
				cell = row.getCell(21);
				cell.setCellValue(earfcn1Is);
				cell = row.getCell(29);
				cell.setCellValue(earfcn2Is);

				cell = row.getCell(7);
				cell.setCellValue(map.get("earfcn0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("appearfcn0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("earfcn1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("appearfcn1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("earfcn2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("appearfcn2"));

				//
				row = sheetOne.getRow(22);
				String pci0Is = getIsoK(map.get("pci0"), map.get("apppci0"));
				String pci1Is = getIsoK(map.get("pci1"), map.get("apppci1"));
				String pci2Is = getIsoK(map.get("pci2"), map.get("apppci2"));
				cell = row.getCell(13);
				cell.setCellValue(pci0Is);
				cell = row.getCell(21);
				cell.setCellValue(pci1Is);
				cell = row.getCell(29);
				cell.setCellValue(pci2Is);

				cell = row.getCell(7);
				cell.setCellValue(map.get("pci0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("apppci0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("pci1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("apppci1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("pci2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("apppci2"));

				row = sheetOne.getRow(23);
				String tac0Is = getIsoK(map.get("tac0"), map.get("apptac0"));
				String tac1Is = getIsoK(map.get("tac1"), map.get("apptac1"));
				String tac2Is = getIsoK(map.get("tac2"), map.get("apptac2"));
				cell = row.getCell(13);
				cell.setCellValue(tac0Is);
				cell = row.getCell(21);
				cell.setCellValue(tac1Is);
				cell = row.getCell(29);
				cell.setCellValue(tac2Is);

				cell = row.getCell(7);
				cell.setCellValue(map.get("tac0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("apptac0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("tac1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("apptac1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("tac2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("apptac2"));

				row = sheetOne.getRow(25);
				cell = row.getCell(7);
				cell.setCellValue(map.get("rsPower0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("rsPower0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("rsPower1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("rsPower1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("rsPower2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("rsPower2"));

				row = sheetOne.getRow(26);
				cell = row.getCell(7);
				cell.setCellValue(map.get("pa0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("pa0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("pa1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("pa1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("pa2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("pa2"));

				row = sheetOne.getRow(27);
				cell = row.getCell(7);
				cell.setCellValue(map.get("pb0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("pb0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("pb1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("pb1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("pb2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("pb2"));

				row = sheetOne.getRow(28);
				cell = row.getCell(7);
				cell.setCellValue(map.get("antennaHangUp0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("antennaHangUp0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("antennaHangUp1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("antennaHangUp1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("antennaHangUp2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("antennaHangUp2"));

				row = sheetOne.getRow(29);
				cell = row.getCell(7);
				cell.setCellValue(map.get("azimuth0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("azimuth0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("azimuth1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("azimuth1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("azimuth2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("azimuth2"));

				row = sheetOne.getRow(30);
				cell = row.getCell(7);
				cell.setCellValue(map.get("mtotalLowerInclination0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("mtotalLowerInclination0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("mtotalLowerInclination1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("mtotalLowerInclination1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("mtotalLowerInclination2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("mtotalLowerInclination2"));

				row = sheetOne.getRow(31);
				cell = row.getCell(7);
				cell.setCellValue(map.get("presetElectricDip0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("presetElectricDip0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("presetElectricDip1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("presetElectricDip1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("presetElectricDip2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("presetElectricDip2"));

				row = sheetOne.getRow(32);
				cell = row.getCell(7);
				cell.setCellValue(map.get("mechanicalLowerInclination0"));
				cell = row.getCell(10);
				cell.setCellValue(map.get("mechanicalLowerInclination0"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("mechanicalLowerInclination1"));
				cell = row.getCell(18);
				cell.setCellValue(map.get("mechanicalLowerInclination1"));
				cell = row.getCell(23);
				cell.setCellValue(map.get("mechanicalLowerInclination2"));
				cell = row.getCell(26);
				cell.setCellValue(map.get("mechanicalLowerInclination2"));

				String allViewPic = map.get("allViewPic");
				if (StringUtils.isNoneBlank(allViewPic)) {
					allViewPic = lteImage + allViewPic;
				}
				String stationEntrancePic = map.get("stationEntrancePic");
				if (StringUtils.isNoneBlank(stationEntrancePic)) {
					stationEntrancePic = lteImage + stationEntrancePic;
				}

				MyUtil.createExcelPic(workbook, patriarchOne, allViewPic, (short) 0, 34, (short) 18, 36);// 37
				MyUtil.createExcelPic(workbook, patriarchOne, stationEntrancePic, (short) 18, 34, (short) 37, 36);

				row = sheetOne.getRow(39);
				cell = row.getCell(11);
				cell.setCellValue(map.get("appftpDownPass0"));
				cell = row.getCell(16);
				cell.setCellValue(map.get("appftpDownPass1"));
				cell = row.getCell(21);
				cell.setCellValue(map.get("appftpDownPass2"));
				row = sheetOne.getRow(40);
				cell = row.getCell(11);
				cell.setCellValue(map.get("appftpUpPass0"));
				cell = row.getCell(16);
				cell.setCellValue(map.get("appftpUpPass1"));
				cell = row.getCell(21);
				cell.setCellValue(map.get("appftpUpPass2"));

				row = sheetOne.getRow(48);
				cell = row.getCell(13);
				cell.setCellValue(map.get("csfbFunctionTest"));
				row = sheetOne.getRow(49);
				cell = row.getCell(13);
				cell.setCellValue(map.get("volteFunctionTest"));
				row = sheetOne.getRow(52);
				cell = row.getCell(13);
				cell.setCellValue(map.get("fourCoverCheck"));
				row = sheetOne.getRow(53);
				cell = row.getCell(13);
				cell.setCellValue(map.get("heightLocationDirectionCheck"));
				row = sheetOne.getRow(54);
				cell = row.getCell(13);
				cell.setCellValue(map.get("skyBlockCheck"));
				row = sheetOne.getRow(55);
				cell = row.getCell(13);
				cell.setCellValue(map.get("wireBackCheck"));

				row = sheetOne.getRow(72);
				cell = row.getCell(8);
				cell.setCellValue(map.get("testPerson"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("testTime"));
				cell = row.getCell(22);
				cell.setCellValue(map.get("testPersonPhone"));
				row = sheetOne.getRow(73);
				cell = row.getCell(8);
				cell.setCellValue(map.get("backPerson"));
				cell = row.getCell(15);
				cell.setCellValue(map.get("testTime"));
				cell = row.getCell(22);
				cell.setCellValue(map.get("backPersonPhone"));

				// 6
				HSSFSheet sheetSix = workbook.getSheetAt(6);
				row = sheetSix.getRow(1);
				cell = row.getCell(2);
				cell.setCellValue(mBaseStationName);
				cell = row.getCell(29);
				cell.setCellValue(mENodeBID);
				cell = row.getCell(36);
				cell.setCellValue(map.get("testTime"));
				cell = row.getCell(49);
				cell.setCellValue(map.get("testPerson"));

				int w = 0;
				for (int i = 0; i < 3; i++) {
					row = sheetSix.getRow(4 + w);
					cell = row.getCell(16);
					cell.setCellValue(map.get("tdLteCxAttempt" + i));
					cell = row.getCell(24);
					cell.setCellValue(map.get("tdLteCxSucc" + i));
					cell = row.getCell(30);
					cell.setCellValue(map.get("tdLteCxFailure" + i));
					cell = row.getCell(36);
					cell.setCellValue(map.get("tdLteCxpercent" + i));

					row = sheetSix.getRow(5 + w);
					cell = row.getCell(16);
					cell.setCellValue(map.get("lteFddCxAttempt" + i));
					cell = row.getCell(24);
					cell.setCellValue(map.get("lteFddCxSucc" + i));
					cell = row.getCell(30);
					cell.setCellValue(map.get("lteFddCxFailure" + i));
					cell = row.getCell(36);
					cell.setCellValue(map.get("lteFddCxpercent" + i));

					row = sheetSix.getRow(6 + w);
					cell = row.getCell(16);
					cell.setCellValue(map.get("tdLteChangeAttempt" + i));
					cell = row.getCell(24);
					cell.setCellValue(map.get("tdLteChangeSucc" + i));
					cell = row.getCell(30);
					cell.setCellValue(map.get("tdLteChangeFailure" + i));
					cell = row.getCell(36);
					cell.setCellValue(map.get("tdLteChangepercent" + i));

					row = sheetSix.getRow(7 + w);
					cell = row.getCell(16);
					cell.setCellValue(map.get("lteFddChangeAttempt" + i));
					cell = row.getCell(24);
					cell.setCellValue(map.get("lteFddChangeSucc" + i));
					cell = row.getCell(30);
					cell.setCellValue(map.get("lteFddChangeFailure" + i));
					cell = row.getCell(36);
					cell.setCellValue(map.get("lteFddChangepercent" + i));

					w = w + 6;
				}

				// 5
				HSSFSheet sheetFive = workbook.getSheetAt(4);
				HSSFPatriarch patriarchFive = sheetFive.createDrawingPatriarch();
				row = sheetFive.getRow(1);
				cell = row.getCell(3);
				cell.setCellValue(map.get("testPerson"));
				row = sheetFive.getRow(2);
				cell = row.getCell(3);
				cell.setCellValue(map.get("testTime"));
				row = sheetFive.getRow(5);
				cell = row.getCell(1);
				cell.setCellValue(map.get("mBaseStationName"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("region"));
				row = sheetFive.getRow(6);
				cell = row.getCell(1);
				cell.setCellValue(map.get("address"));
				row = sheetFive.getRow(7);
				cell = row.getCell(1);
				cell.setCellValue(map.get("mBaseStationType"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("commonStationName"));
				row = sheetFive.getRow(8);
				cell = row.getCell(1);
				cell.setCellValue(map.get("mLongitude"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mLatitude"));

				row = sheetFive.getRow(11);
				cell = row.getCell(1);
				cell.setCellValue(map.get("stationType"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("buildingFunction"));

				row = sheetFive.getRow(12);
				cell = row.getCell(1);
				cell.setCellValue(map.get("floorsNum"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("yuanTaWeizhi"));

				row = sheetFive.getRow(13);
				cell = row.getCell(1);
				cell.setCellValue(map.get("yuanTiMianFs"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("yuanTiMianGg"));

				row = sheetFive.getRow(14);
				cell = row.getCell(1);
				cell.setCellValue(map.get("xinZengTiMianType"));
				row = sheetFive.getRow(15);
				cell = row.getCell(1);
				cell.setCellValue(map.get("reasonDescrib"));

				row = sheetFive.getRow(16);
				cell = row.getCell(1);
				cell.setCellValue(map.get("xinZengTiMianFs"));
				row = sheetFive.getRow(17);
				cell = row.getCell(1);
				cell.setCellValue(map.get("reasonDescribNew"));

				row = sheetFive.getRow(18);
				cell = row.getCell(1);
				cell.setCellValue(map.get("xinZengFwj"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("xinTiMianGg"));

				row = sheetFive.getRow(19);
				cell = row.getCell(1);
				cell.setCellValue(map.get("tianMianZd"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("stationDistance"));

				row = sheetFive.getRow(20);
				cell = row.getCell(1);
				cell.setCellValue(map.get("remark"));

				// String allViewPic = map.get("allViewPic");
				// String stationEntrancePic = map.get("stationEntrancePic");
				String roofViewPic = map.get("roofViewPic");
				if (StringUtils.isNoneBlank(roofViewPic)) {
					roofViewPic = lteImage + roofViewPic;
				}
				MyUtil.createExcelPic(workbook, patriarchFive, allViewPic, (short) 0, 25, (short) 2, 26);
				MyUtil.createExcelPic(workbook, patriarchFive, stationEntrancePic, (short) 2, 25, (short) 4, 26);
				MyUtil.createExcelPic(workbook, patriarchFive, roofViewPic, (short) 0, 27, (short) 1, 28);

				String cellFirstPic = map.get("cellFirstPic");
				if (StringUtils.isNoneBlank(cellFirstPic)) {
					cellFirstPic = lteImage + cellFirstPic;
				}
				String cellScecondPic = map.get("cellScecondPic");
				if (StringUtils.isNoneBlank(cellScecondPic)) {
					cellScecondPic = lteImage + cellScecondPic;
				}
				String cellThirdPic = map.get("cellThirdPic");
				if (StringUtils.isNoneBlank(cellThirdPic)) {
					cellThirdPic = lteImage + cellThirdPic;
				}
				MyUtil.createExcelPic(workbook, patriarchFive, cellFirstPic, (short) 0, 30, (short) 2, 31);
				MyUtil.createExcelPic(workbook, patriarchFive, cellScecondPic, (short) 2, 30, (short) 4, 31);
				MyUtil.createExcelPic(workbook, patriarchFive, cellThirdPic, (short) 0, 32, (short) 2, 33);

				String stationDirection0 = map.get("stationDirection0");
				if (StringUtils.isNoneBlank(stationDirection0)) {
					stationDirection0 = lteImage + stationDirection0;
				}
				String stationDirection45 = map.get("stationDirection45");
				if (StringUtils.isNoneBlank(stationDirection45)) {
					stationDirection45 = lteImage + stationDirection45;
				}
				String stationDirection90 = map.get("stationDirection90");
				if (StringUtils.isNoneBlank(stationDirection90)) {
					stationDirection90 = lteImage + stationDirection90;
				}
				String stationDirection135 = map.get("stationDirection135");
				if (StringUtils.isNoneBlank(stationDirection135)) {
					stationDirection135 = lteImage + stationDirection135;
				}
				String stationDirection180 = map.get("stationDirection180");
				if (StringUtils.isNoneBlank(stationDirection180)) {
					stationDirection180 = lteImage + stationDirection180;
				}
				String stationDirection225 = map.get("stationDirection225");
				if (StringUtils.isNoneBlank(stationDirection225)) {
					stationDirection225 = lteImage + stationDirection225;
				}
				String stationDirection270 = map.get("stationDirection270");
				if (StringUtils.isNoneBlank(stationDirection270)) {
					stationDirection270 = lteImage + stationDirection270;
				}
				String stationDirection315 = map.get("stationDirection315");
				if (StringUtils.isNoneBlank(stationDirection315)) {
					stationDirection315 = lteImage + stationDirection315;
				}

				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection0, (short) 0, 35, (short) 2, 36);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection45, (short) 2, 35, (short) 4, 36);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection90, (short) 0, 37, (short) 2, 38);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection135, (short) 2, 37, (short) 4, 38);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection180, (short) 0, 39, (short) 2, 40);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection225, (short) 2, 39, (short) 4, 40);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection270, (short) 0, 41, (short) 2, 42);
				MyUtil.createExcelPic(workbook, patriarchFive, stationDirection315, (short) 2, 41, (short) 4, 42);

				// 4
				HSSFSheet sheetFore = workbook.getSheetAt(3);
				HSSFPatriarch patriarchFore = sheetFore.createDrawingPatriarch();
				String stationRsrpPic = map.get("stationRsrpPic");
				if (StringUtils.isNoneBlank(stationRsrpPic)) {
					stationRsrpPic = lteImage + stationRsrpPic;
				}
				String stationSinrPic = map.get("stationSinrPic");
				if (StringUtils.isNoneBlank(stationSinrPic)) {
					stationSinrPic = lteImage + stationSinrPic;
				}
				String stationDownRatePic = map.get("stationDownRatePic");
				if (StringUtils.isNoneBlank(stationDownRatePic)) {
					stationDownRatePic = lteImage + stationDownRatePic;
				}
				String stationPciPic = map.get("stationPciPic");
				if (StringUtils.isNoneBlank(stationPciPic)) {
					stationPciPic = lteImage + stationPciPic;
				}

				MyUtil.createExcelPic(workbook, patriarchFore, stationRsrpPic, (short) 0, 6, (short) 18, 26);
				MyUtil.createExcelPic(workbook, patriarchFore, stationSinrPic, (short) 0, 29, (short) 18, 49);
				MyUtil.createExcelPic(workbook, patriarchFore, stationDownRatePic, (short) 0, 52, (short) 18, 72);
				MyUtil.createExcelPic(workbook, patriarchFore, stationPciPic, (short) 0, 75, (short) 18, 95);

				// 3
				HSSFSheet sheetThress = workbook.getSheetAt(2);
				HSSFPatriarch patriarchThree = sheetThress.createDrawingPatriarch();
				String rsrpPic0 = map.get("rsrpPic0");
				if (StringUtils.isNoneBlank(rsrpPic0)) {
					rsrpPic0 = lteImage + rsrpPic0;
				}
				String sinrPic0 = map.get("sinrPic0");
				if (StringUtils.isNoneBlank(sinrPic0)) {
					sinrPic0 = lteImage + sinrPic0;
				}
				String downRatePic0 = map.get("downRatePic0");
				if (StringUtils.isNoneBlank(downRatePic0)) {
					downRatePic0 = lteImage + downRatePic0;
				}
				String upRatePic0 = map.get("upRatePic0");
				if (StringUtils.isNoneBlank(upRatePic0)) {
					upRatePic0 = lteImage + upRatePic0;
				}
				String rsrpWirePic0 = map.get("rsrpWirePic0");
				if (StringUtils.isNoneBlank(rsrpWirePic0)) {
					rsrpWirePic0 = lteImage + rsrpWirePic0;
				}

				MyUtil.createExcelPic(workbook, patriarchThree, rsrpPic0, (short) 0, 6, (short) 18, 26);
				MyUtil.createExcelPic(workbook, patriarchThree, sinrPic0, (short) 0, 29, (short) 18, 49);
				MyUtil.createExcelPic(workbook, patriarchThree, downRatePic0, (short) 0, 52, (short) 18, 72);
				MyUtil.createExcelPic(workbook, patriarchThree, upRatePic0, (short) 0, 75, (short) 18, 95);
				MyUtil.createExcelPic(workbook, patriarchThree, rsrpWirePic0, (short) 0, 98, (short) 18, 118);

				String rsrpPic1 = map.get("rsrpPic1");
				if (StringUtils.isNoneBlank(rsrpPic1)) {
					rsrpPic1 = lteImage + rsrpPic1;
				}
				String sinrPic1 = map.get("sinrPic1");
				if (StringUtils.isNoneBlank(sinrPic1)) {
					sinrPic1 = lteImage + sinrPic1;
				}
				String downRatePic1 = map.get("downRatePic1");
				if (StringUtils.isNoneBlank(downRatePic1)) {
					downRatePic1 = lteImage + downRatePic1;
				}
				String upRatePic1 = map.get("upRatePic1");
				if (StringUtils.isNoneBlank(upRatePic1)) {
					upRatePic1 = lteImage + upRatePic1;
				}
				String rsrpWirePic1 = map.get("rsrpWirePic1");
				if (StringUtils.isNoneBlank(rsrpWirePic1)) {
					rsrpWirePic1 = lteImage + rsrpWirePic1;
				}

				MyUtil.createExcelPic(workbook, patriarchThree, rsrpPic1, (short) 0, 98, (short) 18, 118);
				MyUtil.createExcelPic(workbook, patriarchThree, sinrPic1, (short) 0, 121, (short) 18, 141);
				MyUtil.createExcelPic(workbook, patriarchThree, downRatePic1, (short) 0, 144, (short) 18, 164);
				MyUtil.createExcelPic(workbook, patriarchThree, upRatePic1, (short) 0, 167, (short) 18, 187);
				MyUtil.createExcelPic(workbook, patriarchThree, rsrpWirePic1, (short) 0, 190, (short) 18, 210);

				String rsrpPic2 = map.get("rsrpPic2");
				if (StringUtils.isNoneBlank(rsrpPic2)) {
					rsrpPic2 = lteImage + rsrpPic2;
				}
				String sinrPic2 = map.get("sinrPic2");
				if (StringUtils.isNoneBlank(sinrPic2)) {
					sinrPic2 = lteImage + sinrPic2;
				}
				String downRatePic2 = map.get("downRatePic2");
				if (StringUtils.isNoneBlank(downRatePic2)) {
					downRatePic2 = lteImage + downRatePic2;
				}
				String upRatePic2 = map.get("upRatePic2");
				if (StringUtils.isNoneBlank(upRatePic2)) {
					upRatePic2 = lteImage + upRatePic2;
				}
				String rsrpWirePic2 = map.get("rsrpWirePic2");
				if (StringUtils.isNoneBlank(rsrpWirePic2)) {
					rsrpWirePic2 = lteImage + rsrpWirePic2;
				}

				MyUtil.createExcelPic(workbook, patriarchThree, rsrpPic2, (short) 0, 236, (short) 18, 256);
				MyUtil.createExcelPic(workbook, patriarchThree, sinrPic2, (short) 0, 259, (short) 18, 279);
				MyUtil.createExcelPic(workbook, patriarchThree, downRatePic2, (short) 0, 282, (short) 18, 302);
				MyUtil.createExcelPic(workbook, patriarchThree, upRatePic2, (short) 0, 305, (short) 18, 325);
				MyUtil.createExcelPic(workbook, patriarchThree, rsrpWirePic2, (short) 0, 328, (short) 18, 348);

				// 2
				HSSFSheet sheetTwo = workbook.getSheetAt(1);
				HSSFPatriarch patriarchTwo = sheetTwo.createDrawingPatriarch();
				row = sheetTwo.getRow(1);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mBaseStationName"));
				cell = row.getCell(28);
				cell.setCellValue(map.get("mENodeBID"));
				cell = row.getCell(36);
				cell.setCellValue(map.get("testTime"));
				cell = row.getCell(49);
				cell.setCellValue(map.get("testPerson"));
				int j = 0;
				for (int i = 0; i < 3; i++) {

					row = sheetTwo.getRow(4 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("rrcSuccRateAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("rrcSuccRateSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("rrcSuccRateFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("rrcSuccRatepercent" + i));

					row = sheetTwo.getRow(5 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("erabSuccRateAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("erabSuccRateSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("erabSuccRateFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("erabSuccRatepercent" + i));

					row = sheetTwo.getRow(6 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("accessSuccRateAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("accessSuccRateSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("accessSuccRateFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("accessSuccRatepercent" + i));

					row = sheetTwo.getRow(7 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("volteWirelessAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("volteWirelessConnSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("volteWirelessConnFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("volteWirelessConnpercent" + i));

					row = sheetTwo.getRow(8 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("volteFailureAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("volteFailureSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("volteFailureFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("volteFailurepercent" + i));

					row = sheetTwo.getRow(11 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("tdLteCxAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("tdLteCxSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("tdLteCxFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("tdLteCxpercent" + i));

					row = sheetTwo.getRow(12 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("lteFddCxAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("lteFddCxSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("lteFddCxFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("lteFddCxpercent" + i));

					row = sheetTwo.getRow(13 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("tdLteChangeAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("tdLteChangeSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("tdLteChangeFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("tdLteChangepercent" + i));

					row = sheetTwo.getRow(14 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("lteFddChangeAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("lteFddChangeSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("lteFddChangeFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("lteFddChangepercent" + i));

					row = sheetTwo.getRow(15 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("csfbVoiceSuccAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("csfbVoiceSuccSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("csfbVoiceSuccfailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("csfbVoiceSuccpercent" + i));

					row = sheetTwo.getRow(16 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("csfbCallDelay" + i));
					cell = row.getCell(33);
					cell.setCellValue(map.get("csfbPassiveCallDelay" + i));

					row = sheetTwo.getRow(17 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("csfbVoiceDelay" + i));

					row = sheetTwo.getRow(19 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpDownRsrpFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpDownRsrpSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpDownRsrpBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpDownRsrpRandom" + i));

					row = sheetTwo.getRow(20 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpDownSinrFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpDownSinrSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpDownSinrBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpDownSinrRandom" + i));

					row = sheetTwo.getRow(21 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpDownThroughputFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpDownThroughputSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpDownThroughputBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpDownThroughputRandom" + i));

					row = sheetTwo.getRow(22 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpUpRsrpFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpUpRsrpSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpUpRsrpBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpUpRsrpRandom" + i));

					row = sheetTwo.getRow(23 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpUpSinrFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpUpSinrSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpUpSinrBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpUpSinrRandom" + i));

					row = sheetTwo.getRow(24 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("ftpUpThroughputFirst" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("ftpUpThroughputSecond" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("ftpUpThroughputBad" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("ftpUpThroughputRandom" + i));

					row = sheetTwo.getRow(25 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("systemChangeAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("systemChangeSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("systemChangeFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("systemChangepercent" + i));

					row = sheetTwo.getRow(26 + j);
					cell = row.getCell(15);
					cell.setCellValue(map.get("csfbReturnAttempt" + i));
					cell = row.getCell(22);
					cell.setCellValue(map.get("csfbReturnSucc" + i));
					cell = row.getCell(28);
					cell.setCellValue(map.get("csfbReturnFailure" + i));
					cell = row.getCell(35);
					cell.setCellValue(map.get("csfbReturnpercent" + i));

					j = j + 25;
				}

				map.put("title", lteFddPlanInfo.getmENodeBID() + "_" + lteFddPlanInfo.getmBaseStationType() + "_"
						+ lteFddPlanInfo.getmBaseStationName() + "_" + new Date().getTime());
			}

			OutputStream out = response.getOutputStream();
			String fileNameStr = map.get("title");
			response.setContentType("application/x-msdownload");
			response.addHeader("Content-Disposition",
					"attachment;filename=\"" + new String((fileNameStr + ".xls").getBytes("GBK"), "ISO8859-1") + "\"");
			workbook.write(out);

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private String getIsoK(String eci0, String appeci0) {
		String eci1Is = "否";
		if (StringUtils.isNoneBlank(eci0) && StringUtils.isNoneBlank(appeci0)) {
			if (eci0.equals(appeci0)) {
				eci1Is = "是";
			}
		}
		return eci1Is;
	}

}

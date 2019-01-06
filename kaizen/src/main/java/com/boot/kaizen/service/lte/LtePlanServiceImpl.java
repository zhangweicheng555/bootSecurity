package com.boot.kaizen.service.lte;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFClientAnchor;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.boot.kaizen.activiti.service.Activitiservice;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.dao.lte.LtePlanDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lte.LtePlan;
import com.boot.kaizen.model.lte.LtePlanInfo;
import com.boot.kaizen.service.UserService;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyDateUtil;

@Service
class LtePlanServiceImpl implements ILtePlanService {

	@Autowired
	private LtePlanDao planDao;
	@Autowired
	private ILteConfigService lteConfigService;
	@Autowired
	private RuntimeService runtimeService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private ILteCellCheckService lteCellCheckService;
	@Autowired
	private Activitiservice activitiservice;
	@Autowired
	private ILteLoadTestService lteLoadTestService;
	@Autowired
	private ILteStationCheckService lteStationCheckService;
	@Autowired
	private ILteCellStructuralValidationService lteCellStructuralValidationService;
	@Autowired
	private ILteCellParamtersService lteCellParamtersService;
	@Autowired
	private UserService userService;
	@Value("${files.lteImage}")
	private String lteImage;
	
	@Override
	public List<LtePlan> find(Map<String, Object> map) {
		return planDao.find(map);
	}

	@Transactional
	@Override
	public JsonMsgUtil edit(LtePlan ltePlan, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (ltePlan.getId() != null) {// edit
			ltePlan.setUpdateTime(new Date());
			planDao.update(ltePlan);
		} else {// add
			ltePlan.setProjId(loginUser.getProjId());
			ltePlan.setCreateAt(loginUser.getId());
			ltePlan.setCreateTime(new Date());
			planDao.save(ltePlan);
			// 判断流程业务关联表是不是有与businesskey模糊匹配的记录
			Long num = actBusinessService.queryCountMatchBusinessKey("LtePlan",
					"LtePlan_" + ltePlan.getmENodeBID() + "_");
			if (num != 0) {
				throw new IllegalArgumentException("存在此站号的流程，添加失败");
			}
			// 启动流程
			String businessKey = "LtePlan" + "_" + ltePlan.getmENodeBID() + "_" + ltePlan.getId();
			Map<String, Object> variables = new HashMap<>();
			variables.put("user", "");
			variables.put("recordId", ltePlan.getId());
			variables.put("projId", loginUser.getProjId());

			ProcessInstance processInstance = runtimeService.startProcessInstanceByKey("LtePlan", businessKey,
					variables);
			// 添加与业务表的关系
			if (processInstance != null) {
				// 记录流程与业务表的关系
				Map<String, Object> map = new HashMap<>();
				map.put("bussType", "LtePlan");
				map.put("createTime", new Date());
				map.put("bussId", ltePlan.getId());
				map.put("projId", loginUser.getProjId());
				map.put("businessKey", processInstance.getBusinessKey());
				map.put("assignIds", "");
				map.put("actPiid", processInstance.getId());
				actBusinessService.insert(map);

				// 查询当前任务是不是存在 测试计划 这个环节 存在的话 自动完成
				Task task = taskService.createTaskQuery().processInstanceId(processInstance.getId()).taskName("测试计划")
						.singleResult();
				if (task == null) {
					throw new IllegalArgumentException("流程中测试计划环节不存在");
				}
				// 添加关系表
				Map<String, Object> mapAll = new HashMap<>();
				mapAll.put("checkResult", "");
				mapAll.put("bussType", "LtePlan");
				mapAll.put("createTime", new Date());
				mapAll.put("bussId", ltePlan.getId());
				mapAll.put("checkAssignee", "");
				mapAll.put("projId", loginUser.getProjId());
				mapAll.put("actName", task.getName());
				mapAll.put("actId", task.getTaskDefinitionKey());
				mapAll.put("piid", processInstance.getId());
				mapAll.put("businessKey", processInstance.getBusinessKey());
				actBusinessService.insertAll(mapAll);
				// 完成任务
				taskService.complete(task.getId());

			}
		}
		return new JsonMsgUtil(true, "添加成功", ltePlan);
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		if (id == null) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LtePlan ltePlan = planDao.findById(id);
		if (ltePlan == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", ltePlan);
	}

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (StringUtils.isNoneBlank(ids)) {
				String[] idsArray = ids.trim().split(",");
				Long[] array = new Long[idsArray.length];
				for (int i = 0; i < idsArray.length; i++) {
					String id = idsArray[i];
					array[i] = Long.valueOf(id.trim());

					// 删除正在运行的流程
					List<String> processInstanceIds = actBusinessService.queryProcessInstanceIds(array[i], "LtePlan");
					if (processInstanceIds != null && processInstanceIds.size() > 0) {
						for (String piid : processInstanceIds) {
							activitiservice.deleteProcessIntance(piid, "delete");
						}
					}
					// 删除关联表
					actBusinessService.deleteByIdAndType(array[i], "LtePlan");
				}
				// 删除项目
				Integer deleteNum = planDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public List<Map<String, Object>> queryPlanList(Long userId, Long projId) {
		return planDao.queryPlanList(userId, projId, MyDateUtil.getNowDate("yyyy-MM-dd"));
	}

	@Override
	public List<BaseStationBean> queryStationList(Long userId, Long projId, String testDate) {
		return planDao.queryStationList(userId, projId, testDate);
	}

	@Override
	public JsonMsgUtil queryLtePlanInfo(Long id, LoginUser user) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		LtePlanInfo planInfo = planDao.queryLtePlanInfo(id);
		if (planInfo != null) {
			/** 查询测试配置 */
			if (user == null) {
				throw new IllegalArgumentException("登陆超时");
			}
			planInfo.setConfigs(lteConfigService.queryListByProjId(user.getProjId()));
			j = new JsonMsgUtil(true, "查询规划信息成功", planInfo);
		} else {
			j.setMessage("查询的规划信息不存在");
		}
		return j;
	}

	@Override
	public LtePlanInfo queryLtePlanInfoByEnobId(Long id) {
		LtePlanInfo ltePlanInfo = planDao.queryLtePlanInfo(id);
		Map<String, Object> map=new HashMap<>();
		map.put("testDate", ltePlanInfo.getTestTime());
		map.put("projId", ltePlanInfo.getProjId());
		map.put("eNodeBID", ltePlanInfo.getmENodeBID());
		if (ltePlanInfo != null) {
			ltePlanInfo.setLteCellStructuralValidations(lteCellStructuralValidationService.query(map));
			ltePlanInfo.setLteCellParamtersList(lteCellParamtersService.query(map));
		}
		return ltePlanInfo;
	}

	@Override
	public void findLteConfigActivitiImage(Long id, HttpServletResponse response) {
		String piid = actBusinessService.queryPiid(id, "LtePlan");
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("流程实例不存在");
		}
		activitiservice.findActivitiProccessImage(piid, response);
	}

	@Override
	public JsonMsgUtil check(Long id, Long statusM) {
		LtePlan ltePlan = planDao.findById(id);
		if (ltePlan == null) {
			throw new IllegalArgumentException("测试计划已被删除");
		}
		;

		String piid = actBusinessService.queryMatchBusinessKey("LtePlan",
				"LtePlan" + "_" + ltePlan.getmENodeBID() + "_" + id);
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("流程实例不存在");
		}

		Long num = actBusinessService.queryCountMatchLink("LtePlan", "审核报告", piid);
		if (num == 0) {
			// 查询小区核查的任务
			Task task = taskService.createTaskQuery().processInstanceId(piid).taskName("审核报告").singleResult();
			if (task == null) {
				throw new IllegalArgumentException("审核报告环节不存在");
			}

			if (1 == statusM) {
				// 记录关联表的关系
				Map<String, Object> mapAll = new HashMap<>();
				mapAll.put("checkResult", "");
				mapAll.put("bussType", "LtePlan");
				mapAll.put("createTime", new Date());
				mapAll.put("bussId", ltePlan.getId());
				mapAll.put("checkAssignee", "");
				mapAll.put("projId", ltePlan.getProjId());
				mapAll.put("actName", "审核报告");
				mapAll.put("actId", task.getTaskDefinitionKey());
				mapAll.put("piid", piid);
				mapAll.put("businessKey", "LtePlan" + "_" + ltePlan.getmENodeBID() + "_" + id);
				actBusinessService.insertAll(mapAll);
				// 完成任务
				Map<String, Object> map = new HashMap<>();
				map.put("pass", 1);
				taskService.complete(task.getId(), map);
			}
			if (2 == statusM) {
				// 完成任务
				Map<String, Object> map = new HashMap<>();
				map.put("pass", 0);
				taskService.complete(task.getId(), map);
				// 删除上传的信息
				actBusinessService.deleteActBusinessBykey("LtePlan_" + ltePlan.getmENodeBID() + "_" + ltePlan.getId());
				// 删除三表的数据
				lteCellCheckService.deleteByeNodeBID(ltePlan.getmENodeBID());
				lteLoadTestService.deleteByeNodeBID(ltePlan.getmENodeBID());
				lteStationCheckService.deleteByeNodeBID(ltePlan.getmENodeBID());
			}
		} else {
			if (2 == statusM) {
				// 删除上传的信息
				actBusinessService.deleteActBusinessBykey("LtePlan_" + ltePlan.getmENodeBID() + "_" + ltePlan.getId());
				// 删除三表的数据
				lteCellCheckService.deleteByeNodeBID(ltePlan.getmENodeBID());
				lteLoadTestService.deleteByeNodeBID(ltePlan.getmENodeBID());
				lteStationCheckService.deleteByeNodeBID(ltePlan.getmENodeBID());
			}
		}
		planDao.check(id, statusM);
		return new JsonMsgUtil(true, "审核完成", "");
	}

	@Override
	public void exportPlanDoc(String absolutePathModelExcel, LtePlanInfo ltePlanInfo, Map<String, String> map,
			HttpServletResponse response, HttpSession session) {
		try {
			HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(new File(absolutePathModelExcel)));

			if (ltePlanInfo != null) {

				HSSFSheet sheetPic = workbook.getSheetAt(2);
				HSSFPatriarch patriarch = sheetPic.createDrawingPatriarch();

				String rsrpFtpUpImage = map.get("rsrpFtpUpImage");
				if (StringUtils.isNoneBlank(rsrpFtpUpImage)) {
					//这个是小区打点集合
					String[] images=rsrpFtpUpImage.split(",");
					for (int i = 0; i < images.length; i++) {
						String image=images[i];
						if (StringUtils.isNoneBlank(image)) {
							createExcelPic(workbook, patriarch, image, (short) (i*6), 4, (short) ((i+1)*6), 5);
						}
					}
				}
				
				String sinrThresholdImage = map.get("sinrThresholdImage");
				if (StringUtils.isNoneBlank(sinrThresholdImage)) {
					sinrThresholdImage = lteImage + sinrThresholdImage;
				}
				String rsrpThresholdImage = map.get("rsrpThresholdImage");
				if (StringUtils.isNoneBlank(rsrpThresholdImage)) {
					rsrpThresholdImage = lteImage + rsrpThresholdImage;
				}
				String upFtpRateThresholdImage = map.get("upFtpRateThresholdImage");
				if (StringUtils.isNoneBlank(upFtpRateThresholdImage)) {
					upFtpRateThresholdImage = lteImage + upFtpRateThresholdImage;
				}
				String downFtpRateThresholdImage = map.get("downFtpRateThresholdImage");
				if (StringUtils.isNoneBlank(downFtpRateThresholdImage)) {
					downFtpRateThresholdImage = lteImage + downFtpRateThresholdImage;
				}
				

				createExcelPic(workbook, patriarch, sinrThresholdImage, (short) 0, 2, (short) 6, 3);
				createExcelPic(workbook, patriarch, rsrpThresholdImage, (short) 6, 2, (short) 13, 3);
				createExcelPic(workbook, patriarch, upFtpRateThresholdImage, (short) 13, 2, (short) 20, 3);
				createExcelPic(workbook, patriarch, downFtpRateThresholdImage, (short) 20, 2, (short) 27, 3);
				
				
				HSSFCell cell;
				HSSFRow row;

				row = sheetPic.getRow(1);
				cell = row.getCell(1);
				cell.setCellValue(map.get("communityName1"));
				cell = row.getCell(14);
				cell.setCellValue(map.get("communityName2"));
				cell = row.getCell(27);
				cell.setCellValue(map.get("communityName3"));

				HSSFSheet sheetOne = workbook.getSheetAt(0);
				String mENodeBID = map.get("mENodeBID");
				String mBaseStationName = map.get("mBaseStationName");
				String mBaseStationType = map.get("mBaseStationType");

				row = sheetOne.getRow(0);
				cell = row.getCell(0);
				cell.setCellValue(mBaseStationName + "_" + mBaseStationType + "_" + mENodeBID);

				row = sheetOne.getRow(3);
				cell = row.getCell(1);
				cell.setCellValue(map.get("mBaseStationName"));
				cell = row.getCell(7);
				cell.setCellValue(map.get("mBaseStationType"));

				
				row = sheetOne.getRow(7);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mLongitude"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mLongitudes"));
				row = sheetOne.getRow(8);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mLatitude"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mLatitudes"));
				row = sheetOne.getRow(9);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mTac"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mTacs"));
				row = sheetOne.getRow(10);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mENodeBID"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mENodeBIDs"));

				row = sheetOne.getRow(13);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mAntennaHangUp1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mAntennaHangUpcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mAntennaHangUp2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mAntennaHangUpcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mAntennaHangUp3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mAntennaHangUpcs3"));

				row = sheetOne.getRow(14);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mAzimuth1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mAzimuthcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mAzimuth2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mAzimuthcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mAzimuth3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mAzimuthcs3"));

				row = sheetOne.getRow(15);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mMechanicalLowerInclination1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mMechanicalLowerInclinationcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mMechanicalLowerInclination2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mMechanicalLowerInclinationcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mMechanicalLowerInclination3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mMechanicalLowerInclinationcs3"));

				row = sheetOne.getRow(16);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mPresetElectricDip1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mPresetElectricDipcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mPresetElectricDip2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mPresetElectricDipcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mPresetElectricDip3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mPresetElectricDipcs3"));

				row = sheetOne.getRow(17);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mtotalLowerInclination1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mtotalLowerInclinationcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mtotalLowerInclination2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mtotalLowerInclinationcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mtotalLowerInclination3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mtotalLowerInclinationcs3"));

				row = sheetOne.getRow(18);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mFrequency1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mFrequencycs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mFrequency2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mFrequencycs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mFrequency3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mFrequencycs3"));

				row = sheetOne.getRow(20);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mPCI1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mPCIcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mPCI2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mPCIcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mPCI3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mPCIcs3"));

				row = sheetOne.getRow(19);
				cell = row.getCell(2);
				cell.setCellValue(map.get("mCellID1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("mCellIDcs1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("mCellID2"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("mCellIDcs2"));
				cell = row.getCell(8);
				cell.setCellValue(map.get("mCellID3"));
				cell = row.getCell(9);
				cell.setCellValue(map.get("mCellIDcs3"));
				
				row = sheetOne.getRow(28);
				cell = row.getCell(2);
				cell.setCellValue(map.get("veryClose"));
				row = sheetOne.getRow(29);
				cell = row.getCell(2);
				cell.setCellValue(map.get("vastDistances"));
				row = sheetOne.getRow(30);
				cell = row.getCell(2);
				cell.setCellValue(map.get("ultraHigh"));
				row = sheetOne.getRow(31);
				cell = row.getCell(2);
				cell.setCellValue(map.get("azimuthSuperoverlap"));
				row = sheetOne.getRow(32);
				cell = row.getCell(2);
				cell.setCellValue(map.get("skyBlockCondition"));
				row = sheetOne.getRow(33);
				cell = row.getCell(2);
				cell.setCellValue(map.get("declinationOverlap"));
				row = sheetOne.getRow(34);
				cell = row.getCell(2);
				cell.setCellValue(map.get("canBeAdjusted"));

				
				
				
				
				row = sheetOne.getRow(41);
				cell = row.getCell(1);
				cell.setCellValue(map.get("testPerson1"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("testPersonPhone1"));
				row = sheetOne.getRow(42);
				cell = row.getCell(1);
				cell.setCellValue(map.get("testPerson2"));
				cell = row.getCell(3);
				cell.setCellValue(map.get("testPersonPhone2"));

				HSSFSheet sheetTwo = workbook.getSheetAt(1);

				row = sheetTwo.getRow(3);
				cell = row.getCell(3);
				cell.setCellValue(map.get("csfbTestCount1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("csfbFallSuccessCount1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("csfbFallFailCount1"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("csfbFallRate1"));
				row = sheetTwo.getRow(5);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageRsrp1"));
				row = sheetTwo.getRow(6);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageSinr1"));
				row = sheetTwo.getRow(7);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownRate1"));
				row = sheetTwo.getRow(8);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageRsrp1"));
				row = sheetTwo.getRow(9);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageSinr1"));
				row = sheetTwo.getRow(10);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpRate1"));

				row = sheetTwo.getRow(13);
				cell = row.getCell(3);
				cell.setCellValue(map.get("csfbTestCount1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("csfbFallSuccessCount1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("csfbFallFailCount1"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("csfbFallRate1"));
				row = sheetTwo.getRow(15);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageRsrp1"));
				row = sheetTwo.getRow(16);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageSinr1"));
				row = sheetTwo.getRow(17);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownRate1"));
				row = sheetTwo.getRow(18);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageRsrp1"));
				row = sheetTwo.getRow(19);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageSinr1"));
				row = sheetTwo.getRow(20);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpRate1"));

				row = sheetTwo.getRow(23);
				cell = row.getCell(3);
				cell.setCellValue(map.get("csfbTestCount1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("csfbFallSuccessCount1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("csfbFallFailCount1"));
				cell = row.getCell(6);
				cell.setCellValue(map.get("csfbFallRate1"));
				row = sheetTwo.getRow(25);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageRsrp1"));
				row = sheetTwo.getRow(26);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownAverageSinr1"));
				row = sheetTwo.getRow(27);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpDownRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpDownRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpDownRate1"));
				row = sheetTwo.getRow(28);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageRsrp1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageRsrp1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageRsrp1"));
				row = sheetTwo.getRow(29);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpAverageSinr1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpAverageSinr1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpAverageSinr1"));
				row = sheetTwo.getRow(30);
				cell = row.getCell(3);
				cell.setCellValue(map.get("goodFtpUpRate1"));
				cell = row.getCell(4);
				cell.setCellValue(map.get("generalFtpUpRate1"));
				cell = row.getCell(5);
				cell.setCellValue(map.get("poorFtpUpRate1"));

				map.put("title", ltePlanInfo.getmENodeBID() + "_" + ltePlanInfo.getmBaseStationType() + "_"
						+ ltePlanInfo.getmBaseStationName() + "_" + new Date().getTime());
			}

			OutputStream out = response.getOutputStream();
			String fileNameStr = map.get("title");
			response.setContentType("application/x-msdownload");
			response.addHeader("Content-Disposition",
					"attachment;filename=\"" + new String((fileNameStr + ".xls").getBytes("GBK"), "ISO8859-1") + "\"");
			workbook.write(out);

		} catch (IOException io) {

		}
	}

	/**
	 * 导出图片到excel
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2018年11月17日 下午8:10:22
	 */
	private void createExcelPic(HSSFWorkbook workbook, HSSFPatriarch patriarch, String sinrFtpUpImage1, Short leftCol,
			Integer leftRow, Short rughtCol, Integer rightRow) throws IOException {
		if (StringUtils.isNoneBlank(sinrFtpUpImage1)) {
			BufferedImage bufferImg3 = null;
			ByteArrayOutputStream byteArrayOut3 = new ByteArrayOutputStream();
			File file = new File(sinrFtpUpImage1);
			if (file.exists()) {
				bufferImg3 = ImageIO.read(file);
				ImageIO.write(bufferImg3, getPictureType(sinrFtpUpImage1), byteArrayOut3);
				HSSFClientAnchor anchor3 = new HSSFClientAnchor(0, 0, 0, 0, leftCol, leftRow, rughtCol, rightRow);
				if (("png").equals(getPictureType(sinrFtpUpImage1))) {
					patriarch.createPicture(anchor3,
							workbook.addPicture(byteArrayOut3.toByteArray(), HSSFWorkbook.PICTURE_TYPE_PNG));
				} else {
					patriarch.createPicture(anchor3,
							workbook.addPicture(byteArrayOut3.toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG));
				}
			}
		}
	}

	/**
	 * 得到图片的类型
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2018年11月17日 下午8:10:31
	 */
	public String getPictureType(String fileName) {
		String proType = fileName.substring(fileName.lastIndexOf(".") + 1);
		return proType;
	}

	@Override
	public JsonMsgUtil queryUserByProjId(Long projId) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		List<Map<String, Object>> listMaps = userService.queryUserByProjId(projId);
		if (listMaps != null && listMaps.size() > 0) {
			j = new JsonMsgUtil(true, "查询成功", listMaps);
		}
		return j;
	}
}

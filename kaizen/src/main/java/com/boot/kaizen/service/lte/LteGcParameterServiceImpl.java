package com.boot.kaizen.service.lte;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.activiti.engine.runtime.ProcessInstance;
import org.activiti.engine.task.Task;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.boot.kaizen.dao.lte.LteGcParameterDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.SysUser;
import com.boot.kaizen.model.lte.LteGcParameter;
import com.boot.kaizen.model.lte.LtePlan;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteGcParameterServiceImpl implements ILteGcParameterService {

	@Autowired
	private LteGcParameterDao gcParameterDao;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private TaskService taskService;
	@Autowired
	private RuntimeService runtimeService;

	@Override
	public List<LteGcParameter> find(Map<String, Object> map) {
		return gcParameterDao.find(map);
	}

	@Transactional
	@Override
	public JsonMsgUtil edit(LteGcParameter lteGcParameter, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}

		// 根据流程站号判断是不是存在规划表、主要是通过关联表判断
		String piid = actBusinessService.queryMatchBusinessKey("LtePlan","LtePlan_" + lteGcParameter.getmENodeBID() + "_");
		if (StringUtils.isBlank(piid)) {
			throw new IllegalArgumentException("规划表中不存在此站号的记录");
		}

		if (lteGcParameter.getId() != null) {// edit
			lteGcParameter.setUpdateTime(new Date());
			gcParameterDao.update(lteGcParameter);
		} else {// add
			lteGcParameter.setProjId(loginUser.getProjId());
			lteGcParameter.setCreateAt(loginUser.getId());
			lteGcParameter.setCreateTime(new Date());

			// 判断是不是存在这个环节了
			Long extensNum = actBusinessService.queryCountMatchLink("LteGcParameter", "工参信息", piid);
			if (extensNum != 0) {// 流程已经执行过 只保存数据
				// 保存数据
				gcParameterDao.save(lteGcParameter);
			} else {
				ProcessInstance processInstance = runtimeService.createProcessInstanceQuery().processInstanceId(piid)
						.singleResult();
				if (processInstance == null) {
					throw new IllegalArgumentException("规划表中此站号对应的流程已被删除");
				}
				// 保存数据
				Long id = gcParameterDao.save(lteGcParameter);
				// 查询任务
				Task task = taskService.createTaskQuery().processInstanceId(piid).taskName("工参信息").singleResult();
				String taskDefinitionKey = "";
				if (task != null) {
					taskDefinitionKey = task.getTaskDefinitionKey();
					// 完成任务
					taskService.complete(task.getId());
				}
				// 记录关联表的关系
				// 添加关系表
				Map<String, Object> mapAll = new HashMap<>();
				mapAll.put("checkResult", "");
				mapAll.put("bussType", "LteGcParameter");
				mapAll.put("createTime", new Date());
				mapAll.put("bussId", id);
				mapAll.put("checkAssignee", "");
				mapAll.put("projId", loginUser.getProjId());
				mapAll.put("actName", "工参信息");
				mapAll.put("actId", taskDefinitionKey);
				mapAll.put("piid", processInstance.getId());
				mapAll.put("businessKey", processInstance.getBusinessKey());
				actBusinessService.insertAll(mapAll);
			}
		}
		return new JsonMsgUtil(true, "添加成功", lteGcParameter);
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		if (id == null) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteGcParameter lteGcParameter = gcParameterDao.findById(id);
		if (lteGcParameter == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", lteGcParameter);
	}

	@Transactional
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
					try {
						// 删除关系表
						actBusinessService.deleteByIdAndType(array[i], "LteGcParameter");
					} catch (Exception e) {
					}
				}
				// 删除项目
				Integer deleteNum = gcParameterDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public List<LteGcParameter> queryGcParameterList(String mENodeBID) {
		return gcParameterDao.queryGcParameterList(mENodeBID);
	}
	
	@Transactional
	@Override
	public JsonMsgUtil upload(MultipartFile file, LoginUser loginUser) {
		JsonMsgUtil msg = new JsonMsgUtil(false);
		try {
			// 导入
			HSSFWorkbook wbs = new HSSFWorkbook(file.getInputStream());
			HSSFSheet sheet1 = wbs.getSheetAt(0);
			HSSFRow row = null;
			if (sheet1.getRow(0).getLastCellNum() != 12) {
				msg = new JsonMsgUtil(false, "导入excel的列数要求为12列", null);
				return msg;
			}
			List<LteGcParameter> list = new ArrayList<LteGcParameter>();
			LteGcParameter lteGcParameter = null;
			for (int j = 1; j <= sheet1.getLastRowNum(); j++) {
				row = sheet1.getRow(j);
				if (row == null) {
					continue;
				}
				// 导入excel总行数记录
				int cell_index = 0;
				lteGcParameter = new LteGcParameter();
				// 基站号
				String mENodeBID = cell_string(row.getCell(cell_index++));
				if (StringUtils.isNoneBlank(mENodeBID)) {
					lteGcParameter.setmENodeBID(mENodeBID);
				} else {
					msg = new JsonMsgUtil(false, "站号不能为空", null);
					return msg;
				}
				// 基站名称
				String mBaseStationName = cell_string(row.getCell(cell_index++));
				if (StringUtils.isNoneBlank(mBaseStationName)) {
					lteGcParameter.setmBaseStationName(mBaseStationName);
				} else {
					msg = new JsonMsgUtil(false, "站名不能为空", null);
					return msg;
				}
				// 小区号
				String mCellID = cell_string(row.getCell(cell_index++));
				if (StringUtils.isNoneBlank(mCellID)) {
					lteGcParameter.setmCellID(mCellID);
				} else {
					msg = new JsonMsgUtil(false, "小区号不能为空", null);
					return msg;
				}
				
				String mCellName = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmCellName(mCellName);
				String mFrequency = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmFrequency(mFrequency);
				String mPCI = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmPCI(mPCI);
				String mRsPower = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmRsPower(mRsPower);
				String mAntennaHangUp = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmAntennaHangUp(mAntennaHangUp);
				String mAzimuth = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmAzimuth(mAzimuth);
				String mMechanicalLowerInclination = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmMechanicalLowerInclination(mMechanicalLowerInclination);
				String mPresetElectricDip = cell_string(row.getCell(cell_index++));
				lteGcParameter.setmPresetElectricDip(mPresetElectricDip);
				String mtotalLowerInclination = cell_string(row.getCell(cell_index++));
				lteGcParameter.setMtotalLowerInclination(mtotalLowerInclination);
				
				// 添加进list里面
				list.add(lteGcParameter);
			}

			for (LteGcParameter nobPlan2 : list) {
				edit(nobPlan2, loginUser);
			}
			msg = new JsonMsgUtil(true, "上传成功", null);
		} catch (Exception e) {
			msg = new JsonMsgUtil(false, e.getMessage(), null);
		}
		return msg;
	}

	public String cell_string(HSSFCell cell) {
		if (cell == null) {
			return "";
		}
		cell.setCellType(Cell.CELL_TYPE_STRING);
		return cell.getStringCellValue();
	}

	public String dealDateToString(String strDate) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Calendar cal1 = Calendar.getInstance();
		cal1.set(Calendar.YEAR, 1900);
		cal1.set(Calendar.DAY_OF_MONTH, 1);
		cal1.set(Calendar.DAY_OF_YEAR, 1);
		cal1.set(Calendar.HOUR_OF_DAY, 0);
		cal1.set(Calendar.MINUTE, 0);
		cal1.set(Calendar.SECOND, 0);

		cal1.add(Calendar.DAY_OF_YEAR, Integer.parseInt(strDate) - 2);
		Date date = cal1.getTime();
		return sdf.format(date);
	}

}

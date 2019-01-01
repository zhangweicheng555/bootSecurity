package com.boot.kaizen.service.lteFdd;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
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
	public List<Map<String, Object>> queryPlanList(Long userId, Long projId) {
		Map<String, Object> map = new HashMap<>();
		map.put("projId", projId);
		map.put("dealPersonId", userId);
		map.put("beginTime", MyDateUtil.getNowDate("yyyy-MM-dd"));
		map.put("endTime", MyDateUtil.getNowDate("yyyy-MM-dd"));
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
	public List<BaseStationBean> queryStationList(Long userId, Long projId, String testDate) {
		return lteFddPlanMapper.queryStationList(userId, projId, testDate);
	}

	@Override
	public JsonMsgUtil queryCheckInfoById(String id) {
		LteFddPlanInfo lteFddPlanInfo=new LteFddPlanInfo();
		
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddPlan lteFddPlan = selectByPrimaryKey(id);
		if (lteFddPlan == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		BeanUtils.copyProperties(lteFddPlan, lteFddPlanInfo);
		
		Map<String, Object> map=new HashMap<>();
		map.put("mENodeBID", lteFddPlanInfo.getmENodeBID());
		map.put("testTime", lteFddPlanInfo.getTestTime());
		map.put("projId", lteFddPlanInfo.getProjId());
		List<LteFddCellCheck> lteFddCellChecks= lteFddCellService.query(map);
		if (lteFddCellChecks != null  && lteFddCellChecks.size()>0) {
			lteFddPlanInfo.setLteFddCellChecks(lteFddCellChecks);
		}

		Map<String, Object> map1=new HashMap<>();
		map1.put("eNodeBID", lteFddPlanInfo.getmENodeBID());
		map1.put("testDate", lteFddPlanInfo.getTestTime());
		map1.put("projId", lteFddPlanInfo.getProjId());
		
		List<LteFddParameter> lteFddParameters = lteFddParameterService.query(map1);
		if (lteFddParameters != null  && lteFddParameters.size()>0) {
			lteFddPlanInfo.setLteFddParameters(lteFddParameters);
		}
		
		List<LteFddStation> lteFddStations = lteFddStationService.query(map1);
		if (lteFddStations != null  && lteFddStations.size()>0) {
			lteFddPlanInfo.setLteFddStations(lteFddStations);
		}
		return new JsonMsgUtil(true, "查询成功", lteFddPlanInfo);
	}

}

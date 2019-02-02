package com.boot.kaizen.business.tddsf.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import com.boot.kaizen.business.tddsf.dao.LteTddPlanMapper;
import com.boot.kaizen.business.tddsf.model.LteTddPlan;
import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteTddPlanService implements ILteTddPlanService {

	@Autowired
	private LteTddPlanMapper lteTddPlanMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		return lteTddPlanMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(LteTddPlan record) {
		return lteTddPlanMapper.insertSelective(record);
	}

	@Override
	public LteTddPlan selectByPrimaryKey(String id) {
		return lteTddPlanMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(LteTddPlan record) {
		return lteTddPlanMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<LteTddPlan> find(Map<String, Object> map) {
		return lteTddPlanMapper.find(map);
	}

	@Override
	public JsonMsgUtil edit(LteTddPlan lteTddPlan, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteTddPlan.getId())) {// edit
			lteTddPlan.setUpdateTime(new Date());
			updateByPrimaryKeySelective(lteTddPlan);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Integer createAt = Integer.valueOf(loginUser.getId().toString());
			if (checkInfo(lteTddPlan,projId)) {
				lteTddPlan.setId(id);
				lteTddPlan.setProjId(projId);
				lteTddPlan.setCreateTime(new Date());
				lteTddPlan.setCreateAt(createAt);
				lteTddPlan.setStatus(0);
				insertSelective(lteTddPlan);
			}else {
				throw new IllegalArgumentException("改项目下已经存在此站号信息");
			}
		}
		return new JsonMsgUtil(true, "修改成功", lteTddPlan);
	}

	/**
	 * 项目id/测试时间/站号
	 * @Description: 核对站号是不是存在
	 * @author weichengz
	 * @date 2019年2月2日 下午9:02:05
	 */
	private boolean checkInfo(LteTddPlan lteTddPlan,Integer projId) {
		Boolean flag=true;
		String enodeBID = lteTddPlan.getEnodeBID();
		String testDate = lteTddPlan.getTestDate();
		if (StringUtils.isBlank(enodeBID) || StringUtils.isBlank(testDate)) {
			throw new IllegalArgumentException("【站号，测试时间】不能为空");
		}
		Map<String, Object> map=new HashMap<>();
		map.put("projId", projId);
		map.put("enodeBID", enodeBID);
		map.put("testDate", testDate);
		List<LteTddPlan> lteTddPlans = find(map);
		if (lteTddPlans != null && lteTddPlans.size()>0) {
			flag=false;
		}
		return flag;
	}

	@Override
	public JsonMsgUtil findById(String id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("数据id不能为空");
		}
		LteTddPlan model = selectByPrimaryKey(id);
		if (model != null) {
			j = new JsonMsgUtil(true, "操作成功", model);
		} else {
			j.setMsg("查询的数据不存在");
		}
		return j;
	}

	@Override
	public JsonMsgUtil deleteByIds(String ids) {
		if (StringUtils.isBlank(ids)) {
			throw new IllegalArgumentException("数据ids不能为空");
		}
		String[] idsArray = ids.trim().split(",");
		for (String id : idsArray) {
			deleteByPrimaryKey(id);
		}
		return new JsonMsgUtil(true, "删除成功:共删除【" + idsArray.length + "】条记录", null);
	}

	@Override
	public List<Map<String, Object>> queryPlanList(Long userId, Long projId, String testDate) {
		Map<String, Object> map = new HashMap<>();
		map.put("projId", projId);
		map.put("dealPersonId", userId);
		map.put("beginTime", testDate);
		map.put("endTime", testDate);
		List<LteTddPlan> lteFddPlans = find(map);
		List<Map<String, Object>> list = new ArrayList<>();
		if (lteFddPlans != null && lteFddPlans.size() > 0) {
			for (LteTddPlan lteFddPlan : lteFddPlans) {
				Map<String, Object> model = new HashMap<>();
				model.put("planId", lteFddPlan.getId());
				model.put("testDate", lteFddPlan.getTestDate());
				list.add(model);
			}
		}
		return list;
	}

	@Override
	public List<BaseStationBean> queryBaseStationList(Long userId, Long projId, String testDate) {
		Map<String, Object> map = new HashMap<>();
		map.put("projId", projId);
		map.put("dealPersonId", userId);
		map.put("testDate", testDate);
		List<LteTddPlan> lteFddPlans = find(map);
		List<BaseStationBean> baseStationBeans = new ArrayList<>();
		for (LteTddPlan lteTddPlan : lteFddPlans) {
			BaseStationBean baseStationBean = new BaseStationBean();
			baseStationBean.setmAltitude("");
			baseStationBean.setmBaseStationName(lteTddPlan.getBaseStationName());
			baseStationBean.setmBaseStationType(lteTddPlan.getBaseStationType());
			baseStationBean.setmENodeBID(lteTddPlan.getEnodeBID());
			baseStationBean.setmLatitude(lteTddPlan.getLatitude());
			baseStationBean.setmLongitude(lteTddPlan.getLongitude());
			baseStationBean.setmTac("");
			baseStationBeans.add(baseStationBean);
		}
		return baseStationBeans;
	}

}

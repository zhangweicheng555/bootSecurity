package com.boot.kaizen.service.lteFdd;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.lteFdd.LteFddPlanMapper;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lte.LtePlan;
import com.boot.kaizen.model.lteFddModel.LteFddPlan;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteFddPlanServiceImpl implements ILteFddPlanService {

	@Autowired
	private LteFddPlanMapper lteFddPlanMapper;

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
			Integer deleteNum=lteFddPlanMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【"+deleteNum+"】条数据", null);
		}
		return j;
	}

}

package com.boot.kaizen.service.lteFdd;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.boot.kaizen.dao.lteFdd.LteFddStatrionMapper;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
import com.boot.kaizen.model.lteFddModel.LteFddStation;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteFddStationServiceImpl implements ILteFddStationService {

	@Autowired
	private LteFddStatrionMapper lteFddStatrionMapper;

	@Override
	public int insertSelective(LteFddStation record) {
		return lteFddStatrionMapper.insertSelective(record);
	}

	@Override
	public LteFddStation selectByPrimaryKey(String id) {
		return lteFddStatrionMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<LteFddStation> query(Map<String, Object> map) {
		return lteFddStatrionMapper.query(map);
	}

	@Override
	public JsonMsgUtil edit(LteFddStation lteFddStatrion, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteFddStatrion.getId())) {// edit
			lteFddStatrion.setUpdateTime(new Date());
			lteFddStatrionMapper.updateByPrimaryKeySelective(lteFddStatrion);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());

			lteFddStatrion.setId(id);
			lteFddStatrion.setProjId(projId);
			lteFddStatrion.setCreateTime(createTime);
			lteFddStatrion.setCreateAt(createAt);
			insertSelective(lteFddStatrion);
		}
		return new JsonMsgUtil(true, "修改成功", lteFddStatrion);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddStation lteFddStatrion = selectByPrimaryKey(id);
		if (lteFddStatrion == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", JSONObject.toJSONString(lteFddStatrion));
	}
	
	

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isNoneBlank(ids)) {
			String[] idsArray = ids.trim().split(",");
			Integer deleteNum=lteFddStatrionMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【"+deleteNum+"】条数据", null);
		}
		return j;
	}

}

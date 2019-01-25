package com.boot.kaizen.business.tddsf.service;

import java.util.Date;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.boot.kaizen.business.tddsf.dao.LteTddStationMapper;
import com.boot.kaizen.business.tddsf.model.LteTddParameter;
import com.boot.kaizen.business.tddsf.model.LteTddStation;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lte.LteConfig;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteTddStationService implements ILteTddStationService {

	@Autowired
	private LteTddStationMapper lteTddStationMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		return lteTddStationMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(LteTddStation record) {
		return lteTddStationMapper.insertSelective(record);
	}

	@Override
	public LteTddStation selectByPrimaryKey(String id) {
		return lteTddStationMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(LteTddStation record) {
		return lteTddStationMapper.updateByPrimaryKeySelective(record);
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
	public JsonMsgUtil findById(String id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("数据id不能为空");
		}
		LteTddStation model = selectByPrimaryKey(id);
		if (model != null) {
			j = new JsonMsgUtil(true, "操作成功", model);
			j.setObject(model);
		} else {
			j.setMsg("查询的数据不存在");
		}
		return j;
	}

	@Override
	public JsonMsgUtil edit(LteTddStation lteTddStation, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteTddStation.getId())) {// edit
			lteTddStation.setUpdateTime(new Date());
			updateByPrimaryKeySelective(lteTddStation);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());
			lteTddStation.setId(id);
			lteTddStation.setProjId(projId);
			lteTddStation.setCreateTime(createTime);
			lteTddStation.setCreateAt(createAt);
			insertSelective(lteTddStation);
		}
		return new JsonMsgUtil(true, "修改成功", lteTddStation);
	}

	@Override
	public void find(Map<String, Object> map) {
		lteTddStationMapper.find(map);
	}

}

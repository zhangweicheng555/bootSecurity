package com.boot.kaizen.business.tddsf.service;

import java.util.Date;
import java.util.List;
import java.util.Map;
import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import com.boot.kaizen.business.tddsf.dao.LteTddParameterMapper;
import com.boot.kaizen.business.tddsf.model.LteTddParameter;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteTddParameterService implements ILteTddParameterService {

	@Autowired
	private LteTddParameterMapper lteTddParameterMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		return lteTddParameterMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(LteTddParameter record) {
		return lteTddParameterMapper.insertSelective(record);
	}

	@Override
	public LteTddParameter selectByPrimaryKey(String id) {
		return lteTddParameterMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(LteTddParameter record) {
		return lteTddParameterMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<LteTddParameter> find(Map<String, Object> map) {
		return lteTddParameterMapper.find(map);
	}

	@Override
	public JsonMsgUtil edit(LteTddParameter lteTddParameter, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteTddParameter.getId())) {// edit
			lteTddParameter.setUpdateTime(new Date());
			updateByPrimaryKeySelective(lteTddParameter);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());
			lteTddParameter.setId(id);
			lteTddParameter.setProjId(projId);
			lteTddParameter.setCreateTime(createTime);
			lteTddParameter.setCreateAt(createAt);
			insertSelective(lteTddParameter);
		}
		return new JsonMsgUtil(true, "修改成功", lteTddParameter);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("数据id不能为空");
		}
		LteTddParameter model = selectByPrimaryKey(id);
		if (model != null) {
			j = new JsonMsgUtil(true, "操作成功", model);
			j.setObject(model);
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
	public void upsert(LteTddParameter lteFddParameter) {
		Map<String, Object> map = new HashedMap<>();
		map.put("projId", lteFddParameter.getProjId());
		map.put("enodeBID", lteFddParameter.getEnodeBID());
		map.put("beginTime", lteFddParameter.getTestDate());
		map.put("endTime", lteFddParameter.getTestDate());
		List<LteTddParameter> lteFddParameters = find(map);
		if (lteFddParameters != null && lteFddParameters.size() > 0) {
			LteTddParameter model = lteFddParameters.get(0);
			lteFddParameter.setId(model.getId());
			lteFddParameter.setUpdateTime(new Date());
			lteTddParameterMapper.updateByPrimaryKeySelective(lteFddParameter);
		} else {// 添加
			lteFddParameter.setId(MyUtil.getUuid());
			lteFddParameter.setCreateTime(new Date());
			insertSelective(lteFddParameter);
		}
	}

}

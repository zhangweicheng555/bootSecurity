package com.boot.kaizen.service.lteFdd;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.boot.kaizen.dao.lteFdd.LteFddCellCheckMapper;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddCellCheck;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteFddCellServiceImpl implements ILteFddCellService {

	@Autowired
	private LteFddCellCheckMapper lteFddCellCheckMapper;

	@Override
	public int insertSelective(LteFddCellCheck record) {
		return lteFddCellCheckMapper.insertSelective(record);
	}

	@Override
	public LteFddCellCheck selectByPrimaryKey(String id) {
		return lteFddCellCheckMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<LteFddCellCheck> query(Map<String, Object> map) {
		return lteFddCellCheckMapper.query(map);
	}

	@Override
	public JsonMsgUtil edit(LteFddCellCheck LteFddCellCheck, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(LteFddCellCheck.getId())) {// edit
			LteFddCellCheck.setUpdateTime(new Date());
			lteFddCellCheckMapper.updateByPrimaryKeySelective(LteFddCellCheck);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());

			LteFddCellCheck.setId(id);
			LteFddCellCheck.setProjId(projId);
			LteFddCellCheck.setCreateTime(createTime);
			LteFddCellCheck.setCreateAt(createAt);
			insertSelective(LteFddCellCheck);
		}
		return new JsonMsgUtil(true, "修改成功", LteFddCellCheck);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddCellCheck lteFddCellCheck = selectByPrimaryKey(id);
		if (lteFddCellCheck == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", JSONObject.toJSONString(lteFddCellCheck));
	}
	
	

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isNoneBlank(ids)) {
			String[] idsArray = ids.trim().split(",");
			Integer deleteNum=lteFddCellCheckMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【"+deleteNum+"】条数据", null);
		}
		return j;
	}

}

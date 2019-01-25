package com.boot.kaizen.business.tddsf.service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.boot.kaizen.business.tddsf.dao.LteTddCellCheckMapper;
import com.boot.kaizen.business.tddsf.model.LteTddCellCheck;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteTddCellCheckService implements ILteTddCellCheckService {

	@Autowired
	private LteTddCellCheckMapper lteTddCellCheckMapper;

	@Override
	public int deleteByPrimaryKey(String id) {
		return lteTddCellCheckMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(LteTddCellCheck record) {
		return lteTddCellCheckMapper.insertSelective(record);
	}

	@Override
	public LteTddCellCheck selectByPrimaryKey(String id) {
		return lteTddCellCheckMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(LteTddCellCheck record) {
		return lteTddCellCheckMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public List<LteTddCellCheck> find(Map<String, Object> map) {
		return lteTddCellCheckMapper.find(map);
	}

	@Override
	public JsonMsgUtil edit(LteTddCellCheck lteTddCellCheck, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteTddCellCheck.getId())) {// edit
			lteTddCellCheck.setUpdateTime(new Date());
			updateByPrimaryKeySelective(lteTddCellCheck);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());
			lteTddCellCheck.setId(id);
			lteTddCellCheck.setProjId(projId);
			lteTddCellCheck.setCreateTime(createTime);
			lteTddCellCheck.setCreateAt(createAt);
			insertSelective(lteTddCellCheck);
		}
		return new JsonMsgUtil(true, "修改成功", lteTddCellCheck);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("数据id不能为空");
		}
		LteTddCellCheck model = selectByPrimaryKey(id);
		if (model != null) {
			j = new JsonMsgUtil(true, "操作成功", model);
			j.setObject(model);
		} else {
			j.setMsg("查询的数据不存在");
		}
		return j;
	}

	@Transactional
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

}

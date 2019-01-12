package com.boot.kaizen.service.lteFdd;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.boot.kaizen.dao.lteFdd.LteFddParameterMapper;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.lteFddModel.LteFddParameter;
import com.boot.kaizen.util.JsonMsgUtil;
import com.boot.kaizen.util.MyUtil;

@Service
public class LteFddParameterServiceImpl implements ILteFddParameterService {

	@Autowired
	private LteFddParameterMapper lteFddParameterMapper;

	@Override
	public int insertSelective(LteFddParameter record) {
		return lteFddParameterMapper.insertSelective(record);
	}

	@Override
	public LteFddParameter selectByPrimaryKey(String id) {
		return lteFddParameterMapper.selectByPrimaryKey(id);
	}

	@Override
	public List<LteFddParameter> query(Map<String, Object> map) {
		return lteFddParameterMapper.query(map);
	}

	@Override
	public JsonMsgUtil edit(LteFddParameter lteFddParameter, LoginUser loginUser) {

		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (StringUtils.isNoneBlank(lteFddParameter.getId())) {// edit
			lteFddParameter.setUpdateTime(new Date());
			lteFddParameterMapper.updateByPrimaryKeySelective(lteFddParameter);
		} else {// add
			String id = MyUtil.getUuid();
			Integer projId = Integer.valueOf(loginUser.getProjId().toString());
			Date createTime = new Date();
			Integer createAt = Integer.valueOf(loginUser.getId().toString());

			lteFddParameter.setId(id);
			lteFddParameter.setProjId(projId);
			lteFddParameter.setCreateTime(createTime);
			lteFddParameter.setCreateAt(createAt);
			insertSelective(lteFddParameter);
		}
		return new JsonMsgUtil(true, "修改成功", lteFddParameter);
	}

	@Override
	public JsonMsgUtil findById(String id) {
		if (StringUtils.isBlank(id)) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteFddParameter lteFddParameter = selectByPrimaryKey(id);
		if (lteFddParameter == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", JSONObject.toJSONString(lteFddParameter));
	}

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		if (StringUtils.isNoneBlank(ids)) {
			String[] idsArray = ids.trim().split(",");
			Integer deleteNum = lteFddParameterMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【" + deleteNum + "】条数据", null);
		}
		return j;
	}

	@Override
	public void upSert(LteFddParameter lteFddParameter) {
		Integer projId = lteFddParameter.getProjId();
		String eNodeBID = lteFddParameter.geteNodeBID();
		String cellId = lteFddParameter.getCellId();
		Integer createAt = lteFddParameter.getCreateAt();
		if (projId == null || createAt == null || StringUtils.isBlank(eNodeBID) || StringUtils.isBlank(cellId)) {
			throw new IllegalArgumentException("项目projId、基站号eNodeBID、小区号cellId、创建者createAt不能为空");
		}

		Map<String, Object> map = new HashMap<>();
		map.put("projId", projId);
		map.put("eNodeBID", eNodeBID);
		map.put("cellId", cellId);
		map.put("jzType", lteFddParameter.getJzType());
		map.put("testDate", lteFddParameter.getTestDate());

		List<LteFddParameter> lteFddParameters = lteFddParameterMapper.query(map);
		if (lteFddParameters != null && lteFddParameters.size() > 0) {// 更新
			LteFddParameter model = lteFddParameters.get(0);
			lteFddParameter.setId(model.getId());
			lteFddParameter.setUpdateTime(new Date());
			lteFddParameterMapper.updateByPrimaryKeySelective(lteFddParameter);
		} else {// 创建
			lteFddParameter.setId(MyUtil.getUuid());
			lteFddParameter.setCreateTime(new Date());
			lteFddParameterMapper.insertSelective(lteFddParameter);
		}
	}

}

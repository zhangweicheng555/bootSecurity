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
			if (chechInfo(projId, LteFddCellCheck)) {
				LteFddCellCheck.setId(id);
				LteFddCellCheck.setProjId(projId);
				LteFddCellCheck.setCreateTime(createTime);
				LteFddCellCheck.setCreateAt(createAt);
				insertSelective(LteFddCellCheck);
			}else {
				throw new IllegalArgumentException("该项目下已经存在该站号的信息");
			}
		}
		return new JsonMsgUtil(true, "修改成功", LteFddCellCheck);
	}

	/**
	 * 
	 * @Description: TODO
	 * @author weichengz
	 * @date 2019年2月2日 下午10:56:31
	 */
	private Boolean chechInfo(Integer projId, LteFddCellCheck lteFddCellCheck) {
		Boolean flag=true;
		String cellId = lteFddCellCheck.getCellId();
		String mENodeBID = lteFddCellCheck.getmENodeBID();
		String testTime = lteFddCellCheck.getTestTime();
		if (projId == null || StringUtils.isBlank(cellId) || StringUtils.isBlank(mENodeBID)
				|| StringUtils.isBlank(testTime)) {
			throw new IllegalArgumentException("[项目ID，小区号，基站号，测试时间]不能为空");
		}
		Map<String, Object> map = new HashMap<>();
		map.put("testTime", testTime);
		map.put("mENodeBID", mENodeBID);
		map.put("cellId", cellId);
		map.put("projId", projId);
		List<LteFddCellCheck> lteFddCellChecks = query(map);
		if (lteFddCellChecks != null && lteFddCellChecks.size() > 0) {
			flag=false;
		}
		return flag;
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
			Integer deleteNum = lteFddCellCheckMapper.delete(idsArray);
			j = new JsonMsgUtil(true, "删除操作成功,成功删除【" + deleteNum + "】条数据", null);
		}
		return j;
	}

}

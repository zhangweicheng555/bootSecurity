package com.boot.kaizen.service.lte;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.activiti.engine.RuntimeService;
import org.activiti.engine.TaskService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.lte.LteGcParameterDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.LteGcParameter;
import com.boot.kaizen.service.act.IActBusinessService;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteGcParameterServiceImpl implements ILteGcParameterService {

	@Autowired
	private LteGcParameterDao gcParameterDao;
	@Autowired
	private IActBusinessService actBusinessService;
	@Autowired
	private TaskService taskService;

	@Override
	public List<LteGcParameter> find(Map<String, Object> map) {
		return gcParameterDao.find(map);
	}

	@Override
	public JsonMsgUtil edit(LteGcParameter lteGcParameter, LoginUser loginUser) {
		if (loginUser == null) {
			throw new DisabledException("用户已过期，重新登陆");
		}
		if (lteGcParameter.getId() != null) {// edit
			lteGcParameter.setUpdateTime(new Date());
			gcParameterDao.update(lteGcParameter);
		} else {// add
			lteGcParameter.setProjId(loginUser.getProjId());
			lteGcParameter.setCreateAt(loginUser.getId());
			lteGcParameter.setCreateTime(new Date());
			//根据流程站号判断是不是存在规划表、主要是通过关联表判断
			Long num = actBusinessService.queryCountMatchBusinessKey("LtePlan", "LtePlan_"+lteGcParameter.getmENodeBID()+"_");
			if (num == 0) {
				throw new IllegalArgumentException("规划表中不存在此站号的记录");
			}
			//完成任务
			//记录关联表的关系
			//保存数据
			Long id = gcParameterDao.save(lteGcParameter);
		}
		return new JsonMsgUtil(true, "添加成功", lteGcParameter);
	}

	@Override
	public JsonMsgUtil findById(Long id) {
		if (id == null) {
			throw new IllegalArgumentException("未传入数据id");
		}
		LteGcParameter lteGcParameter = gcParameterDao.findById(id);
		if (lteGcParameter == null) {
			throw new IllegalArgumentException("查询的数据不存在");
		}
		return new JsonMsgUtil(true, "查询成功", lteGcParameter);
	}

	@Override
	public JsonMsgUtil delete(String ids) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		try {
			if (StringUtils.isNoneBlank(ids)) {
				String[] idsArray = ids.trim().split(",");
				Long[] array = new Long[idsArray.length];
				for (int i = 0; i < idsArray.length; i++) {
					String id = idsArray[i];
					array[i] = Long.valueOf(id.trim());
				}
				// 删除项目
				Integer deleteNum = gcParameterDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public List<LteGcParameter> queryGcParameterList(String mENodeBID) {
		return gcParameterDao.queryGcParameterList(mENodeBID);
	}

}

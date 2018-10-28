package com.boot.kaizen.service.lte;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.DisabledException;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.lte.LteGcParameterDao;
import com.boot.kaizen.entity.LoginUser;
import com.boot.kaizen.model.LteGcParameter;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteGcParameterServiceImpl implements ILteGcParameterService {

	@Autowired
	private LteGcParameterDao gcParameterDao;

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
			gcParameterDao.save(lteGcParameter);
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

}

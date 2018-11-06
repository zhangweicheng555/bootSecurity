package com.boot.kaizen.service.act;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.act.ActBusinessDao;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
public class ActBusinessService implements IActBusinessService {

	@Autowired
	private ActBusinessDao actBusinessDao;

	@Override
	public void insert(Map<String, Object> map) {
		actBusinessDao.insert(map);
	}

	@Override
	public String queryPiid(Long id, String bussType) {
		return actBusinessDao.queryPiid(id, bussType);
	}

	@Override
	public JsonMsgUtil findCheckInfo(long id, String bussType) {
		JsonMsgUtil j = new JsonMsgUtil(false);
		Map<String, Object> checkInfo = actBusinessDao.findCheckInfo(id, bussType);
		if (checkInfo != null && !checkInfo.isEmpty()) {
			j = new JsonMsgUtil(true, "操作成功", checkInfo);
		} else {
			j = new JsonMsgUtil(false, "操作成功", new HashMap<>());
		}
		return j;
	}

	@Override
	public void insertAll(Map<String, Object> map) {
		actBusinessDao.insertAll(map);
	}

	@Override
	public void deleteByIdAndType(Long recordId, String bussType) {
		actBusinessDao.deleteByIdAndType(recordId,bussType);
	}

	@Override
	public List<String> queryProcessInstanceIds(Long recordId, String bussType) {
		return actBusinessDao.queryProcessInstanceIds(recordId,bussType);
	}
}

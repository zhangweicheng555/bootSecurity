package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.boot.kaizen.dao.lte.LteStationCheckDao;
import com.boot.kaizen.model.lte.LteStationCheck;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteStationCheckServiceImpl implements ILteStationCheckService {

	@Autowired
	private LteStationCheckDao stationCheckDao;

	@Override
	public List<LteStationCheck> find(Map<String, Object> map) {
		return stationCheckDao.find(map);
	}

	@Transactional
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
				Integer deleteNum = stationCheckDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Transactional
	@Override
	public void batchInsert(List<LteStationCheck> stationChecks) {
		LteStationCheck cellCheck = stationChecks.get(0);
		stationCheckDao.batchInsert(stationChecks);
	}

	@Override
	public LteStationCheck findById(Long id) {
		return stationCheckDao.findById(id);
	}

	@Override
	public void deleteByeNodeBID(String mENodeBID) {
		stationCheckDao.deleteByeNodeBID(mENodeBID);
	}

}

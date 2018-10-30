package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.kaizen.dao.lte.LteCellCheckDao;
import com.boot.kaizen.model.LteCellCheck;
import com.boot.kaizen.util.JsonMsgUtil;

@Service
class LteCellCheckServiceImpl implements ILteCellCheckService {

	@Autowired
	private LteCellCheckDao cellCheckDao;

	@Override
	public List<LteCellCheck> find(Map<String, Object> map) {
		return cellCheckDao.find(map);
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
				Integer deleteNum = cellCheckDao.delete(array);
				j = new JsonMsgUtil(true, "删除操作成功", deleteNum);
			}
		} catch (Exception e) {
			throw e;
		}
		return j;
	}

	@Override
	public void batchInsert(List<LteCellCheck> cellChecks) {
		cellCheckDao.batchInsert(cellChecks);
	}

}

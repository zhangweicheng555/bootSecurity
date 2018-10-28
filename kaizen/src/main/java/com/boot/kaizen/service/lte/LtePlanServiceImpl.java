package com.boot.kaizen.service.lte;

import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.lte.LtePlanDao;
import com.boot.kaizen.model.LtePlan;

@Service
public class LtePlanServiceImpl implements ILtePlanService {
	
	@Autowired
	private LtePlanDao planDao;
	
	@Override
	public List<LtePlan> find(Map<String, Object> map) {
		return planDao.find(map);
	}


}

package com.boot.kaizen.service.lte;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.boot.kaizen.dao.lte.LteLoadTestDao;
import com.boot.kaizen.model.LteLoadTest;

@Service
class LteLoadTestServiceImpl implements ILteLoadTestService {

	@Autowired
	private LteLoadTestDao loadTestDao;

	@Override
	public void save(LteLoadTest lteLoadTest) {
		loadTestDao.save(lteLoadTest);

	}

}

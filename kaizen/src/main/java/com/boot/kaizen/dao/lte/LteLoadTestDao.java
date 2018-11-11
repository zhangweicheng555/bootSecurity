package com.boot.kaizen.dao.lte;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import com.boot.kaizen.model.LteLoadTest;

@Mapper
public interface LteLoadTestDao {
	
	/**
	 * 上传路测信息  app
	 * @param lteLoadTest
	 */
	void save(LteLoadTest lteLoadTest);

	/**
	 * 
	* @Description: 查询
	* @author weichengz
	* @date 2018年11月11日 上午8:28:32
	 */
	List<LteLoadTest> findListByMenodeBID(@Param("mENodeBID") String mENodeBID);
}

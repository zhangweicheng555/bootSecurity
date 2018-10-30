package com.boot.kaizen.dao.lte;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.boot.kaizen.controller.lte.model.BaseStationBean;
import com.boot.kaizen.model.LtePlan;

@Mapper
public interface LtePlanDao {
	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2018年10月28日 下午4:42:04
	 */
	List<LtePlan> find(@Param("map") Map<String, Object> map);

	/**
	 * 
	 * @Description: 保存
	 * @author weichengz
	 * @date 2018年10月28日 下午4:42:11
	 */
	void save(LtePlan ltePlan);

	/**
	 * 
	 * @Description: 查询
	 * @author weichengz
	 * @date 2018年10月28日 下午5:03:03
	 */
	@Select("select * from lte_plane where id=#{id}")
	LtePlan findById(@Param("id") Long id);

	/**
	 * 
	 * @Description: 修改
	 * @author weichengz
	 * @date 2018年10月28日 下午5:43:30
	 */
	void update(LtePlan ltePlan);

	Integer delete(@Param("idsArray") Long[] array);

	/**
	 * 根据用户的id跟项目的id查询任务列表 app
	 * 
	 * @param userId
	 * @param projId
	 * @return
	 */
	List<Map<String, Object>> queryPlanList(@Param("userId") Long userId, @Param("projId") Long projId,
			@Param("nowDate") String nowDate);

	/**
	 * 拉取基站列表 app
	 * 
	 * @param userId
	 * @param projId
	 * @param testDate
	 */
	List<BaseStationBean> queryStationList(@Param("userId") Long userId, @Param("projId") Long projId,
			@Param("testDate") String testDate);

}

package com.boot.kaizen;

import java.util.ArrayList;
import java.util.List;

/**
 * 基站实体类
 */
public class BaseStationBean {

	/* 基站海拔 */private String mAltitude="";
	/* 基站名称 */private String mBaseStationName="";
	/* 基站编号 */private String mENodeBID="";
	/* 基站类型 */private String mBaseStationType="";
	/* 纬度 */private String mLatitude="";
	/* 经度 */private String mLongitude="";
	/* tac */private String mTac="";
	
	/* 小区数据集 */private List<CommunityBean> mCommunityBeanList=new ArrayList<CommunityBean>();
	
	
	
	
	
	
	
	public BaseStationBean() {
		super();
	}
	public BaseStationBean(String mBaseStationName, String mAltitude,
			String mLatitude, String mBaseStationType,
			String mBaseStationNumber, String mLongitude,
			List<CommunityBean> mCommunityBeanList) {
		super();
		this.mBaseStationName = mBaseStationName;
		this.mAltitude = mAltitude;
		this.mLatitude = mLatitude;
		this.mBaseStationType = mBaseStationType;
		this.mBaseStationNumber = mBaseStationNumber;
		this.mLongitude = mLongitude;
		this.mCommunityBeanList = mCommunityBeanList;
	}
	public String getmAltitude() {
		return mAltitude;
	}
	public void setmAltitude(String mAltitude) {
		this.mAltitude = mAltitude;
	}
	public String getmBaseStationName() {
		return mBaseStationName;
	}
	public void setmBaseStationName(String mBaseStationName) {
		this.mBaseStationName = mBaseStationName;
	}
	
	public String getmBaseStationNumber() {
		return mBaseStationNumber;
	}
	public void setmBaseStationNumber(String mBaseStationNumber) {
		this.mBaseStationNumber = mBaseStationNumber;
	}

	public String getmBaseStationType() {
		return mBaseStationType;
	}
	public void setmBaseStationType(String mBaseStationType) {
		this.mBaseStationType = mBaseStationType;
	}
	public String getmLatitude() {
		return mLatitude;
	}
	public void setmLatitude(String mLatitude) {
		this.mLatitude = mLatitude;
	}
	public String getmLongitude() {
		return mLongitude;
	}
	public void setmLongitude(String mLongitude) {
		this.mLongitude = mLongitude;
	}
	
	
	public List<CommunityBean> getmCommunityBeanList() {
		return mCommunityBeanList;
	}
	public void setmCommunityBeanList(List<CommunityBean> mCommunityBeanList) {
		this.mCommunityBeanList = mCommunityBeanList;
	}
	
	
	
	
	
	
	
	
}

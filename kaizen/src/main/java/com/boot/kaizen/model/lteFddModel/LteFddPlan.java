package com.boot.kaizen.model.lteFddModel;

import java.io.Serializable;
import java.util.Date;

/**
 * fdd  fdd宏站是一样的
 * @author weichengz
 * @date 2018年12月31日 上午10:06:55
 */
public class LteFddPlan implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;
	private String mENodeBID;// 基站号
	private String mBaseStationName;// 基站名
	private String testTime;// 测试时间 yyyy-mm-dd
	private String districtCountry;// 区县
	private String address;// 详细地址
	private String mBaseStationType;// 基站类型
	private String deviceType;// 设备类型
	private String videoFrequency;// 频段
	private String mLongitude;// 经度
	private String mLatitude;// 纬度
	private String broadBand;// 传输宽带
	private String ipConfig;// 传输ip配置

	private String region;// 行政区
	private String commonStationName;// 共址站名
	
	private String mAltitude;// 海拔
	
	private String mTac;// tac
	private String testPerson;// 测试工程师
	private String testPersonPhone;// 测试工程师电话
	private String backPerson;// 后台工程师
	private String backPersonPhone;// 后台工程师电话
	private String dealPersonId;// 接收改计划任务的人的id

	private Integer status;// 最终是不是报告可以审核 之后最后一步的时候 才设置为1 0 未审核 1审核通过 2审核不通过
	private String remark;// 审核描述

	// common
	private Integer projId;
	private Date createTime;
	private Date updateTime;
	private Integer createAt;



	private String jzType;

	public String getRegion() {
		return region;
	}

	public void setRegion(String region) {
		this.region = region;
	}

	public String getJzType() {
		return jzType;
	}

	public void setJzType(String jzType) {
		this.jzType = jzType;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCommonStationName() {
		return commonStationName;
	}

	public void setCommonStationName(String commonStationName) {
		this.commonStationName = commonStationName;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id == null ? null : id.trim();
	}

	public String getmENodeBID() {
		return mENodeBID;
	}

	public void setmENodeBID(String mENodeBID) {
		this.mENodeBID = mENodeBID == null ? null : mENodeBID.trim();
	}

	public String getmBaseStationName() {
		return mBaseStationName;
	}

	public void setmBaseStationName(String mBaseStationName) {
		this.mBaseStationName = mBaseStationName == null ? null : mBaseStationName.trim();
	}

	public String getmBaseStationType() {
		return mBaseStationType;
	}

	public void setmBaseStationType(String mBaseStationType) {
		this.mBaseStationType = mBaseStationType == null ? null : mBaseStationType.trim();
	}

	public String getmAltitude() {
		return mAltitude;
	}

	public void setmAltitude(String mAltitude) {
		this.mAltitude = mAltitude == null ? null : mAltitude.trim();
	}

	public String getmLongitude() {
		return mLongitude;
	}

	public void setmLongitude(String mLongitude) {
		this.mLongitude = mLongitude == null ? null : mLongitude.trim();
	}

	public String getmLatitude() {
		return mLatitude;
	}

	public void setmLatitude(String mLatitude) {
		this.mLatitude = mLatitude == null ? null : mLatitude.trim();
	}

	public String getmTac() {
		return mTac;
	}

	public void setmTac(String mTac) {
		this.mTac = mTac == null ? null : mTac.trim();
	}

	public String getTestPerson() {
		return testPerson;
	}

	public void setTestPerson(String testPerson) {
		this.testPerson = testPerson == null ? null : testPerson.trim();
	}

	public String getTestPersonPhone() {
		return testPersonPhone;
	}

	public void setTestPersonPhone(String testPersonPhone) {
		this.testPersonPhone = testPersonPhone == null ? null : testPersonPhone.trim();
	}

	public String getBackPerson() {
		return backPerson;
	}

	public void setBackPerson(String backPerson) {
		this.backPerson = backPerson == null ? null : backPerson.trim();
	}

	public String getBackPersonPhone() {
		return backPersonPhone;
	}

	public void setBackPersonPhone(String backPersonPhone) {
		this.backPersonPhone = backPersonPhone == null ? null : backPersonPhone.trim();
	}

	public String getTestTime() {
		return testTime;
	}

	public void setTestTime(String testTime) {
		this.testTime = testTime == null ? null : testTime.trim();
	}

	public String getDealPersonId() {
		return dealPersonId;
	}

	public void setDealPersonId(String dealPersonId) {
		this.dealPersonId = dealPersonId == null ? null : dealPersonId.trim();
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getProjId() {
		return projId;
	}

	public void setProjId(Integer projId) {
		this.projId = projId;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getCreateAt() {
		return createAt;
	}

	public void setCreateAt(Integer createAt) {
		this.createAt = createAt;
	}

	public String getDistrictCountry() {
		return districtCountry;
	}

	public void setDistrictCountry(String districtCountry) {
		this.districtCountry = districtCountry == null ? null : districtCountry.trim();
	}

	public String getDeviceType() {
		return deviceType;
	}

	public void setDeviceType(String deviceType) {
		this.deviceType = deviceType == null ? null : deviceType.trim();
	}

	public String getVideoFrequency() {
		return videoFrequency;
	}

	public void setVideoFrequency(String videoFrequency) {
		this.videoFrequency = videoFrequency == null ? null : videoFrequency.trim();
	}

	public String getBroadBand() {
		return broadBand;
	}

	public void setBroadBand(String broadBand) {
		this.broadBand = broadBand == null ? null : broadBand.trim();
	}

	public String getIpConfig() {
		return ipConfig;
	}

	public void setIpConfig(String ipConfig) {
		this.ipConfig = ipConfig == null ? null : ipConfig.trim();
	}

	public LteFddPlan(String id, String mENodeBID, String mBaseStationName, String mBaseStationType, String mAltitude,
			String mLongitude, String mLatitude, String mTac, String testPerson, String testPersonPhone,
			String backPerson, String backPersonPhone, String testTime, String dealPersonId, Integer status,
			Integer projId, Date createTime, Date updateTime, Integer createAt, String districtCountry,
			String deviceType, String videoFrequency, String broadBand, String ipConfig) {
		super();
		this.id = id;
		this.mENodeBID = mENodeBID;
		this.mBaseStationName = mBaseStationName;
		this.mBaseStationType = mBaseStationType;
		this.mAltitude = mAltitude;
		this.mLongitude = mLongitude;
		this.mLatitude = mLatitude;
		this.mTac = mTac;
		this.testPerson = testPerson;
		this.testPersonPhone = testPersonPhone;
		this.backPerson = backPerson;
		this.backPersonPhone = backPersonPhone;
		this.testTime = testTime;
		this.dealPersonId = dealPersonId;
		this.status = status;
		this.projId = projId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createAt = createAt;
		this.districtCountry = districtCountry;
		this.deviceType = deviceType;
		this.videoFrequency = videoFrequency;
		this.broadBand = broadBand;
		this.ipConfig = ipConfig;
	}

	public LteFddPlan() {
		super();
	}

	public enum StatueType {
		NO_CHECK(0, "未审核"), CHECK_PASS(1, "审核通过"), CHECK_NO_PASS(2, "审核不通过");

		private Integer code;
		private String name;

		StatueType(Integer code, String name) {
			this.code = code;
			this.name = name;
		}

		public Integer getCode() {
			return code;
		}

		public String getName() {
			return name;
		}

	}
}
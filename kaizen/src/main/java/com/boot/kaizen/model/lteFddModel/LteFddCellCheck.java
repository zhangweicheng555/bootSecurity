package com.boot.kaizen.model.lteFddModel;

import java.io.Serializable;
import java.util.Date;

/**
 * 
 * @author weichengz
 * @date 2018年12月31日 下午6:04:03
 */
public class LteFddCellCheck implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;

	private String mENodeBID;// 基站号
	private String mBaseStationName;// 基站名

	private String cellId;// 小区ID
	private String cellName;// 小区名字

	private String upDownRatio;// 上下行子帧配比
	private String specialRatio;// 特殊子帧配比

	private String frequency;// 频点

	private String pci;// PCI
	private String eci;// eci
	private String tac;// TAC
	private String earfcn;// EARFCN
	private String rsPower;// RsPower
	private String pa;
	private String pb;

	private String antennaHangUp;// 天线挂高
	private String azimuth;// 方位角
	private String mechanicalLowerInclination;// 机械下倾角
	private String presetElectricDip;// 预置电下倾
	private String mtotalLowerInclination;// 总下倾角

	private String ftpDown;// FTP下载速率
	private String ftpUp;// FTP上传速率 单位Mbps

	// RRC Setup Success Rate
	private String rrcSuccRateAttempt;// 尝试次数
	private String rrcSuccRateSucc;// 成功次数
	private String rrcSuccRateFailure;// 失败次数
	// ERAB Setup Success Rate
	private String erabSuccRateAttempt;// 尝试次数
	private String erabSuccRateSucc;// 成功次数
	private String erabSuccRateFailure;// 失败次数
	// Access Success Rate
	private String accessSuccRateAttempt;// 尝试次数
	private String accessSuccRateSucc;// 成功次数
	private String accessSuccRateFailure;// 失败次数

	// VOLTE掉话率
	private String volteFailureAttempt;// 尝试次数
	private String volteFailureSucc;// 成功次数
	private String volteFailureFailure;// 失败次数

	// TD-LTE网络重选至LTE-FDD网络成功率
	private String tdLteCxAttempt;// 尝试次数
	private String tdLteCxSucc;// 成功次数
	private String tdLteCxFailure;// 失败次数

	// LTE-FDD网络重选至TD-LTE网络成功率
	private String lteFddCxAttempt;// 尝试次数
	private String lteFddCxSucc;// 成功次数
	private String lteFddCxFailure;// 失败次数

	// TD-LTE网络切换至LTE-FDD网络成功率
	private String tdLteChangeAttempt;// 尝试次数
	private String tdLteChangeSucc;// 成功次数
	private String tdLteChangeFailure;// 失败次数

	// LTE-FDD网络切换至TD-LTE网络成功率
	private String lteFddChangeAttempt;// 尝试次数
	private String lteFddChangeSucc;// 成功次数
	private String lteFddChangeFailure;// 失败次数

	// 系统内切换

	private String systemChangeAttempt; // diyicvi
	private String systemChangeSucc;
	private String systemChangeFailure;

	// CSFB语音通话后返回成功率
	private String csfbReturnAttempt;
	private String csfbReturnSucc;
	private String csfbReturnFailure;

	private String testTime;

	// common
	private Integer projId;
	private Date createTime;
	private Date updateTime;
	private Integer createAt;

	public String getId() {
		return id;
	}

	public String getTestTime() {
		return testTime;
	}

	public void setTestTime(String testTime) {
		this.testTime = testTime;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getmENodeBID() {
		return mENodeBID;
	}

	public void setmENodeBID(String mENodeBID) {
		this.mENodeBID = mENodeBID;
	}

	public String getmBaseStationName() {
		return mBaseStationName;
	}

	public void setmBaseStationName(String mBaseStationName) {
		this.mBaseStationName = mBaseStationName;
	}

	public String getCellId() {
		return cellId;
	}

	public void setCellId(String cellId) {
		this.cellId = cellId;
	}

	public String getCellName() {
		return cellName;
	}

	public void setCellName(String cellName) {
		this.cellName = cellName;
	}

	public String getUpDownRatio() {
		return upDownRatio;
	}

	public void setUpDownRatio(String upDownRatio) {
		this.upDownRatio = upDownRatio;
	}

	public String getSpecialRatio() {
		return specialRatio;
	}

	public void setSpecialRatio(String specialRatio) {
		this.specialRatio = specialRatio;
	}

	public String getPci() {
		return pci;
	}

	public void setPci(String pci) {
		this.pci = pci;
	}

	public String getEci() {
		return eci;
	}

	public void setEci(String eci) {
		this.eci = eci;
	}

	public String getTac() {
		return tac;
	}

	public void setTac(String tac) {
		this.tac = tac;
	}

	public String getEarfcn() {
		return earfcn;
	}

	public void setEarfcn(String earfcn) {
		this.earfcn = earfcn;
	}

	public String getRsPower() {
		return rsPower;
	}

	public void setRsPower(String rsPower) {
		this.rsPower = rsPower;
	}

	public String getPa() {
		return pa;
	}

	public void setPa(String pa) {
		this.pa = pa;
	}

	public String getPb() {
		return pb;
	}

	public void setPb(String pb) {
		this.pb = pb;
	}

	public String getAntennaHangUp() {
		return antennaHangUp;
	}

	public void setAntennaHangUp(String antennaHangUp) {
		this.antennaHangUp = antennaHangUp;
	}

	public String getAzimuth() {
		return azimuth;
	}

	public void setAzimuth(String azimuth) {
		this.azimuth = azimuth;
	}

	public String getMechanicalLowerInclination() {
		return mechanicalLowerInclination;
	}

	public void setMechanicalLowerInclination(String mechanicalLowerInclination) {
		this.mechanicalLowerInclination = mechanicalLowerInclination;
	}

	public String getPresetElectricDip() {
		return presetElectricDip;
	}

	public void setPresetElectricDip(String presetElectricDip) {
		this.presetElectricDip = presetElectricDip;
	}

	public String getMtotalLowerInclination() {
		return mtotalLowerInclination;
	}

	public void setMtotalLowerInclination(String mtotalLowerInclination) {
		this.mtotalLowerInclination = mtotalLowerInclination;
	}

	public String getFtpDown() {
		return ftpDown;
	}

	public void setFtpDown(String ftpDown) {
		this.ftpDown = ftpDown;
	}

	public String getFtpUp() {
		return ftpUp;
	}

	public void setFtpUp(String ftpUp) {
		this.ftpUp = ftpUp;
	}

	public String getRrcSuccRateAttempt() {
		return rrcSuccRateAttempt;
	}

	public void setRrcSuccRateAttempt(String rrcSuccRateAttempt) {
		this.rrcSuccRateAttempt = rrcSuccRateAttempt;
	}

	public String getRrcSuccRateSucc() {
		return rrcSuccRateSucc;
	}

	public void setRrcSuccRateSucc(String rrcSuccRateSucc) {
		this.rrcSuccRateSucc = rrcSuccRateSucc;
	}

	public String getRrcSuccRateFailure() {
		return rrcSuccRateFailure;
	}

	public void setRrcSuccRateFailure(String rrcSuccRateFailure) {
		this.rrcSuccRateFailure = rrcSuccRateFailure;
	}

	public String getErabSuccRateAttempt() {
		return erabSuccRateAttempt;
	}

	public void setErabSuccRateAttempt(String erabSuccRateAttempt) {
		this.erabSuccRateAttempt = erabSuccRateAttempt;
	}

	public String getErabSuccRateSucc() {
		return erabSuccRateSucc;
	}

	public void setErabSuccRateSucc(String erabSuccRateSucc) {
		this.erabSuccRateSucc = erabSuccRateSucc;
	}

	public String getErabSuccRateFailure() {
		return erabSuccRateFailure;
	}

	public void setErabSuccRateFailure(String erabSuccRateFailure) {
		this.erabSuccRateFailure = erabSuccRateFailure;
	}

	public String getAccessSuccRateAttempt() {
		return accessSuccRateAttempt;
	}

	public void setAccessSuccRateAttempt(String accessSuccRateAttempt) {
		this.accessSuccRateAttempt = accessSuccRateAttempt;
	}

	public String getAccessSuccRateSucc() {
		return accessSuccRateSucc;
	}

	public void setAccessSuccRateSucc(String accessSuccRateSucc) {
		this.accessSuccRateSucc = accessSuccRateSucc;
	}

	public String getAccessSuccRateFailure() {
		return accessSuccRateFailure;
	}

	public void setAccessSuccRateFailure(String accessSuccRateFailure) {
		this.accessSuccRateFailure = accessSuccRateFailure;
	}

	public String getVolteFailureAttempt() {
		return volteFailureAttempt;
	}

	public void setVolteFailureAttempt(String volteFailureAttempt) {
		this.volteFailureAttempt = volteFailureAttempt;
	}

	public String getVolteFailureSucc() {
		return volteFailureSucc;
	}

	public void setVolteFailureSucc(String volteFailureSucc) {
		this.volteFailureSucc = volteFailureSucc;
	}

	public String getVolteFailureFailure() {
		return volteFailureFailure;
	}

	public void setVolteFailureFailure(String volteFailureFailure) {
		this.volteFailureFailure = volteFailureFailure;
	}

	public String getTdLteCxAttempt() {
		return tdLteCxAttempt;
	}

	public void setTdLteCxAttempt(String tdLteCxAttempt) {
		this.tdLteCxAttempt = tdLteCxAttempt;
	}

	public String getTdLteCxSucc() {
		return tdLteCxSucc;
	}

	public void setTdLteCxSucc(String tdLteCxSucc) {
		this.tdLteCxSucc = tdLteCxSucc;
	}

	public String getTdLteCxFailure() {
		return tdLteCxFailure;
	}

	public void setTdLteCxFailure(String tdLteCxFailure) {
		this.tdLteCxFailure = tdLteCxFailure;
	}

	public String getLteFddCxAttempt() {
		return lteFddCxAttempt;
	}

	public void setLteFddCxAttempt(String lteFddCxAttempt) {
		this.lteFddCxAttempt = lteFddCxAttempt;
	}

	public String getLteFddCxSucc() {
		return lteFddCxSucc;
	}

	public void setLteFddCxSucc(String lteFddCxSucc) {
		this.lteFddCxSucc = lteFddCxSucc;
	}

	public String getLteFddCxFailure() {
		return lteFddCxFailure;
	}

	public void setLteFddCxFailure(String lteFddCxFailure) {
		this.lteFddCxFailure = lteFddCxFailure;
	}

	public String getTdLteChangeAttempt() {
		return tdLteChangeAttempt;
	}

	public void setTdLteChangeAttempt(String tdLteChangeAttempt) {
		this.tdLteChangeAttempt = tdLteChangeAttempt;
	}

	public String getTdLteChangeSucc() {
		return tdLteChangeSucc;
	}

	public void setTdLteChangeSucc(String tdLteChangeSucc) {
		this.tdLteChangeSucc = tdLteChangeSucc;
	}

	public String getTdLteChangeFailure() {
		return tdLteChangeFailure;
	}

	public void setTdLteChangeFailure(String tdLteChangeFailure) {
		this.tdLteChangeFailure = tdLteChangeFailure;
	}

	public String getLteFddChangeAttempt() {
		return lteFddChangeAttempt;
	}

	public void setLteFddChangeAttempt(String lteFddChangeAttempt) {
		this.lteFddChangeAttempt = lteFddChangeAttempt;
	}

	public String getLteFddChangeSucc() {
		return lteFddChangeSucc;
	}

	public void setLteFddChangeSucc(String lteFddChangeSucc) {
		this.lteFddChangeSucc = lteFddChangeSucc;
	}

	public String getLteFddChangeFailure() {
		return lteFddChangeFailure;
	}

	public void setLteFddChangeFailure(String lteFddChangeFailure) {
		this.lteFddChangeFailure = lteFddChangeFailure;
	}

	public String getSystemChangeAttempt() {
		return systemChangeAttempt;
	}

	public void setSystemChangeAttempt(String systemChangeAttempt) {
		this.systemChangeAttempt = systemChangeAttempt;
	}

	public String getSystemChangeSucc() {
		return systemChangeSucc;
	}

	public void setSystemChangeSucc(String systemChangeSucc) {
		this.systemChangeSucc = systemChangeSucc;
	}

	public String getSystemChangeFailure() {
		return systemChangeFailure;
	}

	public void setSystemChangeFailure(String systemChangeFailure) {
		this.systemChangeFailure = systemChangeFailure;
	}

	public String getCsfbReturnAttempt() {
		return csfbReturnAttempt;
	}

	public void setCsfbReturnAttempt(String csfbReturnAttempt) {
		this.csfbReturnAttempt = csfbReturnAttempt;
	}

	public String getCsfbReturnSucc() {
		return csfbReturnSucc;
	}

	public void setCsfbReturnSucc(String csfbReturnSucc) {
		this.csfbReturnSucc = csfbReturnSucc;
	}

	public String getCsfbReturnFailure() {
		return csfbReturnFailure;
	}

	public void setCsfbReturnFailure(String csfbReturnFailure) {
		this.csfbReturnFailure = csfbReturnFailure;
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

	public LteFddCellCheck(String id, String mENodeBID, String mBaseStationName, String cellId, String cellName,
			String upDownRatio, String specialRatio, String pci, String eci, String tac, String earfcn, String rsPower,
			String pa, String pb, String antennaHangUp, String azimuth, String mechanicalLowerInclination,
			String presetElectricDip, String mtotalLowerInclination, String ftpDown, String ftpUp,
			String rrcSuccRateAttempt, String rrcSuccRateSucc, String rrcSuccRateFailure, String erabSuccRateAttempt,
			String erabSuccRateSucc, String erabSuccRateFailure, String accessSuccRateAttempt,
			String accessSuccRateSucc, String accessSuccRateFailure, String volteFailureAttempt,
			String volteFailureSucc, String volteFailureFailure, String tdLteCxAttempt, String tdLteCxSucc,
			String tdLteCxFailure, String lteFddCxAttempt, String lteFddCxSucc, String lteFddCxFailure,
			String tdLteChangeAttempt, String tdLteChangeSucc, String tdLteChangeFailure, String lteFddChangeAttempt,
			String lteFddChangeSucc, String lteFddChangeFailure, String systemChangeAttempt, String systemChangeSucc,
			String systemChangeFailure, String csfbReturnAttempt, String csfbReturnSucc, String csfbReturnFailure,
			Integer projId, Date createTime, Date updateTime, Integer createAt) {
		super();
		this.id = id;
		this.mENodeBID = mENodeBID;
		this.mBaseStationName = mBaseStationName;
		this.cellId = cellId;
		this.cellName = cellName;
		this.upDownRatio = upDownRatio;
		this.specialRatio = specialRatio;
		this.pci = pci;
		this.eci = eci;
		this.tac = tac;
		this.earfcn = earfcn;
		this.rsPower = rsPower;
		this.pa = pa;
		this.pb = pb;
		this.antennaHangUp = antennaHangUp;
		this.azimuth = azimuth;
		this.mechanicalLowerInclination = mechanicalLowerInclination;
		this.presetElectricDip = presetElectricDip;
		this.mtotalLowerInclination = mtotalLowerInclination;
		this.ftpDown = ftpDown;
		this.ftpUp = ftpUp;
		this.rrcSuccRateAttempt = rrcSuccRateAttempt;
		this.rrcSuccRateSucc = rrcSuccRateSucc;
		this.rrcSuccRateFailure = rrcSuccRateFailure;
		this.erabSuccRateAttempt = erabSuccRateAttempt;
		this.erabSuccRateSucc = erabSuccRateSucc;
		this.erabSuccRateFailure = erabSuccRateFailure;
		this.accessSuccRateAttempt = accessSuccRateAttempt;
		this.accessSuccRateSucc = accessSuccRateSucc;
		this.accessSuccRateFailure = accessSuccRateFailure;
		this.volteFailureAttempt = volteFailureAttempt;
		this.volteFailureSucc = volteFailureSucc;
		this.volteFailureFailure = volteFailureFailure;
		this.tdLteCxAttempt = tdLteCxAttempt;
		this.tdLteCxSucc = tdLteCxSucc;
		this.tdLteCxFailure = tdLteCxFailure;
		this.lteFddCxAttempt = lteFddCxAttempt;
		this.lteFddCxSucc = lteFddCxSucc;
		this.lteFddCxFailure = lteFddCxFailure;
		this.tdLteChangeAttempt = tdLteChangeAttempt;
		this.tdLteChangeSucc = tdLteChangeSucc;
		this.tdLteChangeFailure = tdLteChangeFailure;
		this.lteFddChangeAttempt = lteFddChangeAttempt;
		this.lteFddChangeSucc = lteFddChangeSucc;
		this.lteFddChangeFailure = lteFddChangeFailure;
		this.systemChangeAttempt = systemChangeAttempt;
		this.systemChangeSucc = systemChangeSucc;
		this.systemChangeFailure = systemChangeFailure;
		this.csfbReturnAttempt = csfbReturnAttempt;
		this.csfbReturnSucc = csfbReturnSucc;
		this.csfbReturnFailure = csfbReturnFailure;
		this.projId = projId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createAt = createAt;
	}

	public LteFddCellCheck() {
		super();
	}

}
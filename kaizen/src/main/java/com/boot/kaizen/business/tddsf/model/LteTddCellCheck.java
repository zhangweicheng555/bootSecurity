package com.boot.kaizen.business.tddsf.model;

import java.io.Serializable;
import java.util.Date;

/**
 * tdd室分小区测试设计
 * 
 * @author weichengz
 * @date 2019年1月25日 上午11:18:13
 */
public class LteTddCellCheck implements Serializable {

	private static final long serialVersionUID = 1L;
	private String id;

	private String enodeBID;// 基站号
	private String baseStationName;// 基站名
	private String cellId;// 小区ID
	private String cellName;// 小区名字

	// 小区参数
	private String upDownRatio;// 上下行子帧配比
	private String specialRatio;// 特殊子帧配比
	private String eci;// eci
	private String earfcn;// EARFCN
	private String pci;// PCI
	private String tac;// TAC
	private String rsPower;// RsPower
	private String pa;
	private String pb;
	private String antennaHangUp;// 合路方式
	private String azimuth;// 单双路

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

	private String volteDownWire; // Volte呼叫掉话率 写死 0%;
	private String volteDelay; // Volte呼叫接入时延 写死 2393.5ms;

	// 系统内切换（室内外切换）
	private String systemInChangeAttempt;
	private String systemInChangeSuccSucc;
	private String systemInChangefailure;

	// 系统间切换
	private String systemOutChangeAttempt;
	private String systemOutChangeSuccSucc;
	private String systemOutChangefailure;

	private String floorHeight;// 楼高

	private String testDate;
	// common
	private Integer projId;
	private Date createTime;
	private Date updateTime;
	private Integer createAt;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	

	public String getEnodeBID() {
		return enodeBID;
	}

	public void setEnodeBID(String enodeBID) {
		this.enodeBID = enodeBID;
	}

	public String getBaseStationName() {
		return baseStationName;
	}

	public void setBaseStationName(String baseStationName) {
		this.baseStationName = baseStationName;
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

	public String getEci() {
		return eci;
	}

	public void setEci(String eci) {
		this.eci = eci;
	}

	public String getEarfcn() {
		return earfcn;
	}

	public void setEarfcn(String earfcn) {
		this.earfcn = earfcn;
	}

	public String getPci() {
		return pci;
	}

	public void setPci(String pci) {
		this.pci = pci;
	}

	public String getTac() {
		return tac;
	}

	public void setTac(String tac) {
		this.tac = tac;
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

	public String getVolteDownWire() {
		return volteDownWire;
	}

	public void setVolteDownWire(String volteDownWire) {
		this.volteDownWire = volteDownWire;
	}

	public String getVolteDelay() {
		return volteDelay;
	}

	public void setVolteDelay(String volteDelay) {
		this.volteDelay = volteDelay;
	}

	public String getSystemInChangeAttempt() {
		return systemInChangeAttempt;
	}

	public void setSystemInChangeAttempt(String systemInChangeAttempt) {
		this.systemInChangeAttempt = systemInChangeAttempt;
	}

	public String getSystemInChangeSuccSucc() {
		return systemInChangeSuccSucc;
	}

	public void setSystemInChangeSuccSucc(String systemInChangeSuccSucc) {
		this.systemInChangeSuccSucc = systemInChangeSuccSucc;
	}

	public String getSystemInChangefailure() {
		return systemInChangefailure;
	}

	public void setSystemInChangefailure(String systemInChangefailure) {
		this.systemInChangefailure = systemInChangefailure;
	}

	public String getSystemOutChangeAttempt() {
		return systemOutChangeAttempt;
	}

	public void setSystemOutChangeAttempt(String systemOutChangeAttempt) {
		this.systemOutChangeAttempt = systemOutChangeAttempt;
	}

	public String getSystemOutChangeSuccSucc() {
		return systemOutChangeSuccSucc;
	}

	public void setSystemOutChangeSuccSucc(String systemOutChangeSuccSucc) {
		this.systemOutChangeSuccSucc = systemOutChangeSuccSucc;
	}

	public String getSystemOutChangefailure() {
		return systemOutChangefailure;
	}

	public void setSystemOutChangefailure(String systemOutChangefailure) {
		this.systemOutChangefailure = systemOutChangefailure;
	}

	public String getFloorHeight() {
		return floorHeight;
	}

	public void setFloorHeight(String floorHeight) {
		this.floorHeight = floorHeight;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
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

	

	public LteTddCellCheck(String id, String enodeBID, String baseStationName, String cellId, String cellName,
			String upDownRatio, String specialRatio, String eci, String earfcn, String pci, String tac, String rsPower,
			String pa, String pb, String antennaHangUp, String azimuth, String rrcSuccRateAttempt,
			String rrcSuccRateSucc, String rrcSuccRateFailure, String erabSuccRateAttempt, String erabSuccRateSucc,
			String erabSuccRateFailure, String accessSuccRateAttempt, String accessSuccRateSucc,
			String accessSuccRateFailure, String volteDownWire, String volteDelay, String systemInChangeAttempt,
			String systemInChangeSuccSucc, String systemInChangefailure, String systemOutChangeAttempt,
			String systemOutChangeSuccSucc, String systemOutChangefailure, String floorHeight, String testDate,
			Integer projId, Date createTime, Date updateTime, Integer createAt) {
		super();
		this.id = id;
		this.enodeBID = enodeBID;
		this.baseStationName = baseStationName;
		this.cellId = cellId;
		this.cellName = cellName;
		this.upDownRatio = upDownRatio;
		this.specialRatio = specialRatio;
		this.eci = eci;
		this.earfcn = earfcn;
		this.pci = pci;
		this.tac = tac;
		this.rsPower = rsPower;
		this.pa = pa;
		this.pb = pb;
		this.antennaHangUp = antennaHangUp;
		this.azimuth = azimuth;
		this.rrcSuccRateAttempt = rrcSuccRateAttempt;
		this.rrcSuccRateSucc = rrcSuccRateSucc;
		this.rrcSuccRateFailure = rrcSuccRateFailure;
		this.erabSuccRateAttempt = erabSuccRateAttempt;
		this.erabSuccRateSucc = erabSuccRateSucc;
		this.erabSuccRateFailure = erabSuccRateFailure;
		this.accessSuccRateAttempt = accessSuccRateAttempt;
		this.accessSuccRateSucc = accessSuccRateSucc;
		this.accessSuccRateFailure = accessSuccRateFailure;
		this.volteDownWire = volteDownWire;
		this.volteDelay = volteDelay;
		this.systemInChangeAttempt = systemInChangeAttempt;
		this.systemInChangeSuccSucc = systemInChangeSuccSucc;
		this.systemInChangefailure = systemInChangefailure;
		this.systemOutChangeAttempt = systemOutChangeAttempt;
		this.systemOutChangeSuccSucc = systemOutChangeSuccSucc;
		this.systemOutChangefailure = systemOutChangefailure;
		this.floorHeight = floorHeight;
		this.testDate = testDate;
		this.projId = projId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createAt = createAt;
	}

	public LteTddCellCheck() {
		super();
	}

}
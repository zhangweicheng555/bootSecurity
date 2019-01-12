package com.boot.kaizen.model.lteFddModel;

import java.io.Serializable;
import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * lte fdd app对接参数信息 以小区为单位
 * 
 * @author weichengz
 * @date 2018年12月31日 下午10:31:14
 */
public class LteFddParameter implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String eNodeBID;// 基站号
	private String mBaseStationName;// 基站名

	/** 小区工程参数 **/
	private String cellId;// 小区号
	private String cellName;// 小区名称
	private String testDate;// 测试时间

	private String eci;
	private String earfcn;
	private String pci;
	private String tac;

	// CSFB手机主叫的呼叫成功率
	private String csfbCallSuccAttempt;// 尝试次数
	private String csfbCallSuccSucc;// 成功次数
	private String csfbCallSuccfailure;// 失败次数

	// CSFB手机被叫的接通成功率
	private String csfbPassiveCallSuccAttempt;
	private String csfbPassiveCallSuccSucc;
	private String csfbPassiveCallSuccfailure;

	private String volteWirelessAttempt;// VOLTE无线接通率 尝试次数
	private String volteWirelessConnSucc;// VOLTE无线接通率 成功次数
	private String volteWirelessConnFailure;// VOLTE无线接通率 失败次数

	private String volteWirelessConnFirst;// VOLTE无线接通率 第一次
	private String volteWirelessConnSecond;// VOLTE无线接通率 第二次
	private String volteWirelessConnBad;// VOLTE无线接通率 差点
	private String volteWirelessConnRandom;// VOLTE无线接通率 任意点

	// CSFB手机语音通话后返回成功率
	private String csfbVoiceSuccAttempt;
	private String csfbVoiceSuccSucc;
	private String csfbVoiceSuccfailure;

	// CSFB手机主叫增加的呼叫接通时延
	private String csfbCallDelay;
	// CSFB手机被叫增加的呼叫接通时延
	private String csfbPassiveCallDelay;
	// CSFB手机语音通话后返回FDD时间
	private String csfbVoiceDelay;

	// FTP下行吞吐率
	private String ftpDownRsrpFirst;// RSRP 第一次
	private String ftpDownRsrpSecond;// RSRP 第二次
	private String ftpDownRsrpBad;// RSRP 差点
	private String ftpDownRsrpRandom;// RSRP 任意点

	private String ftpDownSinrFirst;// Average SINR 第一次
	private String ftpDownSinrSecond;// Average SINR 第二次
	private String ftpDownSinrBad;// Average SINR 差点
	private String ftpDownSinrRandom;// Average SINR 任意点

	private String ftpDownThroughputFirst;// 下行吞吐率 第一次
	private String ftpDownThroughputSecond;// 下行吞吐率 第二次
	private String ftpDownThroughputBad;// 下行吞吐率 差点
	private String ftpDownThroughputRandom;// 下行吞吐率 任意点

	// FTP上行吞吐率
	private String ftpUpRsrpFirst;// RSRP 第一次
	private String ftpUpRsrpSecond;// RSRP 第二次
	private String ftpUpRsrpBad;// RSRP 差点
	private String ftpUpRsrpRandom;// RSRP 任意点

	private String ftpUpSinrFirst;// Average SINR 第一次
	private String ftpUpSinrSecond;// Average SINR 第二次
	private String ftpUpSinrBad;// Average SINR 差点
	private String ftpUpSinrRandom;// Average SINR 任意点

	private String ftpUpThroughputFirst;// 下行吞吐率 第一次
	private String ftpUpThroughputSecond;// 下行吞吐率 第二次
	private String ftpUpThroughputBad;// 下行吞吐率 差点
	private String ftpUpThroughputRandom;// 下行吞吐率 任意点

	private String ftpDownPass;// FTP下载是否通过
	private String ftpUpPass;// FTP上传是否通过

	/**
	 * 图片
	 */
	private String rsrpPic;// RSRP覆盖图
	private String sinrPic;// SINR
	private String downRatePic;// 下载速率
	private String upRatePic;// 上传速率
	private String rsrpWirePic;// RSRP拉线图

	// common
	private Integer projId;
	private Date createTime;
	private Date updateTime;
	private Integer createAt;

	// 上下行子帧配比
	private String updownMatching;
	// 特殊子帧配比
	private String specialMatching;

	// 类型 fdd fdd宏站的区别
	private String jzType;// 1是 fdd 2是宏站

	public String getJzType() {
		return jzType;
	}

	public void setJzType(String jzType) {
		this.jzType = jzType;
	}

	public String getTestDate() {
		return testDate;
	}

	public String getUpdownMatching() {
		return updownMatching;
	}

	public void setUpdownMatching(String updownMatching) {
		this.updownMatching = updownMatching;
	}

	public String getSpecialMatching() {
		return specialMatching;
	}

	public void setSpecialMatching(String specialMatching) {
		this.specialMatching = specialMatching;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public String getFtpDownPass() {
		return ftpDownPass;
	}

	public void setFtpDownPass(String ftpDownPass) {
		this.ftpDownPass = ftpDownPass;
	}

	public String getFtpUpPass() {
		return ftpUpPass;
	}

	public void setFtpUpPass(String ftpUpPass) {
		this.ftpUpPass = ftpUpPass;
	}

	public Integer getProjId() {
		return projId;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setProjId(Integer projId) {
		this.projId = projId;
	}

	@JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
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

	public String geteNodeBID() {
		return eNodeBID;
	}

	public void seteNodeBID(String eNodeBID) {
		this.eNodeBID = eNodeBID;
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

	public String getCsfbCallSuccAttempt() {
		return csfbCallSuccAttempt;
	}

	public void setCsfbCallSuccAttempt(String csfbCallSuccAttempt) {
		this.csfbCallSuccAttempt = csfbCallSuccAttempt;
	}

	public String getCsfbCallSuccSucc() {
		return csfbCallSuccSucc;
	}

	public void setCsfbCallSuccSucc(String csfbCallSuccSucc) {
		this.csfbCallSuccSucc = csfbCallSuccSucc;
	}

	public String getCsfbCallSuccfailure() {
		return csfbCallSuccfailure;
	}

	public void setCsfbCallSuccfailure(String csfbCallSuccfailure) {
		this.csfbCallSuccfailure = csfbCallSuccfailure;
	}

	public String getCsfbPassiveCallSuccAttempt() {
		return csfbPassiveCallSuccAttempt;
	}

	public void setCsfbPassiveCallSuccAttempt(String csfbPassiveCallSuccAttempt) {
		this.csfbPassiveCallSuccAttempt = csfbPassiveCallSuccAttempt;
	}

	public String getCsfbPassiveCallSuccSucc() {
		return csfbPassiveCallSuccSucc;
	}

	public void setCsfbPassiveCallSuccSucc(String csfbPassiveCallSuccSucc) {
		this.csfbPassiveCallSuccSucc = csfbPassiveCallSuccSucc;
	}

	public String getCsfbPassiveCallSuccfailure() {
		return csfbPassiveCallSuccfailure;
	}

	public void setCsfbPassiveCallSuccfailure(String csfbPassiveCallSuccfailure) {
		this.csfbPassiveCallSuccfailure = csfbPassiveCallSuccfailure;
	}

	public String getVolteWirelessConnFirst() {
		return volteWirelessConnFirst;
	}

	public void setVolteWirelessConnFirst(String volteWirelessConnFirst) {
		this.volteWirelessConnFirst = volteWirelessConnFirst;
	}

	public String getVolteWirelessConnSecond() {
		return volteWirelessConnSecond;
	}

	public void setVolteWirelessConnSecond(String volteWirelessConnSecond) {
		this.volteWirelessConnSecond = volteWirelessConnSecond;
	}

	public String getVolteWirelessConnBad() {
		return volteWirelessConnBad;
	}

	public void setVolteWirelessConnBad(String volteWirelessConnBad) {
		this.volteWirelessConnBad = volteWirelessConnBad;
	}

	public String getVolteWirelessConnRandom() {
		return volteWirelessConnRandom;
	}

	public void setVolteWirelessConnRandom(String volteWirelessConnRandom) {
		this.volteWirelessConnRandom = volteWirelessConnRandom;
	}

	public String getCsfbVoiceSuccAttempt() {
		return csfbVoiceSuccAttempt;
	}

	public void setCsfbVoiceSuccAttempt(String csfbVoiceSuccAttempt) {
		this.csfbVoiceSuccAttempt = csfbVoiceSuccAttempt;
	}

	public String getCsfbVoiceSuccSucc() {
		return csfbVoiceSuccSucc;
	}

	public void setCsfbVoiceSuccSucc(String csfbVoiceSuccSucc) {
		this.csfbVoiceSuccSucc = csfbVoiceSuccSucc;
	}

	public String getCsfbVoiceSuccfailure() {
		return csfbVoiceSuccfailure;
	}

	public void setCsfbVoiceSuccfailure(String csfbVoiceSuccfailure) {
		this.csfbVoiceSuccfailure = csfbVoiceSuccfailure;
	}

	public String getCsfbCallDelay() {
		return csfbCallDelay;
	}

	public void setCsfbCallDelay(String csfbCallDelay) {
		this.csfbCallDelay = csfbCallDelay;
	}

	public String getCsfbPassiveCallDelay() {
		return csfbPassiveCallDelay;
	}

	public void setCsfbPassiveCallDelay(String csfbPassiveCallDelay) {
		this.csfbPassiveCallDelay = csfbPassiveCallDelay;
	}

	public String getCsfbVoiceDelay() {
		return csfbVoiceDelay;
	}

	public void setCsfbVoiceDelay(String csfbVoiceDelay) {
		this.csfbVoiceDelay = csfbVoiceDelay;
	}

	public String getFtpDownRsrpFirst() {
		return ftpDownRsrpFirst;
	}

	public void setFtpDownRsrpFirst(String ftpDownRsrpFirst) {
		this.ftpDownRsrpFirst = ftpDownRsrpFirst;
	}

	public String getFtpDownRsrpSecond() {
		return ftpDownRsrpSecond;
	}

	public void setFtpDownRsrpSecond(String ftpDownRsrpSecond) {
		this.ftpDownRsrpSecond = ftpDownRsrpSecond;
	}

	public String getFtpDownRsrpBad() {
		return ftpDownRsrpBad;
	}

	public void setFtpDownRsrpBad(String ftpDownRsrpBad) {
		this.ftpDownRsrpBad = ftpDownRsrpBad;
	}

	public String getFtpDownRsrpRandom() {
		return ftpDownRsrpRandom;
	}

	public void setFtpDownRsrpRandom(String ftpDownRsrpRandom) {
		this.ftpDownRsrpRandom = ftpDownRsrpRandom;
	}

	public String getFtpDownSinrFirst() {
		return ftpDownSinrFirst;
	}

	public void setFtpDownSinrFirst(String ftpDownSinrFirst) {
		this.ftpDownSinrFirst = ftpDownSinrFirst;
	}

	public String getFtpDownSinrSecond() {
		return ftpDownSinrSecond;
	}

	public void setFtpDownSinrSecond(String ftpDownSinrSecond) {
		this.ftpDownSinrSecond = ftpDownSinrSecond;
	}

	public String getFtpDownSinrBad() {
		return ftpDownSinrBad;
	}

	public void setFtpDownSinrBad(String ftpDownSinrBad) {
		this.ftpDownSinrBad = ftpDownSinrBad;
	}

	public String getFtpDownSinrRandom() {
		return ftpDownSinrRandom;
	}

	public void setFtpDownSinrRandom(String ftpDownSinrRandom) {
		this.ftpDownSinrRandom = ftpDownSinrRandom;
	}

	public String getFtpDownThroughputFirst() {
		return ftpDownThroughputFirst;
	}

	public void setFtpDownThroughputFirst(String ftpDownThroughputFirst) {
		this.ftpDownThroughputFirst = ftpDownThroughputFirst;
	}

	public String getFtpDownThroughputSecond() {
		return ftpDownThroughputSecond;
	}

	public void setFtpDownThroughputSecond(String ftpDownThroughputSecond) {
		this.ftpDownThroughputSecond = ftpDownThroughputSecond;
	}

	public String getFtpDownThroughputBad() {
		return ftpDownThroughputBad;
	}

	public void setFtpDownThroughputBad(String ftpDownThroughputBad) {
		this.ftpDownThroughputBad = ftpDownThroughputBad;
	}

	public String getFtpDownThroughputRandom() {
		return ftpDownThroughputRandom;
	}

	public void setFtpDownThroughputRandom(String ftpDownThroughputRandom) {
		this.ftpDownThroughputRandom = ftpDownThroughputRandom;
	}

	public String getFtpUpRsrpFirst() {
		return ftpUpRsrpFirst;
	}

	public void setFtpUpRsrpFirst(String ftpUpRsrpFirst) {
		this.ftpUpRsrpFirst = ftpUpRsrpFirst;
	}

	public String getFtpUpRsrpSecond() {
		return ftpUpRsrpSecond;
	}

	public void setFtpUpRsrpSecond(String ftpUpRsrpSecond) {
		this.ftpUpRsrpSecond = ftpUpRsrpSecond;
	}

	public String getFtpUpRsrpBad() {
		return ftpUpRsrpBad;
	}

	public void setFtpUpRsrpBad(String ftpUpRsrpBad) {
		this.ftpUpRsrpBad = ftpUpRsrpBad;
	}

	public String getFtpUpRsrpRandom() {
		return ftpUpRsrpRandom;
	}

	public void setFtpUpRsrpRandom(String ftpUpRsrpRandom) {
		this.ftpUpRsrpRandom = ftpUpRsrpRandom;
	}

	public String getFtpUpSinrFirst() {
		return ftpUpSinrFirst;
	}

	public void setFtpUpSinrFirst(String ftpUpSinrFirst) {
		this.ftpUpSinrFirst = ftpUpSinrFirst;
	}

	public String getFtpUpSinrSecond() {
		return ftpUpSinrSecond;
	}

	public void setFtpUpSinrSecond(String ftpUpSinrSecond) {
		this.ftpUpSinrSecond = ftpUpSinrSecond;
	}

	public String getFtpUpSinrBad() {
		return ftpUpSinrBad;
	}

	public void setFtpUpSinrBad(String ftpUpSinrBad) {
		this.ftpUpSinrBad = ftpUpSinrBad;
	}

	public String getFtpUpSinrRandom() {
		return ftpUpSinrRandom;
	}

	public void setFtpUpSinrRandom(String ftpUpSinrRandom) {
		this.ftpUpSinrRandom = ftpUpSinrRandom;
	}

	public String getFtpUpThroughputFirst() {
		return ftpUpThroughputFirst;
	}

	public void setFtpUpThroughputFirst(String ftpUpThroughputFirst) {
		this.ftpUpThroughputFirst = ftpUpThroughputFirst;
	}

	public String getFtpUpThroughputSecond() {
		return ftpUpThroughputSecond;
	}

	public void setFtpUpThroughputSecond(String ftpUpThroughputSecond) {
		this.ftpUpThroughputSecond = ftpUpThroughputSecond;
	}

	public String getFtpUpThroughputBad() {
		return ftpUpThroughputBad;
	}

	public void setFtpUpThroughputBad(String ftpUpThroughputBad) {
		this.ftpUpThroughputBad = ftpUpThroughputBad;
	}

	public String getFtpUpThroughputRandom() {
		return ftpUpThroughputRandom;
	}

	public void setFtpUpThroughputRandom(String ftpUpThroughputRandom) {
		this.ftpUpThroughputRandom = ftpUpThroughputRandom;
	}

	public String getRsrpPic() {
		return rsrpPic;
	}

	public void setRsrpPic(String rsrpPic) {
		this.rsrpPic = rsrpPic;
	}

	public String getSinrPic() {
		return sinrPic;
	}

	public void setSinrPic(String sinrPic) {
		this.sinrPic = sinrPic;
	}

	public String getDownRatePic() {
		return downRatePic;
	}

	public void setDownRatePic(String downRatePic) {
		this.downRatePic = downRatePic;
	}

	public String getUpRatePic() {
		return upRatePic;
	}

	public void setUpRatePic(String upRatePic) {
		this.upRatePic = upRatePic;
	}

	public String getRsrpWirePic() {
		return rsrpWirePic;
	}

	public void setRsrpWirePic(String rsrpWirePic) {
		this.rsrpWirePic = rsrpWirePic;
	}

	public LteFddParameter(String id, String eNodeBID, String mBaseStationName, String cellId, String cellName,
			String testDate, String eci, String earfcn, String pci, String tac, String csfbCallSuccAttempt,
			String csfbCallSuccSucc, String csfbCallSuccfailure, String csfbPassiveCallSuccAttempt,
			String csfbPassiveCallSuccSucc, String csfbPassiveCallSuccfailure, String volteWirelessConnFirst,
			String volteWirelessConnSecond, String volteWirelessConnBad, String volteWirelessConnRandom,
			String csfbVoiceSuccAttempt, String csfbVoiceSuccSucc, String csfbVoiceSuccfailure, String csfbCallDelay,
			String csfbPassiveCallDelay, String csfbVoiceDelay, String ftpDownRsrpFirst, String ftpDownRsrpSecond,
			String ftpDownRsrpBad, String ftpDownRsrpRandom, String ftpDownSinrFirst, String ftpDownSinrSecond,
			String ftpDownSinrBad, String ftpDownSinrRandom, String ftpDownThroughputFirst,
			String ftpDownThroughputSecond, String ftpDownThroughputBad, String ftpDownThroughputRandom,
			String ftpUpRsrpFirst, String ftpUpRsrpSecond, String ftpUpRsrpBad, String ftpUpRsrpRandom,
			String ftpUpSinrFirst, String ftpUpSinrSecond, String ftpUpSinrBad, String ftpUpSinrRandom,
			String ftpUpThroughputFirst, String ftpUpThroughputSecond, String ftpUpThroughputBad,
			String ftpUpThroughputRandom, String ftpDownPass, String ftpUpPass, String rsrpPic, String sinrPic,
			String downRatePic, String upRatePic, String rsrpWirePic, Integer projId, Date createTime, Date updateTime,
			Integer createAt) {
		super();
		this.id = id;
		this.eNodeBID = eNodeBID;
		this.mBaseStationName = mBaseStationName;
		this.cellId = cellId;
		this.cellName = cellName;
		this.testDate = testDate;
		this.eci = eci;
		this.earfcn = earfcn;
		this.pci = pci;
		this.tac = tac;
		this.csfbCallSuccAttempt = csfbCallSuccAttempt;
		this.csfbCallSuccSucc = csfbCallSuccSucc;
		this.csfbCallSuccfailure = csfbCallSuccfailure;
		this.csfbPassiveCallSuccAttempt = csfbPassiveCallSuccAttempt;
		this.csfbPassiveCallSuccSucc = csfbPassiveCallSuccSucc;
		this.csfbPassiveCallSuccfailure = csfbPassiveCallSuccfailure;
		this.volteWirelessConnFirst = volteWirelessConnFirst;
		this.volteWirelessConnSecond = volteWirelessConnSecond;
		this.volteWirelessConnBad = volteWirelessConnBad;
		this.volteWirelessConnRandom = volteWirelessConnRandom;
		this.csfbVoiceSuccAttempt = csfbVoiceSuccAttempt;
		this.csfbVoiceSuccSucc = csfbVoiceSuccSucc;
		this.csfbVoiceSuccfailure = csfbVoiceSuccfailure;
		this.csfbCallDelay = csfbCallDelay;
		this.csfbPassiveCallDelay = csfbPassiveCallDelay;
		this.csfbVoiceDelay = csfbVoiceDelay;
		this.ftpDownRsrpFirst = ftpDownRsrpFirst;
		this.ftpDownRsrpSecond = ftpDownRsrpSecond;
		this.ftpDownRsrpBad = ftpDownRsrpBad;
		this.ftpDownRsrpRandom = ftpDownRsrpRandom;
		this.ftpDownSinrFirst = ftpDownSinrFirst;
		this.ftpDownSinrSecond = ftpDownSinrSecond;
		this.ftpDownSinrBad = ftpDownSinrBad;
		this.ftpDownSinrRandom = ftpDownSinrRandom;
		this.ftpDownThroughputFirst = ftpDownThroughputFirst;
		this.ftpDownThroughputSecond = ftpDownThroughputSecond;
		this.ftpDownThroughputBad = ftpDownThroughputBad;
		this.ftpDownThroughputRandom = ftpDownThroughputRandom;
		this.ftpUpRsrpFirst = ftpUpRsrpFirst;
		this.ftpUpRsrpSecond = ftpUpRsrpSecond;
		this.ftpUpRsrpBad = ftpUpRsrpBad;
		this.ftpUpRsrpRandom = ftpUpRsrpRandom;
		this.ftpUpSinrFirst = ftpUpSinrFirst;
		this.ftpUpSinrSecond = ftpUpSinrSecond;
		this.ftpUpSinrBad = ftpUpSinrBad;
		this.ftpUpSinrRandom = ftpUpSinrRandom;
		this.ftpUpThroughputFirst = ftpUpThroughputFirst;
		this.ftpUpThroughputSecond = ftpUpThroughputSecond;
		this.ftpUpThroughputBad = ftpUpThroughputBad;
		this.ftpUpThroughputRandom = ftpUpThroughputRandom;
		this.ftpDownPass = ftpDownPass;
		this.ftpUpPass = ftpUpPass;
		this.rsrpPic = rsrpPic;
		this.sinrPic = sinrPic;
		this.downRatePic = downRatePic;
		this.upRatePic = upRatePic;
		this.rsrpWirePic = rsrpWirePic;
		this.projId = projId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createAt = createAt;
	}

	public String getVolteWirelessAttempt() {
		return volteWirelessAttempt;
	}

	public void setVolteWirelessAttempt(String volteWirelessAttempt) {
		this.volteWirelessAttempt = volteWirelessAttempt;
	}

	public String getVolteWirelessConnSucc() {
		return volteWirelessConnSucc;
	}

	public void setVolteWirelessConnSucc(String volteWirelessConnSucc) {
		this.volteWirelessConnSucc = volteWirelessConnSucc;
	}

	public String getVolteWirelessConnFailure() {
		return volteWirelessConnFailure;
	}

	public void setVolteWirelessConnFailure(String volteWirelessConnFailure) {
		this.volteWirelessConnFailure = volteWirelessConnFailure;
	}

	public LteFddParameter() {
		super();
	}

}

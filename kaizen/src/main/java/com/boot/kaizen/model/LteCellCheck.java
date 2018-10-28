package com.boot.kaizen.model;

/**
 * lte小区核查结果  lte_cell_check
 * 
 * @author weichengz
 * @date 2018年10月28日 上午4:04:02
 */
public class LteCellCheck extends BaseEntity<Long> {

	private static final long serialVersionUID = 1L;

	private Long userId;// 用户id
	private String testDate;// 测试时间
	private String eNodeBID;// 站号
	private String communityName;// 小区名或者小区号

	private String csfb_TestCount;// 语音测试次数
	private String csfb__FallSuccessCount;// 语音回落成功次数
	private String csfb_FallRate;// 语音回落率

	private String good_FtpUpAverageRsrp;// 好点FTP上传-平均RSRP  dBm
	private String good_FtpUpAverageSinr;// 好点FTP上传-平均SINR  dB
	private String good_FtpUpRate;// 好点FTP上传-上传速率                     MB/s

	private String general_FtpUpAverageRsrp;// 中点FTP上传-平均RSRP
	private String general_FtpUpAverageSinr;// 中点FTP上传-平均SINR
	private String general_FtpUpRate;// 中点FTP上传-上传速率

	private String poor_FtpUpAverageRsrp;// 差点FTP上传-平均RSRP
	private String poor_FtpUpAverageSinr;// 差点FTP上传-平均SINR
	private String poor_FtpUpRate;// 差点FTP上传-上传速率

	private String good_FtpDownAverageRsrp;// 好点FTP下载-平均RSRP
	private String good_FtpDownAverageSinr;// 好点FTP下载-平均SINR
	private String good_FtpDownRate;// 好点FTP下载-下载速率

	private String general_FtpDownAverageRsrp;// 中点FTP下载-平均RSRP
	private String general_FtpDownAverageSinr;// 中点FTP下载-平均SINR
	private String general_FtpDownRate;// 中点FTP下载-下载速率

	private String poor_FtpDownAverageRsrp;// 差点FTP下载-平均RSRP
	private String poor_FtpDownAverageSinr;// 差点FTP下载-平均SINR
	private String poor_FtpDownRate;// 差点FTP下载-下载速率          以上单位同上

	private String pci;// PCI
	private String tac;// tac
	private String cellId;// CELL ID
	private String frequency;// 频点

	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getTestDate() {
		return testDate;
	}

	public void setTestDate(String testDate) {
		this.testDate = testDate;
	}

	public String geteNodeBID() {
		return eNodeBID;
	}

	public void seteNodeBID(String eNodeBID) {
		this.eNodeBID = eNodeBID;
	}

	public String getCommunityName() {
		return communityName;
	}

	public void setCommunityName(String communityName) {
		this.communityName = communityName;
	}

	public String getCsfb_TestCount() {
		return csfb_TestCount;
	}

	public void setCsfb_TestCount(String csfb_TestCount) {
		this.csfb_TestCount = csfb_TestCount;
	}

	public String getCsfb__FallSuccessCount() {
		return csfb__FallSuccessCount;
	}

	public void setCsfb__FallSuccessCount(String csfb__FallSuccessCount) {
		this.csfb__FallSuccessCount = csfb__FallSuccessCount;
	}

	public String getCsfb_FallRate() {
		return csfb_FallRate;
	}

	public void setCsfb_FallRate(String csfb_FallRate) {
		this.csfb_FallRate = csfb_FallRate;
	}

	public String getGood_FtpUpAverageRsrp() {
		return good_FtpUpAverageRsrp;
	}

	public void setGood_FtpUpAverageRsrp(String good_FtpUpAverageRsrp) {
		this.good_FtpUpAverageRsrp = good_FtpUpAverageRsrp;
	}

	public String getGood_FtpUpAverageSinr() {
		return good_FtpUpAverageSinr;
	}

	public void setGood_FtpUpAverageSinr(String good_FtpUpAverageSinr) {
		this.good_FtpUpAverageSinr = good_FtpUpAverageSinr;
	}

	public String getGood_FtpUpRate() {
		return good_FtpUpRate;
	}

	public void setGood_FtpUpRate(String good_FtpUpRate) {
		this.good_FtpUpRate = good_FtpUpRate;
	}

	public String getGeneral_FtpUpAverageRsrp() {
		return general_FtpUpAverageRsrp;
	}

	public void setGeneral_FtpUpAverageRsrp(String general_FtpUpAverageRsrp) {
		this.general_FtpUpAverageRsrp = general_FtpUpAverageRsrp;
	}

	public String getGeneral_FtpUpAverageSinr() {
		return general_FtpUpAverageSinr;
	}

	public void setGeneral_FtpUpAverageSinr(String general_FtpUpAverageSinr) {
		this.general_FtpUpAverageSinr = general_FtpUpAverageSinr;
	}

	public String getGeneral_FtpUpRate() {
		return general_FtpUpRate;
	}

	public void setGeneral_FtpUpRate(String general_FtpUpRate) {
		this.general_FtpUpRate = general_FtpUpRate;
	}

	public String getPoor_FtpUpAverageRsrp() {
		return poor_FtpUpAverageRsrp;
	}

	public void setPoor_FtpUpAverageRsrp(String poor_FtpUpAverageRsrp) {
		this.poor_FtpUpAverageRsrp = poor_FtpUpAverageRsrp;
	}

	public String getPoor_FtpUpAverageSinr() {
		return poor_FtpUpAverageSinr;
	}

	public void setPoor_FtpUpAverageSinr(String poor_FtpUpAverageSinr) {
		this.poor_FtpUpAverageSinr = poor_FtpUpAverageSinr;
	}

	public String getPoor_FtpUpRate() {
		return poor_FtpUpRate;
	}

	public void setPoor_FtpUpRate(String poor_FtpUpRate) {
		this.poor_FtpUpRate = poor_FtpUpRate;
	}

	public String getGood_FtpDownAverageRsrp() {
		return good_FtpDownAverageRsrp;
	}

	public void setGood_FtpDownAverageRsrp(String good_FtpDownAverageRsrp) {
		this.good_FtpDownAverageRsrp = good_FtpDownAverageRsrp;
	}

	public String getGood_FtpDownAverageSinr() {
		return good_FtpDownAverageSinr;
	}

	public void setGood_FtpDownAverageSinr(String good_FtpDownAverageSinr) {
		this.good_FtpDownAverageSinr = good_FtpDownAverageSinr;
	}

	public String getGood_FtpDownRate() {
		return good_FtpDownRate;
	}

	public void setGood_FtpDownRate(String good_FtpDownRate) {
		this.good_FtpDownRate = good_FtpDownRate;
	}

	public String getGeneral_FtpDownAverageRsrp() {
		return general_FtpDownAverageRsrp;
	}

	public void setGeneral_FtpDownAverageRsrp(String general_FtpDownAverageRsrp) {
		this.general_FtpDownAverageRsrp = general_FtpDownAverageRsrp;
	}

	public String getGeneral_FtpDownAverageSinr() {
		return general_FtpDownAverageSinr;
	}

	public void setGeneral_FtpDownAverageSinr(String general_FtpDownAverageSinr) {
		this.general_FtpDownAverageSinr = general_FtpDownAverageSinr;
	}

	public String getGeneral_FtpDownRate() {
		return general_FtpDownRate;
	}

	public void setGeneral_FtpDownRate(String general_FtpDownRate) {
		this.general_FtpDownRate = general_FtpDownRate;
	}

	public String getPoor_FtpDownAverageRsrp() {
		return poor_FtpDownAverageRsrp;
	}

	public void setPoor_FtpDownAverageRsrp(String poor_FtpDownAverageRsrp) {
		this.poor_FtpDownAverageRsrp = poor_FtpDownAverageRsrp;
	}

	public String getPoor_FtpDownAverageSinr() {
		return poor_FtpDownAverageSinr;
	}

	public void setPoor_FtpDownAverageSinr(String poor_FtpDownAverageSinr) {
		this.poor_FtpDownAverageSinr = poor_FtpDownAverageSinr;
	}

	public String getPoor_FtpDownRate() {
		return poor_FtpDownRate;
	}

	public void setPoor_FtpDownRate(String poor_FtpDownRate) {
		this.poor_FtpDownRate = poor_FtpDownRate;
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

	public String getCellId() {
		return cellId;
	}

	public void setCellId(String cellId) {
		this.cellId = cellId;
	}

	public String getFrequency() {
		return frequency;
	}

	public void setFrequency(String frequency) {
		this.frequency = frequency;
	}

	public LteCellCheck(Long userId, String testDate, String eNodeBID, String communityName, String csfb_TestCount,
			String csfb__FallSuccessCount, String csfb_FallRate, String good_FtpUpAverageRsrp,
			String good_FtpUpAverageSinr, String good_FtpUpRate, String general_FtpUpAverageRsrp,
			String general_FtpUpAverageSinr, String general_FtpUpRate, String poor_FtpUpAverageRsrp,
			String poor_FtpUpAverageSinr, String poor_FtpUpRate, String good_FtpDownAverageRsrp,
			String good_FtpDownAverageSinr, String good_FtpDownRate, String general_FtpDownAverageRsrp,
			String general_FtpDownAverageSinr, String general_FtpDownRate, String poor_FtpDownAverageRsrp,
			String poor_FtpDownAverageSinr, String poor_FtpDownRate, String pci, String tac, String cellId,
			String frequency) {
		super();
		this.userId = userId;
		this.testDate = testDate;
		this.eNodeBID = eNodeBID;
		this.communityName = communityName;
		this.csfb_TestCount = csfb_TestCount;
		this.csfb__FallSuccessCount = csfb__FallSuccessCount;
		this.csfb_FallRate = csfb_FallRate;
		this.good_FtpUpAverageRsrp = good_FtpUpAverageRsrp;
		this.good_FtpUpAverageSinr = good_FtpUpAverageSinr;
		this.good_FtpUpRate = good_FtpUpRate;
		this.general_FtpUpAverageRsrp = general_FtpUpAverageRsrp;
		this.general_FtpUpAverageSinr = general_FtpUpAverageSinr;
		this.general_FtpUpRate = general_FtpUpRate;
		this.poor_FtpUpAverageRsrp = poor_FtpUpAverageRsrp;
		this.poor_FtpUpAverageSinr = poor_FtpUpAverageSinr;
		this.poor_FtpUpRate = poor_FtpUpRate;
		this.good_FtpDownAverageRsrp = good_FtpDownAverageRsrp;
		this.good_FtpDownAverageSinr = good_FtpDownAverageSinr;
		this.good_FtpDownRate = good_FtpDownRate;
		this.general_FtpDownAverageRsrp = general_FtpDownAverageRsrp;
		this.general_FtpDownAverageSinr = general_FtpDownAverageSinr;
		this.general_FtpDownRate = general_FtpDownRate;
		this.poor_FtpDownAverageRsrp = poor_FtpDownAverageRsrp;
		this.poor_FtpDownAverageSinr = poor_FtpDownAverageSinr;
		this.poor_FtpDownRate = poor_FtpDownRate;
		this.pci = pci;
		this.tac = tac;
		this.cellId = cellId;
		this.frequency = frequency;
	}

	public LteCellCheck() {
		super();
	}

}

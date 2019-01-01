package com.boot.kaizen.model.lteFddModel;

import java.io.Serializable;
import java.util.Date;

/**
 * lte fdd app对接参数信息 以基站为单位
 * 
 * @author weichengz
 * @date 2019年1月1日 上午12:30:48
 */
public class LteFddStation implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String mENodeBID;// 基站号
	private String mBaseStationName;// 基站名

	private String csfbFunctionTest;// CSFB功能测试 是否通过
	private String volteFunctionTest;// VoLTE功能测试 是否通过

	private String fourCoverCheck;// 四超(超近、超远、超高、超重叠覆盖)检查 是否通过
	private String heightLocationDirectionCheck;// 天线挂高、位置、方向检查 是否通过
	private String skyBlockCheck;// 天面阻挡情况检查 是否通过
	private String wireBackCheck;// 天线后期可调整情况检查 是否通过

	/**
	 * 图片
	 */
	private String allViewPic;// 建筑物全景照（从地面仰视）
	private String stationEntrancePic;// 站点入口图
	private String roofViewPic;// 屋顶天面全景图

	// 天面 每个小区一张
	private String cellFirstPic;// 小区1
	private String cellScecondPic;// 小区2
	private String cellThirdPic;// 小区3

	// 站点周边区域
	private String stationDirection0;// o度
	private String stationDirection45;// 45
	private String stationDirection90;// 90
	private String stationDirection135;//
	private String stationDirection180;//
	private String stationDirection225;//
	private String stationDirection270;//
	private String stationDirection315;//

	// 基站遍历覆盖效果图
	private String stationRsrpPic;// RSRP覆盖图
	private String stationSinrPic;// SINR覆盖图
	private String stationDownRatePic;// 下载速率
	private String stationPciPic;// PCI

	// common
	private Integer projId;
	private Date createTime;
	private Date updateTime;
	private Integer createAt;// 登陆人

	public String getId() {
		return id;
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

	public String getCsfbFunctionTest() {
		return csfbFunctionTest;
	}

	public void setCsfbFunctionTest(String csfbFunctionTest) {
		this.csfbFunctionTest = csfbFunctionTest;
	}

	public String getVolteFunctionTest() {
		return volteFunctionTest;
	}

	public void setVolteFunctionTest(String volteFunctionTest) {
		this.volteFunctionTest = volteFunctionTest;
	}

	public String getFourCoverCheck() {
		return fourCoverCheck;
	}

	public void setFourCoverCheck(String fourCoverCheck) {
		this.fourCoverCheck = fourCoverCheck;
	}

	public String getHeightLocationDirectionCheck() {
		return heightLocationDirectionCheck;
	}

	public void setHeightLocationDirectionCheck(String heightLocationDirectionCheck) {
		this.heightLocationDirectionCheck = heightLocationDirectionCheck;
	}

	public String getSkyBlockCheck() {
		return skyBlockCheck;
	}

	public void setSkyBlockCheck(String skyBlockCheck) {
		this.skyBlockCheck = skyBlockCheck;
	}

	public String getWireBackCheck() {
		return wireBackCheck;
	}

	public void setWireBackCheck(String wireBackCheck) {
		this.wireBackCheck = wireBackCheck;
	}

	public String getAllViewPic() {
		return allViewPic;
	}

	public void setAllViewPic(String allViewPic) {
		this.allViewPic = allViewPic;
	}

	public String getStationEntrancePic() {
		return stationEntrancePic;
	}

	public void setStationEntrancePic(String stationEntrancePic) {
		this.stationEntrancePic = stationEntrancePic;
	}

	public String getRoofViewPic() {
		return roofViewPic;
	}

	public void setRoofViewPic(String roofViewPic) {
		this.roofViewPic = roofViewPic;
	}

	public String getCellFirstPic() {
		return cellFirstPic;
	}

	public void setCellFirstPic(String cellFirstPic) {
		this.cellFirstPic = cellFirstPic;
	}

	public String getCellScecondPic() {
		return cellScecondPic;
	}

	public void setCellScecondPic(String cellScecondPic) {
		this.cellScecondPic = cellScecondPic;
	}

	public String getCellThirdPic() {
		return cellThirdPic;
	}

	public void setCellThirdPic(String cellThirdPic) {
		this.cellThirdPic = cellThirdPic;
	}

	public String getStationDirection0() {
		return stationDirection0;
	}

	public void setStationDirection0(String stationDirection0) {
		this.stationDirection0 = stationDirection0;
	}

	public String getStationDirection45() {
		return stationDirection45;
	}

	public void setStationDirection45(String stationDirection45) {
		this.stationDirection45 = stationDirection45;
	}

	public String getStationDirection90() {
		return stationDirection90;
	}

	public void setStationDirection90(String stationDirection90) {
		this.stationDirection90 = stationDirection90;
	}

	public String getStationDirection135() {
		return stationDirection135;
	}

	public void setStationDirection135(String stationDirection135) {
		this.stationDirection135 = stationDirection135;
	}

	public String getStationDirection180() {
		return stationDirection180;
	}

	public void setStationDirection180(String stationDirection180) {
		this.stationDirection180 = stationDirection180;
	}

	public String getStationDirection225() {
		return stationDirection225;
	}

	public void setStationDirection225(String stationDirection225) {
		this.stationDirection225 = stationDirection225;
	}

	public String getStationDirection270() {
		return stationDirection270;
	}

	public void setStationDirection270(String stationDirection270) {
		this.stationDirection270 = stationDirection270;
	}

	public String getStationDirection315() {
		return stationDirection315;
	}

	public void setStationDirection315(String stationDirection315) {
		this.stationDirection315 = stationDirection315;
	}

	public String getStationRsrpPic() {
		return stationRsrpPic;
	}

	public void setStationRsrpPic(String stationRsrpPic) {
		this.stationRsrpPic = stationRsrpPic;
	}

	public String getStationSinrPic() {
		return stationSinrPic;
	}

	public void setStationSinrPic(String stationSinrPic) {
		this.stationSinrPic = stationSinrPic;
	}

	public String getStationDownRatePic() {
		return stationDownRatePic;
	}

	public void setStationDownRatePic(String stationDownRatePic) {
		this.stationDownRatePic = stationDownRatePic;
	}

	public String getStationPciPic() {
		return stationPciPic;
	}

	public void setStationPciPic(String stationPciPic) {
		this.stationPciPic = stationPciPic;
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

	public LteFddStation(String id, String mENodeBID, String mBaseStationName, String csfbFunctionTest,
			String volteFunctionTest, String fourCoverCheck, String heightLocationDirectionCheck, String skyBlockCheck,
			String wireBackCheck, String allViewPic, String stationEntrancePic, String roofViewPic, String cellFirstPic,
			String cellScecondPic, String cellThirdPic, String stationDirection0, String stationDirection45,
			String stationDirection90, String stationDirection135, String stationDirection180,
			String stationDirection225, String stationDirection270, String stationDirection315, String stationRsrpPic,
			String stationSinrPic, String stationDownRatePic, String stationPciPic, Integer projId, Date createTime,
			Date updateTime, Integer createAt) {
		super();
		this.id = id;
		this.mENodeBID = mENodeBID;
		this.mBaseStationName = mBaseStationName;
		this.csfbFunctionTest = csfbFunctionTest;
		this.volteFunctionTest = volteFunctionTest;
		this.fourCoverCheck = fourCoverCheck;
		this.heightLocationDirectionCheck = heightLocationDirectionCheck;
		this.skyBlockCheck = skyBlockCheck;
		this.wireBackCheck = wireBackCheck;
		this.allViewPic = allViewPic;
		this.stationEntrancePic = stationEntrancePic;
		this.roofViewPic = roofViewPic;
		this.cellFirstPic = cellFirstPic;
		this.cellScecondPic = cellScecondPic;
		this.cellThirdPic = cellThirdPic;
		this.stationDirection0 = stationDirection0;
		this.stationDirection45 = stationDirection45;
		this.stationDirection90 = stationDirection90;
		this.stationDirection135 = stationDirection135;
		this.stationDirection180 = stationDirection180;
		this.stationDirection225 = stationDirection225;
		this.stationDirection270 = stationDirection270;
		this.stationDirection315 = stationDirection315;
		this.stationRsrpPic = stationRsrpPic;
		this.stationSinrPic = stationSinrPic;
		this.stationDownRatePic = stationDownRatePic;
		this.stationPciPic = stationPciPic;
		this.projId = projId;
		this.createTime = createTime;
		this.updateTime = updateTime;
		this.createAt = createAt;
	}

	public LteFddStation() {
		super();
	}

}

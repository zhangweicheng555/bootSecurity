package com.boot.kaizen.model.duijie;

import java.io.Serializable;

/**
 * fdd fddhz一样 lte fdd app对接参数信息 以基站为单位
 * 
 * @author weichengz
 * @date 2019年1月1日 上午12:30:48
 */
public class LteFddStation2 implements Serializable {

	private static final long serialVersionUID = 1L;

	private String eNodeBID;// 基站号
	private String mBaseStationName;// 基站名

	private String csfbFunctionTest;// CSFB功能测试 是否通过
	private String volteFunctionTest;// VoLTE功能测试 是否通过

	private String fourCoverCheck;// 四超(超近、超远、超高、超重叠覆盖)检查 是否通过
	private String heightLocationDirectionCheck;// 天线挂高、位置、方向检查 是否通过
	private String skyBlockCheck;// 天面阻挡情况检查 是否通过
	private String wireBackCheck;// 天线后期可调整情况检查 是否通过

	// common
	private Integer projId;
	private Integer userId;// 登陆人的id

	private String testDate;// 测试时间
	private String latitude;// 经度
	private String longitude;// 纬度
	private String tac;// TAC

	// 站点周边区域
	private String stationDirection0;// o度
	private String stationDirection45;// 45
	private String stationDirection90;// 90
	private String stationDirection135;//
	private String stationDirection180;//
	private String stationDirection225;//
	private String stationDirection270;//
	private String stationDirection315;//

	private String stationType;// 站点类型
	private String buildingFunction;// 建筑物功能
	private String floorsNum;// 楼层数楼高
	private String yuanTaWeizhi;// 原塔桅位置
	private String yuanTiMianFs;// 原天面方式
	private String yuanTiMianGg;// 原天面挂高
	private String xinZengTiMianType;// 新增天面类型
	private String reasonDescrib;// 原因说明
	private String xinZengTiMianFs;// 新增天面方式
	private String reasonDescribNew;// 原因说明
	private String xinZengFwj;// 新增天线方位角
	private String xinTiMianGg;// 新天面挂高
	private String tianMianZd;// 天面是否有阻挡
	private String stationDistance;// 站间距
	private String remark;// 备注

	/**
	 * 以下为上传图片的名字
	 */
	private String allViewPic;// 建筑物全景照（从地面仰视）
	private String stationEntrancePic;// 站点入口图
	private String roofViewPic;// 屋顶天面全景图

	// 基站遍历覆盖效果图
	private String stationRsrpPic;// RSRP覆盖图
	private String stationSinrPic;// SINR覆盖图
	private String stationDownRatePic;// 下载速率
	private String stationPciPic;// PCI

	// 天面 每个小区一张
	private String cellFirstPic;// 小区1
	private String cellScecondPic;// 小区2
	private String cellThirdPic;// 小区3

}

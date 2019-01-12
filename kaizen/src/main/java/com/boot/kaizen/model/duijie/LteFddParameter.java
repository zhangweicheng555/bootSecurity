package com.boot.kaizen.model.duijie;

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
	// 上下行子帧配比
	private String updownMatching;
	// 特殊子帧配比
	private String specialMatching;
	// CSFB手机主叫的呼叫成功率
	private String csfbCallSuccAttempt;// 尝试次数
	private String csfbCallSuccSucc;// 成功次数
	private String csfbCallSuccfailure;// 失败次数

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

	// common
	private Integer projId;
	private Integer userId;

	private String volteWirelessAttempt;// volte呼叫成功率 尝试次数
	private String volteWirelessConnSucc;// VOLTE无线接通率 成功次数
	private String volteWirelessConnFailure;// VOLTE无线接通率 失败次数

	// volte呼叫掉线率
	private String csfbPassiveCallSuccAttempt; // 尝试次数
	private String csfbPassiveCallSuccSucc; // 成功次数
	private String csfbPassiveCallSuccfailure;// 失败次数

	/**
	 * 图片
	 */
	private String rsrpPic;// RSRP覆盖图
	private String sinrPic;// SINR
	private String downRatePic;// 下载速率
	private String upRatePic;// 上传速率
	private String rsrpWirePic;// RSRP拉线图

}

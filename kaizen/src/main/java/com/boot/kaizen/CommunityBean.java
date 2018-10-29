package com.boot.kaizen;

import java.util.ArrayList;
import java.util.List;

/**
 * 小区数数据集
 */
public class CommunityBean {

	/* 小区名字 */private String mCommunityBeanName="";
	/*小区工程*/private MCommunityProjectBean mCommunityProject;
	/*小区网优*/private MCommunityNetworkOptimizationBean mCommunityNetworkOptimization;
	
	
	
	
	
	
	
	
	public String getmCommunityBeanName() {
		return mCommunityBeanName;
	}
	public void setmCommunityBeanName(String mCommunityBeanName) {
		this.mCommunityBeanName = mCommunityBeanName;
	}
	public MCommunityProjectBean getmCommunityProject() {
		return mCommunityProject;
	}
	public void setmCommunityProject(MCommunityProjectBean mCommunityProject) {
		this.mCommunityProject = mCommunityProject;
	}
	public MCommunityNetworkOptimizationBean getmCommunityNetworkOptimization() {
		return mCommunityNetworkOptimization;
	}
	public void setmCommunityNetworkOptimization(
			MCommunityNetworkOptimizationBean mCommunityNetworkOptimization) {
		this.mCommunityNetworkOptimization = mCommunityNetworkOptimization;
	}
	public List<String> getmCommunityTestItemList() {
		return mCommunityTestItemList;
	}
	public void setmCommunityTestItemList(List<String> mCommunityTestItemList) {
		this.mCommunityTestItemList = mCommunityTestItemList;
	}
	public CommunityBean() {
		super();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

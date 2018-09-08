package com.boot.kaizen.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.boot.kaizen.model.ParamTest;
import com.boot.kaizen.model.SysTest;
import com.boot.kaizen.service.SysTestService;
import com.github.pagehelper.ISelect;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * app对接相关接口
 */

@RestController
@RequestMapping("/user")
public class TestController {

	@Autowired
	private SysTestService sysUserService;

	@RequestMapping(value = "/list")
	@ResponseBody
	public List<SysTest> searchTest() {
		PageHelper.startPage(4, 2);
		// Page{count=true, pageNum=1, pageSize=2, startRow=0, endRow=2, total=7,
		// pages=4, reasonable=true, pageSizeZero=false}
		List<SysTest> list = sysUserService.findTest();
		Page<SysTest> page = (Page<SysTest>) list;
		for (SysTest sysTest : list) {

		}
		return list;
	}

	@RequestMapping(value = "/list1")
	@ResponseBody
	public Object searchTest1() {
		/*
		 * List<SysTest> list = sysUserService.findTest(4,2); for (SysTest sysTest :
		 * list) {
		 * 
		 * }
		 */
		/*
		 * Page<SysTest> page = PageHelper.startPage(2, 2).doSelectPage(new ISelect() {
		 * 
		 * @Override public void doSelect() { sysUserService.findTest(); } });
		 */
		/*PageInfo<SysTest> pageInfo = PageHelper.startPage(7, 3).doSelectPageInfo(new ISelect() {
			@Override
			public void doSelect() {
				sysUserService.findTest();
			}
		});*/
		return null;
	}

	@RequestMapping(value = "/list2")
	@ResponseBody
	public List<SysTest> searchTest2() {
		ParamTest paramTest = new ParamTest(3, 2);
		List<SysTest> list = sysUserService.findTest(paramTest);
		for (SysTest sysTest : list) {

		}
		return list;
	}

}

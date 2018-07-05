package com.multi.myhome1.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.myhome1.test.dto.TestDto;
import com.multi.myhome1.test.service.TestService;

@Controller
public class TestController {

	@Autowired
	TestService service;
	
	@RequestMapping("/test/test1")
	public void test()
	{
		TestDto dto = new TestDto();
		dto.setId("1");
		dto.setTest("test1");
		
		
		service.insert(dto);
	}
}

package com.multi.myhome1;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.myhome1.dto.TestDto;

@Controller
public class Testcontroller22 {

	// ������ �������Ҷ�
	@RequestMapping(value = "/test")
	public String sayHello() {
		return "HELLOOOO";
		// HELLOOOO jsp�� ã�ƶ�
	}

	// ������ �������Ҷ�
	@RequestMapping(value = "/test1")
	public String test1() {
		System.out.println("test1");
		return "hello";
		// test1 jsp�� ã�ƶ�
	}

	@RequestMapping(value = "doA")
	public void doA() {
		System.out.println("doA call...................................");
	}

	@RequestMapping("/test/doA")
	public void doAA() {
		System.out.println("/test/doA call...................................");
	}

	@RequestMapping("doB")
	public void doB(@ModelAttribute("msg") String msg)
	// String msg�� �ᵵ �ȴ�.
	{
		// /doB?msg=test

		System.out.println("msg : " + msg);
	}

	@RequestMapping("doC")
	public void doCC(HttpServletRequest req, @ModelAttribute("x") int x, 
												@ModelAttribute("y")int y, 
												@ModelAttribute("msg")String msg) 
	{
		// /doCC?x=23&y=84
		
		System.out.println(msg);
		System.out.println(req.getParameter("x"));
		System.out.println(req.getParameter("y"));

		System.out.println("result : " + (x+y));
	}
	
	@RequestMapping("doD")
	public void doD(@ModelAttribute("testDto")TestDto testDto)
	{
		//doD.mt?name=tom&age=23&address=homme
		System.out.println(testDto.getName());
		System.out.println(testDto.getAge());
		System.out.println(testDto.getAddress());
	}
	

}
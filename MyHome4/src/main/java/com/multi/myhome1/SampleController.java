package com.multi.myhome1;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.multi.myhome1.dto.TestDto;

@Controller 
public class SampleController {
	private static final Logger logger=
			LoggerFactory.getLogger(
					SampleController.class);
	@RequestMapping("/sample/doD")
	public void doD(Model model)
	{
		logger.info("sampleController doD");
		
		model.addAttribute("name", "홍길동");
		model.addAttribute("age", "23");
		model.addAttribute("address", "서울시");
	}
	
	@RequestMapping("/sample/sam1")
	public ModelAndView sam1()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("/sample/sam1");
		mv.addObject("x", 10);
		mv.addObject("y", 20);
		
		return mv;
	}
	
	@RequestMapping("/sample/sam2")
	public String sam2(RedirectAttributes rttr)
	{
		logger.info("called sam2");
		rttr.addFlashAttribute("msg",
				"Hello");
		return "redirect:/sample/sam3.mt";
	}
	
	@RequestMapping("/sample/sam3")
	public void sam3(@ModelAttribute("msg")String msg)
	{
		logger.info("sam3 "+ msg);
	}
	
	
	@RequestMapping("/sample/sam4")
	public @ResponseBody TestDto sam4()
	{
		TestDto dto = new TestDto();
		dto.setName("Brown");
		dto.setAge(34);
		dto.setAddress("LosAngels");
		
		return dto; 
		
		/*HashMap<String, String> map=new HashMap<String, String>();
		map.put("name",  "tom");
		map.put("age", "34");
		return map;*/
	}
}

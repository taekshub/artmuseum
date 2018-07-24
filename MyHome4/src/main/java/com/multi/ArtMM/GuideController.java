package com.multi.ArtMM;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GuideController {
	@RequestMapping("/guide")
	public String guide() {
		return "/guide/guide";
	}
	
	@RequestMapping("/guide/list")
	public String list() {
		return "/guide/list";
	}
	
	@RequestMapping("/guide/write")
	public String write() {
		return "/guide/write";
	}
	@RequestMapping("/guide/view")
	public String view() {
		return "/guide/view";
	}
	
	
}	

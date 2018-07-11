package com.multi.myhome1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MuseumController {
	@RequestMapping("/museum")
	public String museum() {
		return "/museum/museum";
	}
	
	@RequestMapping("/museum2")
	public String museum2() {
		return "/museum/museum2";
	}

}

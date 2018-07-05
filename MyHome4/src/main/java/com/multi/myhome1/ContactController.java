package com.multi.myhome1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	@RequestMapping("/contact")
	public String about() {
		return "/contact/contact";
	}

}

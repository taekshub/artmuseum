package com.multi.ArtMM;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	@RequestMapping("/contact")
	public String about() {
		return "/contact/contact";
	}

}

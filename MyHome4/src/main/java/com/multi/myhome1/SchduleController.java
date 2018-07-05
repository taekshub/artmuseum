package com.multi.myhome1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SchduleController {
	@RequestMapping("/schedule")
	public String schedule() {
		return "/schedule/schedule";
	}

}

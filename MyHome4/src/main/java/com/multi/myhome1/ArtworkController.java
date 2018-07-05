package com.multi.myhome1;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ArtworkController {
	@RequestMapping("/artwork")
	public String artwork() {
		return "/artwork/artwork";
	}

}

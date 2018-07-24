package com.multi.ArtMM;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SchduleController {
	@RequestMapping("/schedule")
	public String schedule() {
		return "/schedule/schedule";
	}
	
	@RequestMapping("/scheduleList")
	public @ResponseBody List<HashMap> scheduleList(String start)
	{
		List<HashMap> list = new ArrayList<HashMap>();
		
		if( start==null || start.equals("2018-07"))
		{
			HashMap map = new HashMap();
			map.put("title", "놀러가는날");
			map.put("start", "2018-07-18");
			list.add(map);
		
			map = new HashMap();
			map.put("title", "놀러가는날2");
			map.put("start", "2018-07-19");
			list.add(map);
	
			map = new HashMap();
			map.put("title", "놀러가는날3");
			map.put("start", "2018-07-20");
			list.add(map);
	
			map = new HashMap();
			map.put("title", "놀러가는날4");
			map.put("start", "2018-07-21");
			list.add(map);
		}
		else
		{
			HashMap map = new HashMap();
			map.put("title", "오션월드1");
			map.put("start", "2018-06-18");
			list.add(map);
		
			map = new HashMap();
			map.put("title", "설악산");
			map.put("start", "2018-06-19");
			list.add(map);
	
			map = new HashMap();
			map.put("title", "오대산");
			map.put("start", "2018-06-10");
			list.add(map);
	
			map = new HashMap();
			map.put("title", "지리산");
			map.put("start", "2018-06-11");
			list.add(map);
		}
		return list;
	}
	
	

}

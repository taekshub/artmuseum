package com.multi.myhome1.score.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.multi.myhome1.score.dto.ScoreDto;
import com.multi.myhome1.score.service.ScoreService;

@Controller
public class ScoreController {

	@Autowired 
	ScoreService scoreService;
	
	@RequestMapping(value="/score/list", 
			method=RequestMethod.GET)
	public void list(ScoreDto dto, Model model) 
	{
		List<ScoreDto> list = scoreService.geList(dto);
		for(int i=0; i<list.size(); i++)
		{
			ScoreDto d=list.get(i);
			System.out.print(d.getSeq()+"\t");
			System.out.print(d.getName()+"\t");
			System.out.print(d.getKor()+"\t");
			System.out.print(d.getEng()+"\t");
			System.out.print(d.getTotal()+"\t");
			System.out.print(d.getWdate()+"\n");
		}
		//jsp로 전달하고 싶으면 Model객체에 저장하자 
		model.addAttribute("list", list);
	}
}



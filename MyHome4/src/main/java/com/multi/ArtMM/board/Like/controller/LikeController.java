package com.multi.ArtMM.board.Like.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.multi.ArtMM.board.Like.dto.LikeDto;
import com.multi.ArtMM.board.Like.service.LikeService;
import com.multi.ArtMM.board.dto.BoardDto;
import com.multi.ArtMM.common.CommonConst;
import com.multi.ArtMM.common.FileUploader;
import com.multi.ArtMM.common.IP;

@Controller 
public class LikeController {
	@Resource(name="likeServiceImpl")
	LikeService likeService;
	

	@RequestMapping(value = "/board/like/ThumbUp", method = RequestMethod.POST)
	public @ResponseBody Map<String,Object>  ThumbUp(@RequestBody Map<String, Object> values, HttpServletRequest req)
	{												//@RequestBody Map<String, Object> values, 
		Map<String,Object> result = new HashMap<String,Object>();
		LikeDto dto = new LikeDto();
		
		
		dto.setMode((String)values.get("mode"));
		dto.setTarget_id((String)values.get("target_id"));
		dto.setLike_type((String) values.get("like_type"));
		dto.setUserid((String)values.get("userid"));
		dto.setIp_addr(IP.getClientIP(req));

		
		dto.setSel("getUserTotal");		
		int isUpdate = likeService.getTotal(dto);
		//dto.setIsUpdate(String.valueOf(isUpdate));
		System.out.println(dto.getIsUpdate());

		
		if(isUpdate ==0) {
			likeService.insert(dto);
		}
		else if(isUpdate ==1) {
			
			likeService.update(dto);
		}
		
		dto = likeService.getView(dto.getTarget_id());
		System.out.println(dto);


		result.put("like", dto.getLike());
		result.put("dislike", dto.getDislike());		
		result.put("like_type", dto.getLike_type());
		return result;
	}
	
	
}
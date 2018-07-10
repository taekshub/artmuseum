package com.multi.myhome1.artwork.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.multi.myhome1.artwork.dto.ArtworkDto;
import com.multi.myhome1.artwork.service.ArtworkService;
import com.multi.myhome1.common.CommonConst;
import com.multi.myhome1.common.FileUploader;

@Controller 
public class ArtworkController {
	@Resource(name="artworkServiceImpl")
	ArtworkService artworkService;
	
	//컨트롤러에서 직접 dao 사용하지 말고 서비스 
	//통해서 
	@RequestMapping("/artwork/list")
	public void list(Model model, ArtworkDto dto)
	{
		List<ArtworkDto> list = 
				artworkService.getList(dto);
		int total = artworkService.getTotal(dto);
		
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		
		for(int i=0; i<list.size(); i++)
		{
			ArtworkDto temp = list.get(i);
			System.out.println(temp.getTitle());
		}
		System.out.println("전체 개수 : "+total);
	}
	

	//artwork/save.mt?title=test&contents=내용&userid=test
	@RequestMapping("/artwork/save")
	public @ResponseBody String save(
		   HttpServletRequest req,
		   ArtworkDto dto)
	{		
		ServletContext ctx= req.getServletContext();
		
		String path = ctx.getRealPath(
				CommonConst.ARTWORK_PATH);
		System.out.println(path);
		
		//파일 업로드 경로잡기 
		FileUploader.setFilePath(path);
		
		boolean result=FileUploader.upload(dto.getFiles(),
			 dto.getFileNameList()); 
		if( result == false)
		{
			return "fail";//파일 업로드 실패시 
		}
		
		for(int i=0; 
				i<dto.getFileNameList().size();
				i++)
		{
			dto.getFieldNameList().add(
					"filename"+(i+1));
		}
		
		System.out.println("context path: "+req.getContextPath());
		
		artworkService.insert(dto);
		
		return "success";
	}
	// /artwork/view.mt?seq=200
	@RequestMapping("/artwork/view")
	public void getView(Model model, ArtworkDto dto)
	{
		ArtworkDto viewDto = artworkService.getView(dto.getSeq());
		ArtworkDto prevDto = artworkService.getPrev(viewDto);
		ArtworkDto nextDto = artworkService.getNext(viewDto);
		
		model.addAttribute("viewDto", viewDto);
		model.addAttribute("prevDto", prevDto);
		model.addAttribute("nextDto", nextDto);
	}
	
	@RequestMapping("/artwork/write")
	public void write(ArtworkDto dto, 
			 String mode,
			 Model model)
	{
		//artwork/write.jsp 로 이동 
		/*
		 * 1.등록할때 - 작업할거 없음  
		 * 2.수정할때 - 수정할대상을 불러와야 함 
		 * 3.답글달때 - 부모글의 정보를 가져와야 한다
		 */
		ArtworkDto resultDto=null;
		System.out.println("mode : " + mode);
		Hashtable<String, String> map
		 = new Hashtable<String, String>();
		
		if(mode!=null && !mode.equals("")
				         && !mode.equals("insert"))
		{
			resultDto =
			  artworkService.getView(dto.getSeq());
			System.out.println(resultDto.getTitle());
			if(mode.equals("reply"))
			{
				resultDto.setTitle("답글:");
				resultDto.setContents("");
			}
			
			//배열이 아니고 필드명이 filename1, filename2, filename3
			//for문 사용 안되니까 배열 구조로 바꾸기
			//해쉬테이블 사용하기 

			
			System.out.println(resultDto.getFilename1());
			System.out.println(resultDto.getFilename2());
			System.out.println(resultDto.getFilename3());
				
			map.put("filename1", resultDto.getFilename1());
			map.put("filename2", resultDto.getFilename2());
			map.put("filename3", resultDto.getFilename3());
		}
		
		//jsp로 전달 작업 
		model.addAttribute("resultDto", resultDto);
		model.addAttribute("filemap", map);
		//jsp단에서는 
		//ArtworkDto dto = 
		//  (ArtworkDto)request.getAttribute("resultDto")
		
	}

	
	@RequestMapping("/artwork/update")
	public @ResponseBody 
	String update(ArtworkDto dto,
			   HttpServletRequest req,
			   String []del,
			   String []old_name)
	{
		dto.setFilename1(old_name[0]);
		dto.setFilename2(old_name[1]);
		dto.setFilename3(old_name[2]);
		ServletContext ctx= req.getServletContext();
		String path = ctx.getRealPath(CommonConst.ARTWORK_PATH);
		System.out.println(path);
		//파일 업로드 경로잡기 
		FileUploader.setFilePath(path);
		
		boolean result=FileUploader.upload(dto.getFiles(),
			 dto.getFileNameList());
		if( result == false)
		{
			return "fail";//파일 업로드 실패시 
		}
		
		
		for(int i=0; i<del.length; i++)
		{
			String filename=
					dto.getFileNameList().get(i);
			if( del[i].equals("1"))
				dto.setFilename1(filename);
			else if(del[i].equals("2"))
				dto.setFilename2(filename);
			else if(del[i].equals("3"))
				dto.setFilename3(filename);
		}
		
		artworkService.update(dto);
		
		return "success";
	}
	
	
	@RequestMapping("/artwork/reply")
	public @ResponseBody 
	String  reply(  
			HttpServletRequest req,
			ArtworkDto dto)
	{		
		ServletContext ctx= req.getServletContext();
		
		String path = ctx.getRealPath(
				CommonConst.ARTWORK_PATH);
		System.out.println(path);
		
		//파일 업로드 경로잡기 
		FileUploader.setFilePath(path);
		
		boolean result=FileUploader.upload(dto.getFiles(),
			 dto.getFileNameList()); 
		if( result == false)
		{
			return "fail";//파일 업로드 실패시 
		}
		
		for(int i=0; 
				i<dto.getFileNameList().size();
				i++)
		{
			dto.getFieldNameList().add(
					"filename"+(i+1));
		}
			
		artworkService.reply(dto);
		return "success";
	}
	
	@RequestMapping("/artwork/delete")
	public @ResponseBody 
	String  delete(ArtworkDto dto)
	{
		artworkService.delete(dto);
		return "success";
	}
}





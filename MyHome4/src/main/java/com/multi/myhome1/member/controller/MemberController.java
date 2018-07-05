package com.multi.myhome1.member.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.multi.myhome1.member.dto.MemberDto;
import com.multi.myhome1.member.service.MemberService;
import com.multi.myhome1.common.FileUploader;

@Controller  
public class MemberController {

	@Autowired
	MemberService memberService;
	
	@RequestMapping("/member/member_write")
	public void member_write()
	{}
	
	@RequestMapping("/member/getIdCheck")
	public @ResponseBody String 
	   getIdCheck(MemberDto dto)
	{
		if(memberService.getIdCheck(dto)==0)
			return "OK";
		else
			return "CANCEL";
	}
	
	@RequestMapping("/member/member_save")
	public void member_save(MemberDto dto)
	{
		System.out.println(dto.getEmail());
		System.out.println(dto.getInterest());
		System.out.println(dto.getGender());
		
		memberService.insert(dto);
	}
	
	
	@RequestMapping("/member/upload")
	public @ResponseBody 
	String upload( HttpServletRequest req, 
			    MultipartFile imagefile)
	{
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@");
		ServletContext ctx= req.getServletContext();
		
		String path = ctx.getRealPath("/resources/upload/member");
		System.out.println(path);
	
		FileUploader.setFilePath(path);
		String filename=FileUploader.upload(imagefile);
		return filename;
		
	}

	
	@RequestMapping("/member/logon")
	public void logon(MemberDto dto)
	{
		System.out.println("logon");
	} 
	
	@RequestMapping("/member/logon_proc")
	public @ResponseBody 
	String logon_proc(HttpServletRequest req, 
			          MemberDto dto)
	{
		HttpSession session = req.getSession();
		//���� ���� 
		//session.invalidate();
		MemberDto memberDto = 
				  memberService.getMemberInfo(dto);
		//System.out.println(memberDto);
		if(memberDto==null)
		{
			return "1"; //���̵� ������� 
		}
			
		if(!dto.getPassword().equals( 
				 memberDto.getPassword()))
		{
			return "2";//�н����尡 �� ���� 
		}
			
		session.setAttribute("member_id", memberDto.getMember_id());
		session.setAttribute("username", memberDto.getUsername());
		session.setAttribute("email", memberDto.getEmail());
		session.setAttribute("mobile",memberDto.getMobile());
	
		//ȸ�������߿��� 
		//���̵�, �̸�, ��ȭ��ȣ 
		
		// �Լ��� MemberDto getMemberInfo(MemberDto dto)
		// ��ȯ���� null �̸� �α׿� ����, null �� �ƴϸ�
		// �α׿� ���� 
		
		return "OK";
	}
	
	@RequestMapping("/member/idfind")
	public void idfind()
	{ //������ �̵���
	}
	
	@RequestMapping("/member/idfind_proc")
	public String idfind_proc(MemberDto dto, Model model)
	{
		//�̸��ϰ� ��ȭ��ȣ �޾Ƽ� �ش� ���̵� �˷��ֱ�
		MemberDto resultDto = memberService.findId(dto);
		if( resultDto !=null)
			model.addAttribute("email", resultDto.getEmail());
		else
			model.addAttribute("email", "");

		return "/member/idview";
	}
	
	@RequestMapping("/member/pwdfind")
	public void pwdfind()
	{}
	
	@RequestMapping("/member/pwdfind_proc")
	public String pwdfind_proc(MemberDto dto, Model model)
	{
		//�̸��ϰ� ��ȭ��ȣ �޾Ƽ� �ش� ���̵� �˷��ֱ�
		MemberDto resultDto = memberService.findPwd(dto);
		if( resultDto !=null)
			model.addAttribute("pwd", resultDto.getPassword());
		else
			model.addAttribute("pwd", "");
		return "/member/pwdview";
	}

	@RequestMapping("/member/logout")
	public String logout(HttpServletRequest req)
	{	
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/home.mt";
	}
	
}
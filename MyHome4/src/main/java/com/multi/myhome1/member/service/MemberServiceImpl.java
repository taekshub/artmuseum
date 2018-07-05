package com.multi.myhome1.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.myhome1.member.dao.MemberDao;
import com.multi.myhome1.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired 
	MemberDao memberDao;
	
	@Override
	public int getIdCheck(MemberDto dto) {
		return memberDao.getIdCheck(dto);
	}

	@Override
	public void insert(MemberDto dto) {
		memberDao.insert(dto);
	}

	@Override
	public MemberDto getMemberInfo(MemberDto dto) {
		
		return memberDao.getMemberInfo(dto);
	}

	@Override
	public MemberDto findId(MemberDto dto) {
		
		return memberDao.findId(dto);
	}

	@Override
	public MemberDto findPwd(MemberDto dto) {
		
		return memberDao.findPwd(dto);
	}

}

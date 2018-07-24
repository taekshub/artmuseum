package com.multi.ArtMM.member.service;

import com.multi.ArtMM.member.dto.MemberDto;

public interface MemberService {
	int getIdCheck(MemberDto dto);
	void insert(MemberDto dto);
	MemberDto getMemberInfo(MemberDto dto);
	MemberDto findId(MemberDto dto);
	MemberDto findPwd(MemberDto dto);

}

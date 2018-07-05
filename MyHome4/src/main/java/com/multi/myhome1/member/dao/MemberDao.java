package com.multi.myhome1.member.dao;

import com.multi.myhome1.member.dto.MemberDto;

public interface MemberDao {
	int getIdCheck(MemberDto dto);
	void insert(MemberDto dto);
	MemberDto getMemberInfo(MemberDto dto);
	MemberDto findId(MemberDto dto);
	MemberDto findPwd(MemberDto dto);
}

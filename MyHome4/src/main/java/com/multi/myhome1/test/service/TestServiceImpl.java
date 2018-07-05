package com.multi.myhome1.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.myhome1.test.dao.TestDao;
import com.multi.myhome1.test.dto.TestDto;

@Service
public class TestServiceImpl implements TestService{
	@Autowired 
	TestDao dao;

	@Override
	public void insert(TestDto dto) {
		dto.setId("2");
		dto.setTest("test2");
		dao.insert1(dto);
		
		dto.setTest("long long test2");
		dao.insert2(dto);
	}
	
}

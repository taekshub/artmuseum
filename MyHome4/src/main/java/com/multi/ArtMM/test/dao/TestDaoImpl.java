package com.multi.ArtMM.test.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ArtMM.test.dto.TestDto;

@Repository
public class TestDaoImpl implements TestDao{
	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public void insert1(TestDto dto) {
		sm.insert("Test.insert1", dto);
	}

	@Override
	public void insert2(TestDto dto) {
		sm.insert("Test.insert2", dto);
	}


}

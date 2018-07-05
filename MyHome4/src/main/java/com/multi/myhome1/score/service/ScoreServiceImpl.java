package com.multi.myhome1.score.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.myhome1.score.dao.ScoreDao;
import com.multi.myhome1.score.dto.ScoreDto;

@Service
public class ScoreServiceImpl implements ScoreService{

	@Autowired
	ScoreDao scoreDao;
	
	@Override
	public List<ScoreDto> geList(ScoreDto dto) {
		
		return scoreDao.getList(dto);
	}

}

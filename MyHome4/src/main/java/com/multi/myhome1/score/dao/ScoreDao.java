package com.multi.myhome1.score.dao;

import java.util.List;

import com.multi.myhome1.score.dto.ScoreDto;

public interface ScoreDao {
	List<ScoreDto> getList(ScoreDto dto);
	
}

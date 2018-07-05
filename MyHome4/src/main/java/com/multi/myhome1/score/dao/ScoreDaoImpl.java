package com.multi.myhome1.score.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.myhome1.score.dto.ScoreDto;

@Repository 
public class ScoreDaoImpl implements ScoreDao {

	@Autowired
	SqlSessionTemplate sm;
	
	//SqlSessionTemplate - MyBatis framework 
	//디비에 데이타 읽고 쓰는 클래스 
	@Override
	public List<ScoreDto> getList(ScoreDto dto) {
		
		return sm.selectList("Score.getList", dto);
		
		/*
		 * <select id="Score.getList"
	        parameterType="ScoreDto"
	        resultType="ScoreDto">
		 */
	}

}

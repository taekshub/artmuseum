package com.multi.ArtMM.board.Like.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.ArtMM.board.Like.dto.LikeDto;


@Repository("likeDaoImpl")
public class LikeDaoImpl implements LikeDao{

	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<LikeDto> getList(LikeDto dto) {
		
		List<LikeDto> list = sm.selectList("Qna.getList",dto);
				
		return list;
	}

	@Override
	public int getTotal(LikeDto dto) {
		
		int result = (Integer)sm.selectOne("Like.getTotalCount", dto);
		//selectOne 함수는 object를 반환
		//object -> Integer -> int 로 바꿔야 한다 
		//object -> int 로 바로 변경은 불가능 하다
		return result;
	}

	@Override
	public LikeDto getView(String like_seq) {
		//조회수 업데이트 

		return sm.selectOne("Like.getView", like_seq);

	}

	@Override
	public void insert(LikeDto dto) {
		
		// Qna.xml의 insert 태그 
		//id와 동일해야 한다 Qna.insert
		sm.insert("Like.insert", dto);
	}

	@Override
	public void update(LikeDto dto) {
		sm.update("Like.update", dto);

	}

	@Override
	public void delete(LikeDto dto) {
		sm.update("Like.delete", dto);
		
	}

}
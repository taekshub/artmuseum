package com.multi.ArtMM.board.Like.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.multi.ArtMM.board.Like.dto.LikeDto;

public interface LikeDao {
	List<LikeDto> getList(LikeDto dto);
	int getTotal(LikeDto dto);
	LikeDto getView(String like_seq);
	
	void insert(LikeDto dto);
	void update(LikeDto dto);
	void delete(LikeDto dto);
	
}
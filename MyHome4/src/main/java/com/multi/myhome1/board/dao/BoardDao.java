package com.multi.myhome1.board.dao;

import java.util.List;

import com.multi.myhome1.board.dto.BoardDto;

public interface BoardDao {
	List<BoardDto> getList(BoardDto dto);
	int getTotal(BoardDto dto);
	BoardDto getView(String seq);
	BoardDto getPrev(BoardDto dto);
	BoardDto getNext(BoardDto dto);
	
	void insert(BoardDto dto);
	void update(BoardDto dto);
	void delete(BoardDto dto);
	void reply(BoardDto dto);
	
}

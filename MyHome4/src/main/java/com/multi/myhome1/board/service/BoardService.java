package com.multi.myhome1.board.service;

import java.util.List;

import com.multi.myhome1.board.dto.BoardDto;

public interface BoardService {
	List<BoardDto> getList(BoardDto dto);
	int getTotal(BoardDto dto);
	BoardDto getView(String seq);
	
	BoardDto getPrev(BoardDto paramDto);
	BoardDto getNext(BoardDto paramDto);
	
	void insert(BoardDto dto);
	void update(BoardDto dto);
	void delete(BoardDto dto);
	void reply(BoardDto dto);
}

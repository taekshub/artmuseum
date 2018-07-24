package com.multi.ArtMM.board.service;

import java.util.List;

import com.multi.ArtMM.board.dto.BoardDto;

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

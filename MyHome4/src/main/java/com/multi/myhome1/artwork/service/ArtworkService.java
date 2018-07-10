package com.multi.myhome1.artwork.service;

import java.util.List;

import com.multi.myhome1.artwork.dto.ArtworkDto;

public interface ArtworkService {
	List<ArtworkDto> getList(ArtworkDto dto);
	int getTotal(ArtworkDto dto);
	ArtworkDto getView(String seq);
	
	ArtworkDto getPrev(ArtworkDto viewDto);
	ArtworkDto getNext(ArtworkDto viewDto);
	
	void insert(ArtworkDto dto);
	void update(ArtworkDto dto);
	void delete(ArtworkDto dto);
	void reply(ArtworkDto dto);
}

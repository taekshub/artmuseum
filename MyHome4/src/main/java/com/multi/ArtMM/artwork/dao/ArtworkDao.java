package com.multi.ArtMM.artwork.dao;

import java.util.List;

import com.multi.ArtMM.artwork.dto.ArtworkDto;

public interface ArtworkDao {
	List<ArtworkDto> getList(ArtworkDto dto);
	int getTotal(ArtworkDto dto);
	ArtworkDto getView(String seq);
	ArtworkDto getPrev(ArtworkDto dto);
	ArtworkDto getNext(ArtworkDto dto);
	
	void insert(ArtworkDto dto);
	void update(ArtworkDto dto);
	void delete(ArtworkDto dto);
	void reply(ArtworkDto dto);
	
}

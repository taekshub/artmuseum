package com.multi.myhome1.artwork.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.multi.myhome1.artwork.dto.ArtworkDto;

@Repository("artworkDaoImpl")
public class ArtworkDaoImpl implements ArtworkDao{

	@Autowired
	SqlSessionTemplate sm;
	
	@Override
	public List<ArtworkDto> getList(ArtworkDto dto) {
		
		List<ArtworkDto> list 
		     = sm.selectList("Artwork.getList",
		    		     dto);
				
		return list;
	}

	@Override
	public int getTotal(ArtworkDto dto) {
		
		int result = 
		(Integer)sm.selectOne("Artwork.getTotalCount", dto);
		//selectOne 함수는 object를 반환
		//object -> Integer -> int 로 바꿔야 한다 
		//object -> int 로 바로 변경은 불가능 하다
		return result;
	}

	@Override
	public ArtworkDto getView(String seq) {
		//조회수 업데이트 
		sm.update("Artwork.updateHit", seq);
		
		ArtworkDto dto = 
			sm.selectOne("Artwork.getView", seq);
		return dto;
	}

	@Override
	public void insert(ArtworkDto dto) {
		
		// Artwork.xml의 insert 태그 
		//id와 동일해야 한다 Artwork.insert
		sm.insert("Artwork.insert", dto);
	}

	@Override
	public void update(ArtworkDto dto) {
		sm.update("Artwork.update", dto);
		
	}

	@Override
	public void delete(ArtworkDto dto) {
		sm.update("Artwork.delete", dto);
		
	}

	@Override
	public void reply(ArtworkDto dto) {
		sm.update("Artwork.updateLevel", dto);
		sm.insert("Artwork.reply", dto);
		
	}

	@Override
	public ArtworkDto getPrev(ArtworkDto paramDto) {
		ArtworkDto dto = 
			sm.selectOne("Artwork.getPrev", paramDto);
		return dto;
	}

	@Override
	public ArtworkDto getNext(ArtworkDto paramDto) {
		ArtworkDto dto = 
			sm.selectOne("Artwork.getNext", paramDto);
		return dto;
	}

}

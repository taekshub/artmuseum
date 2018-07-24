package com.multi.ArtMM.artwork.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.ArtMM.artwork.dao.ArtworkDao;
import com.multi.ArtMM.artwork.dto.ArtworkDto;

import javax.annotation.Resource;

@Service ("artworkServiceImpl")
public class ArtworkServiceImpl implements 
    ArtworkService{

	//스프링이 만들어놓은 artworkDao 객체 가져다
	//연결시켜준다 (Dependency Injection)
	// IoC(Inversion of Control) 
	@Resource(name="artworkDaoImpl")
	ArtworkDao artworkDao;
	
	@Override
	public List<ArtworkDto> getList(ArtworkDto dto) {
		// TODO Auto-generated method stub
		return artworkDao.getList(dto);
	}

	@Override
	public int getTotal(ArtworkDto dto) {
		
		return artworkDao.getTotal(dto);
	}

	@Override
	public ArtworkDto getView(String seq) {
		
		return artworkDao.getView(seq);
	}

	@Override
	public void insert(ArtworkDto dto) {
		artworkDao.insert(dto);
	}

	@Override
	public void update(ArtworkDto dto) {
		artworkDao.update(dto);
	}

	@Override
	public void delete(ArtworkDto dto) {
		artworkDao.delete(dto);
	}

	@Override
	public void reply(ArtworkDto dto) {
		artworkDao.reply(dto);
	}

	@Override
	public ArtworkDto getPrev(ArtworkDto paramDto) {
		
		return artworkDao.getPrev(paramDto);
	}

	@Override
	public ArtworkDto getNext(ArtworkDto paramDto) {
		
		return artworkDao.getNext(paramDto);
	}
}

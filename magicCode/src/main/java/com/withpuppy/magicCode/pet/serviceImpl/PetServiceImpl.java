package com.withpuppy.magicCode.pet.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.pet.service.PetMapper;
import com.withpuppy.magicCode.pet.service.PetService;
import com.withpuppy.magicCode.pet.service.PetVO;

public class PetServiceImpl implements PetService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private PetMapper map = sqlSession.getMapper(PetMapper.class); 
	
	@Override
	public List<PetVO> petSelectList() {
		// TODO Auto-generated method stub
		return map.petSelectList();
	}

	@Override
	public PetVO petSelect(PetVO vo) {
		// TODO Auto-generated method stub
		return map.petSelect(vo);
	}

	@Override
	public int petInsert(PetVO vo) {
		// TODO Auto-generated method stub
		return map.petInsert(vo);
	}

	@Override
	public int petUpdate(PetVO vo) {
		// TODO Auto-generated method stub
		return map.petUpdate(vo);
	}

	@Override
	public int petDelete(PetVO vo) {
		// TODO Auto-generated method stub
		return map.petDelete(vo);
	}

}

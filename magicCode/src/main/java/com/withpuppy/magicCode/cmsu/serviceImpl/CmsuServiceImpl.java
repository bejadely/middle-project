package com.withpuppy.magicCode.cmsu.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.cmsu.service.CmsuMapper;
import com.withpuppy.magicCode.cmsu.service.CmsuService;
import com.withpuppy.magicCode.cmsu.service.CmsuVO;
import com.withpuppy.magicCode.common.DataSource;

public class CmsuServiceImpl implements CmsuService {
	SqlSession SqlSession = DataSource.getInstance().openSession(true);
	CmsuMapper map = SqlSession.getMapper(CmsuMapper.class);
	
	@Override
	public CmsuVO sitterSelect(CmsuVO vo) {
		// 시터 단건 조회 
		return map.sitterSelect(vo);
	}

	@Override
	public CmsuVO trainnerSelect(CmsuVO vo) {
		// 훈련사 단건 조회
		return map.trainnerSelect(vo);
	}

	@Override
	public CmsuVO grommerSelect(CmsuVO vo) {
		// 미용사 단건 조회
		return map.grommerSelect(vo);
	}

}
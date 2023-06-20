package com.withpuppy.magicCode.cm.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.cm.service.CmMapper;
import com.withpuppy.magicCode.cm.service.CmService;
import com.withpuppy.magicCode.cm.service.CmVO;
import com.withpuppy.magicCode.common.DataSource;

public class CmServiceImpl implements CmService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CmMapper map = sqlSession.getMapper(CmMapper.class); 
	
	@Override
	public List<CmVO> cmSelectList() {
		// TODO Auto-generated method stub
		return map.cmSelectList();
	}

	@Override
	public CmVO cmSelect(CmVO vo) {
		// TODO Auto-generated method stub
		return map.cmSelect(vo);
	}

	@Override
	public int cmInsert(CmVO vo) {
		// TODO Auto-generated method stub
		return map.cmInsert(vo);
	}

	@Override
	public int cmUpdate(CmVO vo) {
		// TODO Auto-generated method stub
		return map.cmUpdate(vo);
	}

	@Override
	public int cmDelete(CmVO vo) {
		// TODO Auto-generated method stub
		return map.cmDelete(vo);
	}

}

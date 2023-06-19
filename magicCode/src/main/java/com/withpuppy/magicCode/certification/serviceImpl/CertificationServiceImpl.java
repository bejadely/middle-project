package com.withpuppy.magicCode.certification.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.certification.service.CertificationMapper;
import com.withpuppy.magicCode.certification.service.CertificationService;
import com.withpuppy.magicCode.certification.service.CertificationVO;
import com.withpuppy.magicCode.common.DataSource;

public class CertificationServiceImpl implements CertificationService {
	
	SqlSession SqlSession = DataSource.getInstance().openSession(true);
	CertificationMapper map = SqlSession.getMapper(CertificationMapper.class);
	
	@Override
	public List<CertificationVO> certificationSelectList() {
		// TODO Auto-generated method stub
		return map.certificationSelectList();
	}

	@Override
	public CertificationVO certificationSelect(CertificationVO vo) {
		// TODO Auto-generated method stub
		return map.certificationSelect(vo);
	}

	@Override
	public int certificationInsert(CertificationVO vo) {
		// TODO Auto-generated method stub
		return map.certificationInsert(vo);
	}

	@Override
	public int certificationUpdate(CertificationVO vo) {
		// TODO Auto-generated method stub
		return map.certificationUpdate(vo);
	}

	@Override
	public int certificationDelete(CertificationVO vo) {
		// TODO Auto-generated method stub
		return map.certificationDelete(vo);
	}

}

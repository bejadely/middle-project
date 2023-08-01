package com.withpuppy.magicCode.mpsu.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.mpsu.service.MpsuMapper;
import com.withpuppy.magicCode.mpsu.service.MpsuService;
import com.withpuppy.magicCode.mpsu.service.MpsuVO;

public class MpsuServiceImpl implements MpsuService{
	SqlSession SqlSession = DataSource.getInstance().openSession(true);
	MpsuMapper map = SqlSession.getMapper(MpsuMapper.class);
	
	@Override
	public List<MpsuVO> sitterRequestHistory(String id) {
		//돌봄 서비스 요청 내역 조회(전체)
		return map.sitterRequestHistory(id);
	}

	@Override
	public List<MpsuVO> trainningRequestHistory(String id) {
		//훈련 서비스 요청 내역 조회(전체)
		return map.trainningRequestHistory(id);
	}

	@Override
	public List<MpsuVO> grommingRequestHistory(String id) {
		//미용 서비스 요청 내역 조회(전체)
		return map.grommingRequestHistory(id);
	}

	@Override
	public MpsuVO sitterRequestSelect(MpsuVO vo) {
		//돌봄 서비스 요청 단건 조회
		return map.sitterRequestSelect(vo);
	}

	@Override
	public MpsuVO trainningRequestSelect(MpsuVO vo) {
		//훈련 서비스 요청 단건 조회
		return map.trainningRequestSelect(vo);
	}

	@Override
	public MpsuVO grommingRequestSelect(MpsuVO vo) {
		//미용 서비스 요청 단건 조회
		return map.grommingRequestSelect(vo);
	}

}

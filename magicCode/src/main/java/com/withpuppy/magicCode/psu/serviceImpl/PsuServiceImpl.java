package com.withpuppy.magicCode.psu.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.psu.service.PsuMapper;
import com.withpuppy.magicCode.psu.service.PsuService;
import com.withpuppy.magicCode.psu.service.PsuVO;


public class PsuServiceImpl implements PsuService{
	SqlSession SqlSession = DataSource.getInstance().openSession(true);
	PsuMapper map = SqlSession.getMapper(PsuMapper.class);
	
	@Override
	public PsuVO userSitterApplySelect(PsuVO vo) {
		// 나의 돌봄 서비스 신청 상세 리스트
		return map.userSitterApplySelect(vo);
	}

	@Override
	public PsuVO userTrainningApplySelect(PsuVO vo) {
		// 나의 훈련 서비스 신청 상세 리스트
		return map.userTrainningApplySelect(vo);
	}

	@Override
	public PsuVO userGrommingApplySelect(PsuVO vo) {
		// 나의 미용 서비스 신청 상세 리스트
		return map.userGrommingApplySelect(vo);
	}

	@Override
	public int srTableInsert(PsuVO vo) {
		//돌봄 서비스 예약(예약날짜, 시간, 장소, 금액)입력
		return map.srTableInsert(vo);
	}

	@Override
	public int petTableInsert(PsuVO vo) {
		//돌봄 서비스 예약(반려동물 정보)입력
		return map.petTableInsert(vo);
	}

	@Override
	public int urTableInsert(PsuVO vo) {
		//돌봄 서비스 예약(요청사항, 결제수단) 입력
		return map.urTableInsert(vo);
	}	

}

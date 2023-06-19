package com.withpuppy.magicCode.su.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.su.service.SuMapper;
import com.withpuppy.magicCode.su.service.SuService;
import com.withpuppy.magicCode.su.service.SuVO;

public class SuServiceImpl implements SuService{
	SqlSession SqlSession = DataSource.getInstance().openSession(true);
	SuMapper map = SqlSession.getMapper(SuMapper.class);

	@Override
	public List<SuVO> userSitterApplyAllList(String urMemberId) {
		// 나의 돌봄 서비스 신청 전체 리스트
		return map.userSitterApplyAllList(urMemberId);
	}

	@Override
	public List<SuVO> userTrainningApplyAllList(String urMemberId) {
		// 나의 훈련 서비스 신청 전체 리스트
		return map.userTrainningApplyAllList(urMemberId);
	}

	@Override
	public List<SuVO> userGrommingApplyAllList(String urMemberId) {
		// 나의 미용 서비스 신청 전체 리스트
		return map.userGrommingApplyAllList(urMemberId);
	}

	@Override
	public List<SuVO> sitterAllList() {
		// 전체 시터 목록 조회
		return map.sitterAllList();
	}

	@Override
	public List<SuVO> trainnerAllList() {
		//전체 훈련사 목록 조회
		return map.trainnerAllList();
	}

	@Override
	public List<SuVO> grommerAllList() {
		//전체 미용사 목록 조회
		return map.grommerAllList();
	}
	

}

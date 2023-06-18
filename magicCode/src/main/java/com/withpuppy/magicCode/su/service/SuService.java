package com.withpuppy.magicCode.su.service;

import java.util.List;

public interface SuService {
	List<SuVO> userSitterApplyAllList(String urMemberId); //나의 돌봄 서비스 신청 전체 리스트
	List<SuVO> userTrainningApplyAllList(String urMemberId); //나의 훈련 서비스 신청 전체 리스트
	List<SuVO> userGrommingApplyAllList(String urMemberId); //나의 미용 서비스 신청 전체 리스트
	
	List<SuVO> sitterAllList(); //전체 시터 목록 조회
	List<SuVO> trainnerAllList(); //전체 훈련사 목록 조회
	List<SuVO> grommerAllList(); //전체 미용사 목록 조회
}
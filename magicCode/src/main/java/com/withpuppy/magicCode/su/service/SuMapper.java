package com.withpuppy.magicCode.su.service;

import java.util.List;

public interface SuMapper {
	List<SuVO> userSitterApplyAllList(String urMemberId); //나의 돌봄 서비스 신청 전체 리스트
	List<SuVO> userTrainningApplyAllList(String urMemberId); //나의 훈련 서비스 신청 전체 리스트
	List<SuVO> userGrommingApplyAllList(String urMemberId); //나의 미용 서비스 신청 전체 리스트
	
	List<SuVO> sitterAllList(); //전체 시터 목록 조회
}
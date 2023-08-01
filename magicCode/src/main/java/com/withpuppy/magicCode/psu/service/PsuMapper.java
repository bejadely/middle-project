package com.withpuppy.magicCode.psu.service;

public interface PsuMapper {
	
	PsuVO userSitterApplySelect(PsuVO vo); //돌봄 상세 조회
	PsuVO userTrainningApplySelect(PsuVO vo); //훈련 상세 조회
	PsuVO userGrommingApplySelect(PsuVO vo); //미용 상세 조회
	
	int srTableInsert(PsuVO vo); //돌봄 서비스 예약(예약날짜, 시간, 장소, 금액)입력
	int petTableInsert(PsuVO vo); //돌봄 서비스 예약(반려동물 정보)입력
	int urTableInsert(PsuVO vo); //돌봄 서비스 예약(요청사항, 결제수단) 입력
	
}

package com.withpuppy.magicCode.psu.service;

public interface PsuService {
	
	PsuVO userSitterApplySelect(PsuVO vo); //돌봄 상세 조회
	PsuVO userTrainningApplySelect(PsuVO vo); //훈련 상세 조회
	PsuVO userGrommingApplySelect(PsuVO vo); //미용 상세 조회

}

package com.withpuppy.magicCode.mpsu.service;

import java.util.List;

public interface MpsuService {
	List<MpsuVO> sitterRequestHistory(String id); //돌봄 서비스 요청 내역 조회(전체)
	List<MpsuVO> trainningRequestHistory(String id); //훈련 서비스 요청 내역 조회(전체)
	List<MpsuVO> grommingRequestHistory(String id); //미용 서비스 요청 내역 조회(전체)
	
	MpsuVO sitterRequestSelect(MpsuVO vo); //돌봄 서비스 요청 단건 조회
	MpsuVO trainningRequestSelect(MpsuVO vo); //훈련 서비스 요청 단건 조회
	MpsuVO grommingRequestSelect(MpsuVO vo); //미용 서비스 요청 단건 조회
}

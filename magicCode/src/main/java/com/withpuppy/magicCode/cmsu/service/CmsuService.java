package com.withpuppy.magicCode.cmsu.service;

public interface CmsuService {
	CmsuVO sitterSelect(CmsuVO vo); // 시터 단건 조회
	CmsuVO trainnerSelect(CmsuVO vo); // 훈련사 단건 조회
	CmsuVO grommerSelect(CmsuVO vo); // 미용사 단건 조회
}

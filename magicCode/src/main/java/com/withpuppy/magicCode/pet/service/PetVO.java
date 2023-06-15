package com.withpuppy.magicCode.pet.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

public class PetVO {
//	PET_ID	NUMBER	No		1	펫 ID
//	OWNER_ID	VARCHAR2(100 BYTE)	No		2	견주 ID
//	PET_NAME	VARCHAR2(100 BYTE)	No		3	펫 이름
//	PET_KIND	VARCHAR2(100 BYTE)	No		4	펫 종류
//	PET_AGE	NUMBER	No		5	펫 나이
//	PET_GENDER	VARCHAR2(50 BYTE)	No		6	펫 성별 M/F
//	PET_WEIGHT	NUMBER	No		7	펫 몸무게
//	PET_SIGN	VARCHAR2(3000 BYTE)	Yes		8	펫 유의(특이)사항
	
	private int petId;
	private String ownerId;
	private String petName;
	private String petKind;
	private int petAge;
	private String petGender;
	private Double petWeight;
	private String petSign;
}


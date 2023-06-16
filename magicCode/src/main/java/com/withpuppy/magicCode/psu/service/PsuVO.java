package com.withpuppy.magicCode.psu.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

//사용자 입장 서비스 신청 내역 상세 조회 용
public class PsuVO {	
	
	private String petName;
	private String petKind;
	private int petAge;
	private String petGender;
	private int petWeight;
	private String petSign;
	
	private String srServerId;
	private String srServerName;
	private int srPrice;
	private String srLocation;
	private String srCategory;
	
	private int urId;
	private String urMemberId;
	private int urPetId;
	private String urRequire;
	private String urPayment;
	private Date urDate;
	private String urStartTime;
	private String urEndTime;
	private double urRate;
	private String urReview;
	private int srId;
	private String urCheck;
	
}

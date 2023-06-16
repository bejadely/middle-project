package com.withpuppy.magicCode.su.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
//사용자 입장 서비스 신청 내역 전체 조회
//사용자 입장 시터 전체 조회
public class SuVO {
	
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
	
	private String srPicturePath;
	private String srTitle;
	private String srServerId;
	private String srServerName;
	private Date srStartDate;
	private Date srEndDate;
	private String srStartTime;
	private String srEndTime;
	private String srIntroduce;
	private int srPrice;
	private String srLocation;
	private String srCategory;
	
}

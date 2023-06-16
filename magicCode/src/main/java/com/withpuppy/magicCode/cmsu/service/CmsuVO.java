package com.withpuppy.magicCode.cmsu.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

// 서비스 단건(상세) 조회
public class CmsuVO {

	private int certificationId;
	private String certificationName;
	private String certificationPath;
	private String memberId;
	
	private String memberNick;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberAddr;
	private String memberAuth;
	
	private int srId;
	private String srPicturePath;
	private String srTitle;
	private String srServerId;
	private String srServerName;
	private String srStartDate;
	private String srEndDate;
	private String srStartTime;
	private String srEndTime;
	private String srIntroduce;
	private String srCategory;
	private int srPrice;
	private String srLocation;
	
	private int urId;
	private String urmemberId;
	private int urPetId;
	private String urRequire;
	private String urPayment;
	private String urDate;
	private String urStartTime;
	private String urEndTime;
	private int urRate;
	private String urReview;
	private String urCheck;
	
}

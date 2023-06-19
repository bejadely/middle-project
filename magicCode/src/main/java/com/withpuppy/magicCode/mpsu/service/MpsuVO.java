package com.withpuppy.magicCode.mpsu.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MpsuVO {
	private String memberId;
	private String memberNick;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberAddr;
	private String memberAuth; 
	private int memberCertificationId; 
	private String memberCertificationName; 
	private String memberCertificationPath; 
	
	private String petName;
	private String petKind;
	private int petAge;
	private String petGender;
	private int petWeight;
	private String petSign;
	
	private String srStartDate;
	private String srEndDate;
	private String srStartTime;
	private String srEndTime;
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
	private String urDate;
	private String urStartTime;
	private String urEndTime;
	private double urRate;
	private String urReview;
	private int srId;
	private String urCheck;
}

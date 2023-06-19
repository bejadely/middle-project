package com.withpuppy.magicCode.userRegist.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserRegistVO {
//	ur_id	number	no		1
//	ur_member_id	varchar2(50 byte)	no		2
//	ur_pet_id	number	no		3
//	ur_require	varchar2(4000 byte)	no		4
//	ur_payment	varchar2(50 byte)	no		5 결제수단 선택
//	ur_date	date	no		6
//	ur_start_time	date	no		7
//	ur_end_time	date	no		8
//	ur_rate	number	no		9
//	ur_review	long	no		10
//	sr_id	number	no		11
//	ur_check	varchar2(10 byte)	no		12
	
	private int urId;
	private String urMemberId;
	private int urPetId;
	private String urRequire;
	private String urPayment;
	private String urDate;
	private String urStartTime;
	private String urEndTime;
	private int urRate;
	private String urReview;
	private int srId;
	private String urCheck;
	
}

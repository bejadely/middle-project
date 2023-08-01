package com.withpuppy.magicCode.userRegist.service;

import lombok.Getter;
import lombok.Setter;


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
	
	public int getUrId() {
		return urId;
	}
	public void setUrId(int urId) {
		this.urId = urId;
	}
	public String getUrMemberId() {
		return urMemberId;
	}
	public void setUrMemberId(String urMemberId) {
		this.urMemberId = urMemberId;
	}
	public int getUrPetId() {
		return urPetId;
	}
	public void setUrPetId(int urPetId) {
		this.urPetId = urPetId;
	}
	public String getUrRequire() {
		return urRequire;
	}
	public void setUrRequire(String urRequire) {
		this.urRequire = urRequire;
	}
	public String getUrPayment() {
		return urPayment;
	}
	public void setUrPayment(String urPayment) {
		this.urPayment = urPayment;
	}
	public String getUrDate() {
		return urDate;
	}
	public void setUrDate(String urDate) {
		this.urDate = urDate;
	}
	public String getUrStartTime() {
		return urStartTime;
	}
	public void setUrStartTime(String urStartTime) {
		this.urStartTime = urStartTime;
	}
	public String getUrEndTime() {
		return urEndTime;
	}
	public void setUrEndTime(String urEndTime) {
		this.urEndTime = urEndTime;
	}
	public int getUrRate() {
		return urRate;
	}
	public void setUrRate(int urRate) {
		this.urRate = urRate;
	}
	public String getUrReview() {
		return urReview;
	}
	public void setUrReview(String urReview) {
		this.urReview = urReview;
	}
	public int getSrId() {
		return srId;
	}
	public void setSrId(int srId) {
		this.srId = srId;
	}
	public String getUrCheck() {
		return urCheck;
	}
	public void setUrCheck(String urCheck) {
		this.urCheck = urCheck;
	}
	
	
	
}

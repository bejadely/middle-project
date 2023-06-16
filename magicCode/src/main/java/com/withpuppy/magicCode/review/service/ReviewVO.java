package com.withpuppy.magicCode.review.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	String memberId;
	String memberNick;
	int srId;
	String srTitle;
	String srServerName;
	String srCategory;
	String petName;
	String petKind;
	int urRate;
	String urReview;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberNick() {
		return memberNick;
	}
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	public int getSrId() {
		return srId;
	}
	public void setSrId(int srId) {
		this.srId = srId;
	}
	public String getSrTitle() {
		return srTitle;
	}
	public void setSrTitle(String srTitle) {
		this.srTitle = srTitle;
	}
	public String getSrServerName() {
		return srServerName;
	}
	public void setSrServerName(String srServerName) {
		this.srServerName = srServerName;
	}
	public String getSrCategory() {
		return srCategory;
	}
	public void setSrCategory(String srCategory) {
		this.srCategory = srCategory;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetKind() {
		return petKind;
	}
	public void setPetKind(String petKind) {
		this.petKind = petKind;
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
	
	
}

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
	public int getPetAge() {
		return petAge;
	}
	public void setPetAge(int petAge) {
		this.petAge = petAge;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public int getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(int petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetSign() {
		return petSign;
	}
	public void setPetSign(String petSign) {
		this.petSign = petSign;
	}
	public String getSrServerId() {
		return srServerId;
	}
	public void setSrServerId(String srServerId) {
		this.srServerId = srServerId;
	}
	public String getSrServerName() {
		return srServerName;
	}
	public void setSrServerName(String srServerName) {
		this.srServerName = srServerName;
	}
	public int getSrPrice() {
		return srPrice;
	}
	public void setSrPrice(int srPrice) {
		this.srPrice = srPrice;
	}
	public String getSrLocation() {
		return srLocation;
	}
	public void setSrLocation(String srLocation) {
		this.srLocation = srLocation;
	}
	public String getSrCategory() {
		return srCategory;
	}
	public void setSrCategory(String srCategory) {
		this.srCategory = srCategory;
	}
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
	public Date getUrDate() {
		return urDate;
	}
	public void setUrDate(Date urDate) {
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
	public double getUrRate() {
		return urRate;
	}
	public void setUrRate(double urRate) {
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

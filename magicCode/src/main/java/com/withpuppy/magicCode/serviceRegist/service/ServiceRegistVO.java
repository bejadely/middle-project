package com.withpuppy.magicCode.serviceRegist.service;


import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ServiceRegistVO {
//	sr_id	number	no		1	
//	sr_picture_path	varchar2(512 byte)	yes		2	
//	sr_title	varchar2(50 byte)	no		3	
//	sr_server_id	varchar2(100 byte)	no		4	
//	sr_server_name	varchar2(100 byte)	no		5	
//	sr_start_date	date	no		6	
//	sr_end_date	date	no		7	
//	sr_start_time	date	no		8	
//	sr_end_time	date	no		9	
//	sr_introduce	long	no		10	
//	sr_category	varchar2(10 byte)	no		11	
//	sr_price	number	no		12	
//	sr_location	varchar2(256 byte)	no		13	
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
	
	public int getSrId() {
		return srId;
	}
	public void setSrId(int srId) {
		this.srId = srId;
	}
	public String getSrPicturePath() {
		return srPicturePath;
	}
	public void setSrPicturePath(String srPicturePath) {
		this.srPicturePath = srPicturePath;
	}
	public String getSrTitle() {
		return srTitle;
	}
	public void setSrTitle(String srTitle) {
		this.srTitle = srTitle;
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
	public String getSrStartDate() {
		return srStartDate;
	}
	public void setSrStartDate(String srStartDate) {
		this.srStartDate = srStartDate;
	}
	public String getSrEndDate() {
		return srEndDate;
	}
	public void setSrEndDate(String srEndDate) {
		this.srEndDate = srEndDate;
	}
	public String getSrStartTime() {
		return srStartTime;
	}
	public void setSrStartTime(String srStartTime) {
		this.srStartTime = srStartTime;
	}
	public String getSrEndTime() {
		return srEndTime;
	}
	public void setSrEndTime(String srEndTime) {
		this.srEndTime = srEndTime;
	}
	public String getSrIntroduce() {
		return srIntroduce;
	}
	public void setSrIntroduce(String srIntroduce) {
		this.srIntroduce = srIntroduce;
	}
	public String getSrCategory() {
		return srCategory;
	}
	public void setSrCategory(String srCategory) {
		this.srCategory = srCategory;
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
	
	
}

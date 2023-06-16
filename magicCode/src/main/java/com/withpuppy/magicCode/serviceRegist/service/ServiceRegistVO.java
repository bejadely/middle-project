package com.withpuppy.magicCode.serviceRegist.service;

import java.sql.Date;

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
}

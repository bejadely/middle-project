package com.withpuppy.magicCode.certification.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CertificationVO {
//	certification_id	number	no	
//	certification_name	varchar2(50 byte)	no	
//	certification_path	varchar2(512 byte)	no	
//	member_id	varchar2(100 byte)	no	
	
	private int certificationId;
	private String certificationName;
	private String certificationPath;
	private String memberId;
}

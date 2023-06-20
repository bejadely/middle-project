package com.withpuppy.magicCode.cm.service;

import com.withpuppy.magicCode.member.service.MemberVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CmVO extends MemberVO {
	private String memberId;
	private String memberNick;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberAddr;
	private String memberAuth; 
	
	private String certificaionPath;
}

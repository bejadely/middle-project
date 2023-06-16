package com.withpuppy.magicCode.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
	private String memberId;
	private String memberNick;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberAddr;
	private String memberAuth; //등급 (관리자, 일반회원, 시터, 훈련사, 미용사,관리자)
	private int memberCertificationId; // int 값 자격증 id
	private String memberCertificationName; //자격증 이름외래키
	private String memberCertificationPath; //자격증 경로외래키
	
	
}

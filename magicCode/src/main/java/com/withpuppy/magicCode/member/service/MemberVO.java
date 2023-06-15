package com.withpuppy.magicCode.member.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVO {
//	MEMBER_ID	VARCHAR2(100 BYTE)	No		1	회원아이디
//	MEMBER_NICK	VARCHAR2(100 BYTE)	Yes		2	"회원닉네임
//	"
//	MEMBER_PW	VARCHAR2(100 BYTE)	No		3	회원비밀번호
//	MEMBER_NAME	VARCHAR2(100 BYTE)	No		4	회원이름
//	MEMBER_TEL	VARCHAR2(100 BYTE)	No		5	회원전화번호
//	MEMBER_ADDR	VARCHAR2(1056 BYTE)	No		6	회원주소
//	MEMBER_AUTH	VARCHAR2(20 BYTE)	No		7	회원등급(admin, nomal, siter, trainer , groomer, undifine)
	
	private String memberId;
	private String memberNick;
	private String memberPw;
	private String memberName;
	private String memberTel;
	private String memberAddr;
	private String memberAuth;
	
}

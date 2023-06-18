package com.withpuppy.magicCode.member.service;

import java.util.List;


public interface MemberMapper {
	//선호
//	List<MemberVO> memberSelectAll();
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	MemberVO memberLogin(MemberVO vo);
	MemberVO memberSelectByNick(MemberVO vo);
	// 이름으로 회원 검색
	MemberVO memberSelectByName(String memberName);
	// ID로 회원 검색
	MemberVO memberSelectById(String memberId);
	
	int memberInsert(MemberVO vo);
	int memberInsertSitter(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberUpdateByAdmin(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	
}


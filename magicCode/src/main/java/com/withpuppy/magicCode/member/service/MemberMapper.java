package com.withpuppy.magicCode.member.service;

import java.util.List;


public interface MemberMapper {
	//선호
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	MemberVO memberLogin(MemberVO vo);
	MemberVO memberSelectByNick(MemberVO vo);
	
	int memberInsert(MemberVO vo);
	int memberInsertSitter(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberUpdateByAdmin(MemberVO vo);
	int memberDelete(MemberVO vo);
	
	// 이름으로 회원 검색
	List<MemberVO> memberSelectListByName(MemberVO vo);
	// ID로 회원 검색
	List<MemberVO> memberSelectListById(MemberVO vo);
	
	
}


package com.withpuppy.magicCode.member.service;

import java.util.List;

public interface MemberService {
//	List<MemberVO> memberSelectAll();
	List<MemberVO> memberSelectList();
	MemberVO memberSelect(MemberVO vo);
	MemberVO memberLogin(MemberVO vo);
	MemberVO memberSelectByNick(MemberVO vo);
	int memberInsert(MemberVO vo);
	int memberInsertSitter(MemberVO vo);
	int memberUpdate(MemberVO vo);
	int memberDelete(MemberVO vo);
}

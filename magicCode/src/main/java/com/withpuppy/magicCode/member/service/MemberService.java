package com.withpuppy.magicCode.member.service;

import java.util.List;

public interface MemberService {
	//선호 // 이곳은model 그릇 -> (mybatis)memberMapper.xml이 실행주체
//	List<MemberVO> memberSelectAll();
	List<MemberVO> memberSelectList(); //회원리스트
	MemberVO memberSelect(MemberVO vo); //상세조회
	MemberVO memberLogin(MemberVO vo); //로그인
	MemberVO memberSelectByNick(MemberVO vo); //닉네임ajax
	// 이름으로 회원 검색
	MemberVO memberSelectByName(String memberName);
	// ID로 회원 검색
	MemberVO memberSelectById(String memberId);
	
	int memberInsert(MemberVO vo); //일반수요자 회원가입
	int memberInsertSitter(MemberVO vo); //서비스공급자회원가입
	int memberUpdate(MemberVO vo); //회원수정
	int memberUpdateByAdmin(MemberVO vo); //관리자에의한 회원수정
	int memberDelete(MemberVO vo); //회원삭제
}

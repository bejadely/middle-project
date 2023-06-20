package com.withpuppy.magicCode.userRegist.service;

import java.util.List;

import com.withpuppy.magicCode.member.service.MemberVO;

public interface UserRegistMapper {
	List<UserRegistVO> userRegistSelectList();
	UserRegistVO userRegistSelect(UserRegistVO vo);
	int userRegistInsert(UserRegistVO vo);
	int userRegistUpdate(UserRegistVO vo);
	int userRegistDelete(UserRegistVO vo);
	
	int urCheckCUpdate(UserRegistVO vo); //서비스 요청 취소
	int urCheckEUpdate(UserRegistVO vo); //서비스 요청 완료
}

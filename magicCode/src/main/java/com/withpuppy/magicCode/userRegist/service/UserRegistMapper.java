package com.withpuppy.magicCode.userRegist.service;

import java.util.List;

public interface UserRegistMapper {
	List<UserRegistVO> userRegistSelectList();
	UserRegistVO userRegistSelect(UserRegistVO vo);
	int userRegistInsert(UserRegistVO vo);
	int userRegistUpdate(UserRegistVO vo);
	int userRegistDelete(UserRegistVO vo);
}

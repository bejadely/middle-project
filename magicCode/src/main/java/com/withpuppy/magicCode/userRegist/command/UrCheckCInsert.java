package com.withpuppy.magicCode.userRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class UrCheckCInsert implements Command {
//작업 중입니다 돌아가세요
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//서비스 요청 취소
		UserRegistService us = new UserRegistServiceImpl();
		
		return null;
	}

}

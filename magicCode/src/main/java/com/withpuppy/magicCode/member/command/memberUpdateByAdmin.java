package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class memberUpdateByAdmin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 관리자 페이지 회원정보수정으로 넘어감
		return "member/memberUpdateByAdmin";
	}

}

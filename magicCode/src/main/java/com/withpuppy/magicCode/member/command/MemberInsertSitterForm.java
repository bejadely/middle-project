package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class MemberInsertSitterForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 시터 회원가입 폼
		return "member/memberInsertSitter";
	}

}

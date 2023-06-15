package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class UpdateMyInfoForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 마이페이지 - 내 정보 수정 화면으로 이동
		return "member/updateMyInfoForm";
	}

}

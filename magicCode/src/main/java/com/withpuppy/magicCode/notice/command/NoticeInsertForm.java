package com.withpuppy.magicCode.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberVO;

public class NoticeInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "notice/noticeInsertForm";
	}

}

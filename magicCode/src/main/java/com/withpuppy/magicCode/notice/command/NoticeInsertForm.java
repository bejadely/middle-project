package com.withpuppy.magicCode.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberVO;

public class NoticeInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//멤버 아이디를 admin으로 임의지정
		MemberVO vo = new MemberVO();
		vo.setMemberId("admin");
		HttpSession session = request.getSession();
		session.setAttribute("name", vo.getMemberId());
		return "notice/noticeInsertForm";
	}

}

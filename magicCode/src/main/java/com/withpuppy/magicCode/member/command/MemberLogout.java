package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;

public class MemberLogout implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그아웃
		
		HttpSession session = request.getSession();
		String name = (String) session.getAttribute("name"); //좀더 꾸미고 싶을때
		session.invalidate(); //session 을 삭제
		request.setAttribute("message", name+"님 좋은하루 되십시오");
		
		return "member/memberMessage";
	}

}

package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//관리자가 회원정보 상세보기
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberId(request.getParameter("memberId"));
		System.out.println(request.getParameter("memberId"));
		
		vo = ms.memberSelect(vo);		
		request.setAttribute("member", vo);
		return "member/memberSelect";
	}
}

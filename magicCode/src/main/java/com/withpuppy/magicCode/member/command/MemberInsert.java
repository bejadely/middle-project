package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberNick(request.getParameter("memberNick"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberAuth(request.getParameter("memberAuth"));		
		
		int n = ms.memberInsert(vo);
		
		if(n != 0)
			request.setAttribute("message", "회원가입이 되셨습니다.");
		else
			request.setAttribute("message", "회원가입에 실패했습니다.");
		return "member/memberMessage";
	}

}

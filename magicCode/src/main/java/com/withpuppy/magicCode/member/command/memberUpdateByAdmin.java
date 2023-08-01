package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class memberUpdateByAdmin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		
		int n = ms.memberUpdateByAdmin(vo);
		
		if(n != 0) {
			request.setAttribute("message", "해당회원의 정보가 정상적으로 수정되었습니다.");
		} else {
			request.setAttribute("message", "해당회원의 정보 수정이 정상적으로 이루어지지 않았습니다. \n다시 시도해 주십시오.");
		}
		
		
		return "member/memberMessage";
	}

}

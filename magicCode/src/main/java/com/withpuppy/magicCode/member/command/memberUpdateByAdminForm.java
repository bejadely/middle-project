package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class memberUpdateByAdminForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 관리자에의한 회원정보 수정
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo = ms.memberSelect(vo);
		request.setAttribute("member", vo);
		
		return "member/memberUpdateByAdminForm";
	}

}

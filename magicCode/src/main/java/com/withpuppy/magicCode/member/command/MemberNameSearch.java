package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberNameSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		 // 이름으로 회원 검색 기능 구현
        MemberService ms = new MemberServiceImpl();
        String memberName = request.getParameter("memberName");
        MemberVO member = ms.memberSelectByName(memberName);
        request.setAttribute("member", member);
        return "member/memberSearchResult";
	}

}

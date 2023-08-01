package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 내 정보 수정 기능 수행
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		// 여기서 작업한게 MemberMapper.xml로 넘어간다
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		
		int n = ms.memberUpdate(vo);
		
		if(n != 0) {
			request.setAttribute("message", "고객님의 회원정보가 정상적으로 수정되었습니다.");
		} else {
			request.setAttribute("message", "회원정보 수정이 정상적으로 이루어지지 않았습니다. \n다시 시도해 주십시오.");
		}
		
		return "member/updateInfoMessage";
	}

}

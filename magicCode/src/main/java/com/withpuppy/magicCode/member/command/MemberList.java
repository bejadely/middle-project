package com.withpuppy.magicCode.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버목록 조회
		MemberService ms = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<MemberVO>();		
		members = ms.memberSelectList();

		//MemberVO vo = new MemberVO();
		//A등급을 불러오지를 못하고 있음
		//String memberAuth = request.getParameter("memberAuth");
		//vo.setMemberAuth(request.getParameter("memberAuth"));
		
		request.setAttribute("members", members);
		return "member/memberList";
		
		
		
	}

}

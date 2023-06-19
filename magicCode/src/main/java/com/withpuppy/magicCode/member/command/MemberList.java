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
		
		request.setAttribute("members", members);
		return "member/memberList";
		
		
		
	}

}

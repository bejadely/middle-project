package com.withpuppy.magicCode.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class searchAllMemberBykey implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// (이름/아이디)로 특정 게시물 검색
				List<MemberVO> members = new ArrayList<>();
				MemberService ms = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				
				if(request.getParameter("key").equals("id")) {
					vo.setMemberId(request.getParameter("val"));
					members = ms.memberSelectListById(vo);
				} else if(request.getParameter("key").equals("name")) {
					vo.setMemberName(request.getParameter("val"));
					members = ms.memberSelectListByName(vo);
				}
				
				request.setAttribute("members", members);
				
				return "member/memberList";
			}

}

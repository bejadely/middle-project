package com.withpuppy.magicCode.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.common.Paging;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;
import com.withpuppy.magicCode.notice.service.NoticeVO;

public class MemberList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 멤버목록 조회
		MemberService ms = new MemberServiceImpl();
		List<MemberVO> members = new ArrayList<>();		
		MemberVO vo = new MemberVO();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(7);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		// 전체 건수
		int total = ms.listPage();
		paging.setTotalRecord(total);
		
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		

		members = ms.memberSelectList(vo);
		request.setAttribute("members", members);
		request.setAttribute("paging", paging);
		
		return "member/memberList";
	}

}

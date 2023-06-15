package com.withpuppy.magicCode.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 공지사항 목록 가져오기
		NoticeService ns = new NoticeServiceImpl();
		List<NoticeVO> notices = new ArrayList<>();
		notices = ns.noticeSelectList();
		//멤버 아이디를 admin으로 임의지정
		MemberVO vo = new MemberVO();
		vo.setMemberId("admin");
		HttpSession session = request.getSession();
		session.setAttribute("name", vo.getMemberId());
		request.setAttribute("notices", notices);
		return "notice/noticeList";
	}

}

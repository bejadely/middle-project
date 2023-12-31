package com.withpuppy.magicCode.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 상세 보기
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo = ns.noticeSelect(vo);
		
		// DB 에 <br>태그를 엔터로 치환
		String brChange = vo.getNoticeSubject().replaceAll("\n", "<br>");
		vo.setNoticeSubject(brChange);
		
		request.setAttribute("notice", vo);
		
		return "notice/noticeSelect";
	}

}

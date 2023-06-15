package com.withpuppy.magicCode.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 실제 DB에서 게시글 내용 수정하고 저장
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId")));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		vo.setNoticeTime(request.getParameter("noticeTime"));
		
		ns.noticeUpdate(vo);
		
		return "notice/noticeList";
	}

}

package com.withpuppy.magicCode.notice.command;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.time.LocalDate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시물 입력 기능 수행
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		
		vo.setNoticeWriter(request.getParameter("noticeWriter"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		
		// 현재 날짜 가져오기
        LocalDate currentDate = LocalDate.now();
        
        
        Date sqlDate = Date.valueOf(currentDate);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String today = format.format(sqlDate);
		vo.setNoticeTime(today);
		
		int n = ns.noticeInsert(vo);

		if(n != 0) {
			request.setAttribute("message", "공지사항이 정상적으로 등록되었습니다.");
		}else {
			request.setAttribute("message", "공지사항 등록에 실패하였습니다. 다시 시도해주십시오.");
		}
		return "notice/noticeMessage";
	}

}

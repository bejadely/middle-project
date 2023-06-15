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
		
		// DB에 입력할 내용들 vo에 담아주기
		vo.setNoticeWriter(request.getParameter("noticeWriter"));
		vo.setNoticeTitle(request.getParameter("noticeTitle"));
		vo.setNoticeSubject(request.getParameter("noticeSubject"));
		// vo.setNoticeWdate(Date.valueOf(request.getParameter("noticeWdate")));
		// 해당 구문은 따로 입력한 Date값이 없기 때문에 사용 불가
		
		// 현재 날짜 가져오기
        LocalDate currentDate = LocalDate.now();
        
        
        // 현재 날짜를 SQL Date로 변환
        Date sqlDate = Date.valueOf(currentDate);
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        String today = format.format(sqlDate);
		vo.setNoticeTime(today);
		
		// 실제로 SQL문 실행
		int n = ns.noticeInsert(vo);

		return "noticeList.do";
	}

}

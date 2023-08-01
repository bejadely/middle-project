package com.withpuppy.magicCode.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;
import com.withpuppy.magicCode.review.service.ReviewVO;

public class NoticeSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		List<NoticeVO> notices = new ArrayList<>();
		NoticeVO vo = new NoticeVO();
		
		
		if(request.getParameter("searchField").equals("noticeTitle")) {
			String searchText = request.getParameter("searchText");
            if(searchText != null && !searchText.equals("") ){
            	vo.setNoticeTitle(request.getParameter("searchText"));
            	notices = ns.noticeSearchTitle(vo);
            }
		}else if(request.getParameter("searchField").equals("noticeTime")) {
			vo.setNoticeTime(request.getParameter("searchText"));
			notices = ns.noticeSearchTime(vo);
		}else {
			
		}
		
		request.setAttribute("notices", notices);
		return "notice/noticeList";
	}

}

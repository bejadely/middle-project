package com.withpuppy.magicCode.notice.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.common.Paging;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeListPage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		NoticeService ns = new NoticeServiceImpl();
		List<NoticeVO> notices = new ArrayList<>();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(5);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		// 전체 건수
		int total = ns.listPage();
		paging.setTotalRecord(total);
		
		NoticeVO vo = new NoticeVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		notices = ns.noticeListPage(vo);
		request.setAttribute("notices", notices);
		request.setAttribute("paging", paging);
		return "notice/noticeListPage";
	}

}

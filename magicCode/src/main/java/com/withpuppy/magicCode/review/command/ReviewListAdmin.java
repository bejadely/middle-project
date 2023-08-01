package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.common.Paging;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;

public class ReviewListAdmin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//전체리뷰조회 관리자
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		ReviewVO vo = new ReviewVO();
		
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
		int total = rs.listPage();
		paging.setTotalRecord(total);
		
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		reviews = rs.reviewSelectList(vo);
		request.setAttribute("reviews", reviews);
		//srId에 해당하는 리뷰리스트들
		request.setAttribute("paging", paging);
		
		return "review/reviewListAdmin";
	}

}

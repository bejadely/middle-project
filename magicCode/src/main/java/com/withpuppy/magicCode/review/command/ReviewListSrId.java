package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.common.Paging;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;

public class ReviewListSrId implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(3);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		// 전체 건수
		int total = rs.listPage();
		paging.setTotalRecord(total);
		
		ReviewVO vo = new ReviewVO();
		vo.setFirst(paging.getFirst());
		vo.setLast(paging.getLast());
		
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		reviews = rs.reviewSelectSrId(vo);
		Double reviewRateAvg = rs.reviewRateAvg(vo.getSrId());
		
		//리뷰 평균값
		request.setAttribute("reviewRateAvg", reviewRateAvg);
		//srId에 해당하는 리뷰리스트들
		request.setAttribute("reviewsSrId", reviews);
		request.setAttribute("paging", paging);
		return "review/ReviewListSrId";
		
		
	}

}

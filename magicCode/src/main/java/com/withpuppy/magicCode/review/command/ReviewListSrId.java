package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;

public class ReviewListSrId implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		ServiceRegistVO vo = new ServiceRegistVO();
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		reviews = rs.reviewSelectSrId(vo);
		Double reviewRateAvg = rs.reviewRateAvg(vo.getSrId());
		
		//리뷰 평균값
		request.setAttribute("reviewRateAvg", reviewRateAvg);
		//srId에 해당하는 리뷰리스트들
		request.setAttribute("reviewsSrId", reviews);
		//커맨드를 띄울 페이지 연결해야함!
		return "";
	}

}

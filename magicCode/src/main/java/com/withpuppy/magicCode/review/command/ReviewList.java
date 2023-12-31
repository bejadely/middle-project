package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class ReviewList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 전체리뷰조회
		
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		ReviewVO vo = new ReviewVO();
		reviews = rs.reviewSelectList(vo);
		
		request.setAttribute("reviews", reviews);
		return "review/reviewList";
	}

}

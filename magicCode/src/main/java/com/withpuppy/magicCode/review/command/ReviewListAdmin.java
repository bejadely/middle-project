package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;

public class ReviewListAdmin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//전체리뷰조회 관리자
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		reviews = rs.reviewSelectList();
		
		request.setAttribute("reviews", reviews);
		return "review/reviewListAdmin";
	}

}
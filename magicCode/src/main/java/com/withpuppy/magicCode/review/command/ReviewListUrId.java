package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class ReviewListUrId implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		UserRegistVO vo = new UserRegistVO();
		reviews = rs.reviewSelectUrId(vo);
		
		request.setAttribute("reviews", reviews);
		//커맨드를 띄울 페이지 연결해야함!
		return "";
	}

}

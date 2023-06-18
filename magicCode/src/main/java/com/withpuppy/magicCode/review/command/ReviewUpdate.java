package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class ReviewUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//DB에 리뷰 수정
		ReviewService rs = new ReviewServiceImpl();
		UserRegistVO vo = new UserRegistVO();
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		vo.setUrRate(Integer.valueOf(request.getParameter("urRate")));
		vo.setUrReview(request.getParameter("urReview"));
		
		int n = rs.reviewUpdate(vo);
		if(n != 0) {
			request.setAttribute("message", "리뷰가 정상적으로 수정되었습니다.");
		}else {
			request.setAttribute("message", "리뷰수정에 실패하였습니다. 다시 시도해주십시오.");
		}
		return "review/Message";
	}

}

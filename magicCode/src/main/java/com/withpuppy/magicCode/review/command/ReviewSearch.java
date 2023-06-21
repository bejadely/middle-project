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

public class ReviewSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		ReviewVO vo = new ReviewVO();
		
		
		if(request.getParameter("searchField").equals("urReview")) {
			String searchText = request.getParameter("searchText");
            if(searchText != null && !searchText.equals("") ){
            	vo.setUrReview(request.getParameter("searchText"));
            	reviews = rs.reviewUrReviewSearch(vo);
            }
		}else if(request.getParameter("searchField").equals("memberNick")) {
			vo.setMemberNick(request.getParameter("searchText"));
			reviews = rs.reviewMemberNickSearch(vo);
		}else {
			
		}
		
		request.setAttribute("reviews", reviews);
		return "review/reviewListAdmin";

	}
}

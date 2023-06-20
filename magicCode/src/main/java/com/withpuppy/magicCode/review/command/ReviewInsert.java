package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class ReviewInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		ReviewService urs = new ReviewServiceImpl();
		UserRegistVO vo = new UserRegistVO();
		//urId를 파라미터로 가져와야함 userRegist urid값을 가져오는 구문 필요함!
		//request.setAttribute("urId", UrId);
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		vo.setUrRate(Integer.valueOf(request.getParameter("urRate")));
		vo.setUrReview(request.getParameter("urReview"));
		System.out.print(vo.getUrId());
		
		int n = urs.reviewInsert(vo);
		if(n != 0) {
			request.setAttribute("message", "리뷰글이 정상적으로 수정되었습니다.");
		}else {
			request.setAttribute("message", "리뷰글 수정에 실패하였습니다. 다시 시도해주십시오.");
		}
		return "review/Message";
		
	}

}

package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class ReviewDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//리뷰삭제
		ReviewService urs = new ReviewServiceImpl();
		UserRegistVO vo = new UserRegistVO();
		//urId를 파라미터로 가져와야함
		//request.setAttribute("urId", UrId);
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		
		int n = urs.reviewDelete(vo);
		if(n != 0) {
			request.setAttribute("message", "게시글이 정상적으로 삭제되었습니다.");
		}else {
			request.setAttribute("message", "게시글 삭제에 실패하였습니다. 다시 시도해주십시오.");
		}
		return "review/Message";
	}

}

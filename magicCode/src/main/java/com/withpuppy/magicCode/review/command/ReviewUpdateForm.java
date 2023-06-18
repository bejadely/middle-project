package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class ReviewUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 리뷰수정 폼
		UserRegistService urs = new UserRegistServiceImpl();
		UserRegistVO vo = new UserRegistVO();
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		
		vo = urs.userRegistSelect(vo);
		request.setAttribute("urs", vo);
		
		return "notice/noticeUpdateForm";
	}

}

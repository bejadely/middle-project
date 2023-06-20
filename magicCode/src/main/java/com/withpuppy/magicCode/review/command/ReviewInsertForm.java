package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class ReviewInsertForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		UserRegistService urs = new UserRegistServiceImpl();
		UserRegistVO vo = new UserRegistVO();
		System.out.println(request.getParameter("urId"));
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		System.out.println(vo.getUrId());
		
		vo = urs.userRegistSelect(vo);
		request.setAttribute("userRegist", vo);
		return "review/reviewInsertForm";
	}

}

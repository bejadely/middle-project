package com.withpuppy.magicCode.userRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class UrCheckCUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//서비스 요청 취소
		UserRegistService us = new UserRegistServiceImpl();
        UserRegistVO vo = new UserRegistVO();
	
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		//System.out.println(request.getParameter("urId"));
		int n = us.urCheckCUpdate(vo);
		
		if (n != 0) {
			request.setAttribute("msg", "서비스 취소 처리 되었습니다.");
			request.setAttribute("url", "sitterRequestHistory.do");
			return "alert/alert";
		}else {
			request.setAttribute("msg", "다시 시도해주세요.");
			request.setAttribute("url", "sitterRequestHistory.do");
			return "alert/alert";
		}
		
	}

}

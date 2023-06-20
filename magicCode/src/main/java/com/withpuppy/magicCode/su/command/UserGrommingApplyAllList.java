package com.withpuppy.magicCode.su.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.su.service.SuService;
import com.withpuppy.magicCode.su.service.SuVO;
import com.withpuppy.magicCode.su.serviceImpl.SuServiceImpl;

public class UserGrommingApplyAllList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//나의 미용 서비스 신청 전체 리스트
		SuService ss = new SuServiceImpl();
		HttpSession session = request.getSession();
		
		String urMemberId = String.valueOf(session.getAttribute("id"));	
		List<SuVO> userRegists = ss.userGrommingApplyAllList(urMemberId);
		System.out.println(urMemberId);
		
		request.setAttribute("userRegists", userRegists);
		return "member/userGrommingApplyAllList";
	}

}

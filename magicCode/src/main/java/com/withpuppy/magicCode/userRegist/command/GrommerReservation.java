package com.withpuppy.magicCode.userRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class GrommerReservation implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 미용 예약 페이지로 이동
		
		request.setAttribute("srId", request.getParameter("srId"));
		request.setAttribute("srPrice", request.getParameter("srPrice"));
		
		return "userRegist/grommerReservation";
	}

}

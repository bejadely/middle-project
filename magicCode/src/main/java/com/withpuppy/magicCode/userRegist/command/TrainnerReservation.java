package com.withpuppy.magicCode.userRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class TrainnerReservation implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 훈련 서비스 예약 페이지로 이동
		
		request.setAttribute("srId", request.getParameter("srId"));
		request.setAttribute("srPrice", request.getParameter("srPrice"));
		
		return "userRegist/trainnerReservation";
	}

}

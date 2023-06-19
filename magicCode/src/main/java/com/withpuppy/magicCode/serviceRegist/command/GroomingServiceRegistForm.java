package com.withpuppy.magicCode.serviceRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class GroomingServiceRegistForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// (시터) 그루밍 서비스 등록 폼으로 이동
		return "serviceRegist/groomingServiceRegistForm";
	}

}

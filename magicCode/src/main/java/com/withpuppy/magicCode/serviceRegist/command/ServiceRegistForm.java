package com.withpuppy.magicCode.serviceRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class ServiceRegistForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 서비스 등록 화면으로 이동
		return "serviceRegist/serviceRegistForm";
	}

}

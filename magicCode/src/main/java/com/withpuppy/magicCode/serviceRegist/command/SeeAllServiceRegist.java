package com.withpuppy.magicCode.serviceRegist.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class SeeAllServiceRegist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 전체 서비스 등록 현황 조회화면 호출 및 조회 기능
		List<ServiceRegistVO> serviceRegist = new ArrayList<>();
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		
		// sql 실행
		serviceRegist = srs.serviceRegistSelectList();
		
		// 결과 저장
		request.setAttribute("serviceRegist", serviceRegist);
		
		return "admin/seeAllServiceRegist";
	}

}

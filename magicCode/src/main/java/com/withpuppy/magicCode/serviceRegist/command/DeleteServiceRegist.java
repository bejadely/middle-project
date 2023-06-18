package com.withpuppy.magicCode.serviceRegist.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class DeleteServiceRegist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 삭제 및 전체 게시글 재조회 기능
		
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO();
		List<ServiceRegistVO> serviceRegist = new ArrayList<>();
		
		// 1. 게시글 삭제
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		
		int n = srs.serviceRegistDelete(vo);
		
		// 2. 게시글 재조회
		serviceRegist = srs.serviceRegistSelectList();
		
		request.setAttribute("serviceRegist", serviceRegist);
		
		return "admin/seeAllServiceRegist";
	}

}

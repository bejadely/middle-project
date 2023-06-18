package com.withpuppy.magicCode.serviceRegist.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class SearchAllServiceRegistBykey implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// (이름/아이디)로 특정 게시물 검색
		List<ServiceRegistVO> serviceRegist = new ArrayList<>();
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO();
		
		if(request.getParameter("key").equals("id")) {
			vo.setSrServerId(request.getParameter("val"));
			serviceRegist = srs.selectListById(vo);
		} else if(request.getParameter("key").equals("name")) {
			vo.setSrServerName(request.getParameter("val"));
			serviceRegist = srs.selectListByName(vo);
		}
		
		request.setAttribute("serviceRegist", serviceRegist);
		
		return "admin/seeAllServiceRegist";
	}

}

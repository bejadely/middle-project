package com.withpuppy.magicCode.su.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.su.service.SuService;
import com.withpuppy.magicCode.su.service.SuVO;
import com.withpuppy.magicCode.su.serviceImpl.SuServiceImpl;

public class SitterAllList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 전체 시터 목록 조회
		SuService ss = new SuServiceImpl();	
		List<SuVO> services = new ArrayList<>();
	
		services = ss.sitterAllList();
	
		request.setAttribute("services", services);
		
		return "member/sitterAllList";
	}

}

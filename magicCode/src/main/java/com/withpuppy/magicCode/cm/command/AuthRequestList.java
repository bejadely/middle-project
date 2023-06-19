package com.withpuppy.magicCode.cm.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cm.service.CmService;
import com.withpuppy.magicCode.cm.service.CmVO;
import com.withpuppy.magicCode.cm.serviceImpl.CmServiceImpl;
import com.withpuppy.magicCode.common.Command;

public class AuthRequestList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 권한 요청 리스트 페이지 호출 및 권한 요청 리스트 불러오기
		CmService cms = new CmServiceImpl();
		List<CmVO> list = new ArrayList<>();
		
		// DB에서 값 꺼내기
		list = cms.cmSelectList();
		
		request.setAttribute("list", list);
		
		return "admin/authRequestList";
	}

}

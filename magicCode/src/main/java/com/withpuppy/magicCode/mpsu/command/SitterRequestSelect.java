package com.withpuppy.magicCode.mpsu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.mpsu.service.MpsuService;
import com.withpuppy.magicCode.mpsu.service.MpsuVO;
import com.withpuppy.magicCode.mpsu.serviceImpl.MpsuServiceImpl;

public class SitterRequestSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//돌봄 서비스 요청 단건 조회
		MpsuService ms = new MpsuServiceImpl();
		MpsuVO vo = new MpsuVO();
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		System.out.println(request.getParameter("urId"));
		vo = ms.sitterRequestSelect(vo);
		request.setAttribute("sitter", vo);
		
		return "serviceRegist/sitterRequestSelect";
	}

}

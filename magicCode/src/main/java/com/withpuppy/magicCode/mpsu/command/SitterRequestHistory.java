package com.withpuppy.magicCode.mpsu.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.mpsu.service.MpsuService;
import com.withpuppy.magicCode.mpsu.service.MpsuVO;
import com.withpuppy.magicCode.mpsu.serviceImpl.MpsuServiceImpl;


public class SitterRequestHistory implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//돌봄 서비스 요청 내역 조회(전체)
		MpsuService ms = new MpsuServiceImpl();
		HttpSession session = request.getSession();
		
		String id = String.valueOf(session.getAttribute("id"));
		List<MpsuVO> sitter = ms.sitterRequestHistory(id);

		request.setAttribute("sitter", sitter);
		
		return "serviceRegist/sitterRequestHistory";
	}

}

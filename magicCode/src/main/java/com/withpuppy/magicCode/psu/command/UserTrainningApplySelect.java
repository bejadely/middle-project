package com.withpuppy.magicCode.psu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.psu.service.PsuService;
import com.withpuppy.magicCode.psu.service.PsuVO;
import com.withpuppy.magicCode.psu.serviceImpl.PsuServiceImpl;

public class UserTrainningApplySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 미용 서비스 신청내역 상세 조회
		PsuService ps = new PsuServiceImpl();
		PsuVO vo = new PsuVO();
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		
		vo = ps.userTrainningApplySelect(vo);
		request.setAttribute("userRegist", vo);
		return "member/userTrainningApplySelect";
	}

}

package com.withpuppy.magicCode.psu.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.psu.service.PsuService;
import com.withpuppy.magicCode.psu.service.PsuVO;
import com.withpuppy.magicCode.psu.serviceImpl.PsuServiceImpl;

public class UserSitterApplySelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		PsuService ps = new PsuServiceImpl();
		PsuVO vo = new PsuVO();
		vo.setUrId(Integer.valueOf(request.getParameter("urId")));
		
		vo = ps.userSitterApplySelect(vo);
		request.setAttribute("userRegist", vo);
		
		return "member/userSitterApplySelect";
	}

}

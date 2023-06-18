package com.withpuppy.magicCode.cmsu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cmsu.service.CmsuService;
import com.withpuppy.magicCode.cmsu.service.CmsuVO;
import com.withpuppy.magicCode.cmsu.serviceImpl.CmsuServiceImpl;
import com.withpuppy.magicCode.common.Command;

public class TrainnerSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//훈련사 단건 조회
		CmsuService cs = new CmsuServiceImpl();
		CmsuVO vo = new CmsuVO();
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		vo = cs.trainnerSelect(vo);
		request.setAttribute("trainner", vo);
		return "member/trainnerSelect";
	}

}

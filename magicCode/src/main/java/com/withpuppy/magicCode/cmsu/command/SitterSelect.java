package com.withpuppy.magicCode.cmsu.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cmsu.service.CmsuService;
import com.withpuppy.magicCode.cmsu.service.CmsuVO;
import com.withpuppy.magicCode.cmsu.serviceImpl.CmsuServiceImpl;
import com.withpuppy.magicCode.common.Command;

public class SitterSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//시터 단건 조회용
		CmsuService cs = new CmsuServiceImpl();
		CmsuVO vo = new CmsuVO();
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		vo = cs.sitterSelect(vo);
		
		// DB 에 <br>태그를 엔터로 치환
		String brChange = vo.getSrIntroduce().replaceAll("\n", "<br>");
		vo.setSrIntroduce(brChange);
		
		request.setAttribute("sitter", vo);
		return "member/sitterSelect";
	}

}

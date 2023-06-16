package com.withpuppy.magicCode.serviceRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class ServiceRegist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 서비스 등록 수행
		// 작업중(창민)
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO();
		
		vo.setSrPicturePath(request.getParameter("srPicturePath"));
		vo.setSrTitle(request.getParameter("srTitle"));
		vo.setSrServerId(request.getParameter("srServerId"));
		vo.setSrServerName(request.getParameter("srServerName"));
		vo.setSrStartDate(request.getParameter("srStartDate"));
		vo.setSrEndDate(request.getParameter("srEndDate"));
		vo.setSrStartTime(request.getParameter("srStartTime"));
		vo.setSrEndTime(request.getParameter("srEndTime"));
		vo.setSrIntroduce(request.getParameter("srIntroduce"));
		vo.setSrCategory(request.getParameter("srCategory"));
		vo.setSrPrice(Integer.valueOf(request.getParameter("srPrice")));
		vo.setSrLocation(request.getParameter("srLocation"));
		
		// SQL문 실행
		int n = srs.serviceRegistInsert(vo);
		
		if( n != 0) {
			request.setAttribute("message", "서비스 등록이 정상적으로 수행되었습니다.");
		}else {
			request.setAttribute("message", "서비스 등록에 실패하였습니다. 다시 시도해주십시오.");
		}
		
		// 임시로 메인에 넣음
		return "main/main";
	}

}

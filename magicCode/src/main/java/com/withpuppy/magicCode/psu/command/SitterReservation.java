package com.withpuppy.magicCode.psu.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.psu.service.PsuService;
import com.withpuppy.magicCode.psu.service.PsuVO;
import com.withpuppy.magicCode.psu.serviceImpl.PsuServiceImpl;

public class SitterReservation implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// //돌봄 서비스 예약 //ur_regist table insert
		PsuService ps = new PsuServiceImpl();
		PsuVO vo = new PsuVO();

		
//		PsuVO sr = new PsuVO();
//		sr.setSrPrice(Integer.valueOf(request.getParameter("srPrice")));
//		sr.setSrStartDate(request.getParameter("srStartDate")); //선택 가능한 시작날짜 지정
//		sr.setSrEndDate(request.getParameter("srEndDate")); //선택 가능한 끝 날짜 지정
//		sr.setSrLocation(request.getParameter("srLocation"));
//		int s = ps.srTableInsert(sr);
		vo.setUrDate(request.getParameter("urDate")); //선택한 예약날짜 입력
		vo.setUrStartTime(request.getParameter("urStartTime"));
		vo.setUrEndTime(request.getParameter("urEndTime"));
		vo.setUrRequire(request.getParameter("urRequire"));
		vo.setUrPayment(request.getParameter("urPayment"));
		int ur = ps.urTableInsert(vo);
		
		if( ur != 0) {
			request.setAttribute("message", "돌봄 서비스 예약이 완료 되었습니다..");
		}else {
			request.setAttribute("message", "돌봄 서비스 예약에 실패 했습니다. 다시 시도해주십시오.");
		}
		
		return "member/sitterReservation";
	}

//	- 결제수단 선택
	
	//<label>min & max</label>
    //<input type="date" min="${minDate}" max="${maxDate}">
}

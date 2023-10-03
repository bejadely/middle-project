package com.withpuppy.magicCode.userRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.pet.service.PetService;
import com.withpuppy.magicCode.pet.service.PetVO;
import com.withpuppy.magicCode.pet.serviceImpl.PetServiceImpl;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;
import com.withpuppy.magicCode.userRegist.serviceImpl.UserRegistServiceImpl;

public class GroomerServiceRegist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 미용 예약 기능 수행
		
		// PetInsert 수행을 위한 구문
		PetVO pvo = new PetVO();
		PetService ps = new PetServiceImpl();
		
		pvo.setOwnerId(request.getParameter("urMemberId"));
		pvo.setPetName(request.getParameter("petName"));
		pvo.setPetKind(request.getParameter("petKind"));
		pvo.setPetAge(Integer.valueOf(request.getParameter("petAge")));
		pvo.setPetGender(request.getParameter("petGender"));
		pvo.setPetWeight(Double.valueOf(request.getParameter("petWeight")));
		pvo.setPetSign(request.getParameter("petSign"));
		
		// PetInsert 우선 수행
		ps.petInsert(pvo);
		
		// UserRegistInsert(PetInsert 완료 후 PET 테이블에 새로 생성된 pet_id를 활용)
		UserRegistVO uvo = new UserRegistVO();
		UserRegistService urs = new UserRegistServiceImpl();
		uvo.setUrPetId(pvo.getPetId());
		uvo.setUrMemberId(request.getParameter("urMemberId"));
		uvo.setUrRequire(request.getParameter("urRequire"));
		uvo.setUrPayment(request.getParameter("urPayment"));
		uvo.setUrDate(request.getParameter("urDate"));
		uvo.setUrStartTime(request.getParameter("urStartTime"));
		uvo.setUrEndTime(request.getParameter("urEndTime"));
		uvo.setSrId(Integer.valueOf(request.getParameter("srId")));
		
		urs.userRegistInsert(uvo);
		
		return "main/main";
	}

}

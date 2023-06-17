package com.withpuppy.magicCode.serviceRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.certification.service.CertificationService;
import com.withpuppy.magicCode.certification.service.CertificationVO;
import com.withpuppy.magicCode.certification.serviceImpl.CertificationServiceImpl;
import com.withpuppy.magicCode.common.Command;

public class imgTest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 서버에 저장되어있는 이미지 호출
		CertificationService cs = new CertificationServiceImpl();
		CertificationVO vo = new CertificationVO();
		
		vo.setCertificationId(3);
		
		CertificationVO certification = cs.certificationSelect(vo);
		
		request.setAttribute("path", certification.getCertificationPath());
		
		return "serviceRegist/imgTest";
	}

}

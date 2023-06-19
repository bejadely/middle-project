package com.withpuppy.magicCode.serviceRegist.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.certification.service.CertificationService;
import com.withpuppy.magicCode.certification.service.CertificationVO;
import com.withpuppy.magicCode.certification.serviceImpl.CertificationServiceImpl;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class imgTest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 서버에 저장되어있는 이미지 호출
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO(); 
		
		vo.setSrPicturePath("upload/김나나10.jpg");
		
		
		request.setAttribute("path", vo.getSrPicturePath());
		
		return "serviceRegist/imgTest";
	}

}

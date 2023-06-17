package com.withpuppy.magicCode.serviceRegist.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.withpuppy.magicCode.certification.service.CertificationService;
import com.withpuppy.magicCode.certification.service.CertificationVO;
import com.withpuppy.magicCode.certification.serviceImpl.CertificationServiceImpl;
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
		
		// certification file 등록
		CertificationService cs = new CertificationServiceImpl();
		CertificationVO cVo = new CertificationVO();
		
		String saveDir = request.getServletContext().getRealPath("/upload"); // 아직은 여기에 저장은 가능하지만, 여기있는것을 불러오지는 못함(서버 디렉토리로 인식하지 못하기때문 > web.xml에 설정해줘야함)
		int maxSize = 100 * 1024 * 1024; // 파일의 최고 크기 설정 (기본적으로 서버에 생으로 default값을 넣으면 최대 200mb까지 전송가능)
		
		int n = 0;
		
		//cos 라이브러리에서 제공
		try {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String cfile = multi.getFilesystemName("cfile");
			cfile = saveDir + cfile; // 물리적인 저장위치를 앞에 붙여줌
			String ofile = multi.getOriginalFileName("cfile"); // 여기서 cfile은 실제 폼에서 가져오는 cfile네임
			
			vo.setSrPicturePath(multi.getParameter("srPicturePath"));
			vo.setSrTitle(multi.getParameter("srTitle"));
			vo.setSrServerId(multi.getParameter("srServerId"));
			vo.setSrServerName(multi.getParameter("srServerName"));
			vo.setSrStartDate(multi.getParameter("srStartDate"));
			vo.setSrEndDate(multi.getParameter("srEndDate"));
			vo.setSrStartTime(multi.getParameter("srStartTime"));
			vo.setSrEndTime(multi.getParameter("srEndTime"));
			vo.setSrIntroduce(multi.getParameter("srIntroduce"));
			vo.setSrCategory(multi.getParameter("srCategory"));
			vo.setSrPrice(Integer.valueOf(multi.getParameter("srPrice")));
			vo.setSrLocation(multi.getParameter("srLocation"));

			cVo.setCertificationName(multi.getParameter("certificationName"));
			cVo.setMemberId(multi.getParameter("srServerId"));
			
			if(ofile != null) {
				cVo.setCertificationImgname(ofile); // 실제 이미지 이름
				cVo.setCertificationPath(cfile); // 경로 + 이미지명
				System.out.println(ofile + "ofile임");
				System.out.println(cfile + "cfile임");
				System.out.println(cVo.getMemberId());
			}
			
			// SQL문 실행
			n = srs.serviceRegistInsert(vo);			
			cs.certificationInsert(cVo);
			
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		
		if( n != 0) {
			request.setAttribute("message", "서비스 등록이 정상적으로 수행되었습니다.");
		}else {
			request.setAttribute("message", "서비스 등록에 실패하였습니다. 다시 시도해주십시오.");
		}
		
		// 임시로 메인에 넣음
		return "main/main";
	}

}

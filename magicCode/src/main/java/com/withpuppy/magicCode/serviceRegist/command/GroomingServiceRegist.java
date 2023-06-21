package com.withpuppy.magicCode.serviceRegist.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.serviceRegist.serviceImpl.ServiceRegistServiceImpl;

public class GroomingServiceRegist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// (시터) 그루밍 서비스 등록 
		ServiceRegistService srs = new ServiceRegistServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO();
		
		String saveDir = request.getServletContext().getRealPath("/upload"); 
		int maxSize = 100 * 1024 * 1024; 
		int n = 0;
		
		//cos
		try {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			
			// 훈련사 사진 업로드용
			String mfile = multi.getFilesystemName("mfile");
			mfile = "upload/" + mfile; // 물리적인 저장위치를 앞에 붙여줌
			
			vo.setSrPicturePath(mfile);
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

			// SQL문 실행
			n = srs.serviceRegistInsert(vo);			
			
		} catch (IOException e) {
			e.printStackTrace();
		} 
		
		
		if( n != 0) {
			request.setAttribute("message", "서비스 등록이 정상적으로 수행되었습니다.");
		}else {
			request.setAttribute("message", "서비스 등록에 실패하였습니다. 다시 시도해주십시오.");
		}
		
		return "serviceRegist/serviceRegistMessage";
	}

}

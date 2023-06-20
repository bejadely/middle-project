package com.withpuppy.magicCode.member.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.withpuppy.magicCode.certification.service.CertificationService;
import com.withpuppy.magicCode.certification.service.CertificationVO;
import com.withpuppy.magicCode.certification.serviceImpl.CertificationServiceImpl;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberInsertSitter implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		// certification file 등록
		CertificationService cs = new CertificationServiceImpl();
		CertificationVO cVo = new CertificationVO();
		
		String saveDir = request.getServletContext().getRealPath("/upload"); 
		int maxSize = 100 * 1024 * 1024;
		int n = 0;
		int m = 0;
		
		try {
			MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
			String cfile = multi.getFilesystemName("cfile");
			cfile = "upload/" + cfile; // 물리적인 저장위치를 앞에 붙여줌
			
			// 훈련사 사진 업로드용
			String mfile = multi.getFilesystemName("mfile");
			mfile = "upload/" + mfile; // 물리적인 저장위치를 앞에 붙여줌
			
			vo.setMemberId(multi.getParameter("memberId"));
			vo.setMemberPw(multi.getParameter("memberPw"));
			vo.setMemberName(multi.getParameter("memberName"));
			vo.setMemberTel(multi.getParameter("memberTel"));
			vo.setMemberAddr(multi.getParameter("memberAddr"));
			vo.setMemberAuth(multi.getParameter("memberAuth"));
			
			cVo.setCertificationName(multi.getParameter("certificationName"));
			cVo.setMemberId(multi.getParameter("memberId"));
			
			if(cfile != null) {
				cVo.setCertificationPath(cfile); // 경로 + 이미지명
			}
			
			// SQL문 실행
			n = ms.memberInsert(vo);
			m = cs.certificationInsert(cVo);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		if(n != 0)
			if(m != 0) {
				request.setAttribute("message", "회원가입이 되셨습니다.");
			}
		else
			request.setAttribute("message", "회원가입에 실패했습니다.");
		
		return "member/memberMessage";
	}

}

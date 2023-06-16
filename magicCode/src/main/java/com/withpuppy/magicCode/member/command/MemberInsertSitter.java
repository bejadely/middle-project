package com.withpuppy.magicCode.member.command;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.common.FileUpload;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberInsertSitter implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HashMap<String,String> map = new HashMap<String, String>(); //파일 업로드를 위한 hash map추가사항
		
		FileUpload fileUpload = new FileUpload();  //자격증 파일 업로드 
		String dir = "attech";
		map = fileUpload.upload(request, response, dir);  //multipart 객체를 처리해서 map객체로 리턴
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberPw(request.getParameter("memberPw"));
		vo.setMemberName(request.getParameter("memberName"));
		vo.setMemberTel(request.getParameter("memberTel"));
		vo.setMemberAddr(request.getParameter("memberAddr"));
		vo.setMemberAuth(request.getParameter("memberAuth"));
		
		//자격증 삽입
		//vo.setMemberCertificationId(map.get("memberCertificationId"));
		vo.setMemberCertificationName(map.get("memberCertificationName"));
		vo.setMemberCertificationPath(map.get("memberCertificationPath"));
		
		int n = ms.memberInsert(vo);
		
		if(n != 0)
			request.setAttribute("message", "회원가입이 되셨습니다.");
		else
			request.setAttribute("message", "회원가입에 실패했습니다.");
		return "member/memberMessage";
	}

}

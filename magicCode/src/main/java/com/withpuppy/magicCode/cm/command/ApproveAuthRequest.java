package com.withpuppy.magicCode.cm.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cm.service.CmService;
import com.withpuppy.magicCode.cm.serviceImpl.CmServiceImpl;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class ApproveAuthRequest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 권한 승인 요청 승인기능
		CmService cms = new CmServiceImpl();
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		
		String auth = request.getParameter("memberAuth");
		if(auth.equals("UT")) {
			auth = "T";
		} else if(auth.equals("UG")) {
			auth = "G";
		}

		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberAuth(auth);
		
		// UPDATE 쿼리문 실행
		ms.memberUpdate(vo);
		
		// 요청 승인 리스트 다시 호출
		cms.cmSelectList();
		
		return "admin/authRequestList";
	}

}

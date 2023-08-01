package com.withpuppy.magicCode.cm.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cm.service.CmService;
import com.withpuppy.magicCode.cm.service.CmVO;
import com.withpuppy.magicCode.cm.serviceImpl.CmServiceImpl;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class RejectAuthRequest implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 권한 승인신청 거절
		CmService cms = new CmServiceImpl();
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		List<CmVO> list = new ArrayList<>();
		
		// 승인이 거절되면 요청자의 권한은 S(시터)
		String auth = "S";

		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberAuth(auth);
		
		// UPDATE 쿼리문 실행
		ms.memberUpdate(vo);
		
		// 요청 승인 리스트 다시 호출
		list = cms.cmSelectList();
		
		request.setAttribute("list", list);
		
		return "admin/authRequestList";
	}

}

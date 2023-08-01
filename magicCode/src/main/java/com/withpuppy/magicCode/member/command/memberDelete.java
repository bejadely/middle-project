package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class memberDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		  // 회원 정보 삭제
        MemberService ms = new MemberServiceImpl();
        MemberVO vo = new MemberVO();
        
        vo.setMemberId(request.getParameter("memberId"));
        
        int result = ms.memberDelete(vo);
        
        if (result > 0) {
        	request.setAttribute("message", "성공적으로 삭제되었습니다.");
    
        } else {
        	request.setAttribute("message", "삭제에 실패했습니다. \n다시 시도 해주세요");
        }
        return "member/memberMessage"; // 실패하면 멤버메시지 페이지로 이동 (에러페이지 따로 만드는게 좋음)
    }

}

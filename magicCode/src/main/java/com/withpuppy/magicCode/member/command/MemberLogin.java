package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인 처리
				MemberService ms = new MemberServiceImpl();
				MemberVO vo = new MemberVO();
				HttpSession session = request.getSession();
				
				vo.setMemberId(request.getParameter("memberId")); // 이건 리퀘스트 객체가 가지고있다!!!!!!!
				vo.setMemberPw(request.getParameter("memberPw"));
				vo.setMemberNick(request.getParameter("memberNick"));
				
				vo = ms.memberLogin(vo);
				if(vo != null) {
					session.setAttribute("id", vo.getMemberId()); // 요거는 vo 객체랑 구분해 주는게 좋으니까 변수명을 main이라고 한다.
					session.setAttribute("pw", vo.getMemberPw()); //
					session.setAttribute("name", vo.getMemberName()); // 로그인할때 그냥 한번에 세션에 담아주면 되구나
					session.setAttribute("nick", vo.getMemberNick());
					session.setAttribute("tel", vo.getMemberTel());
					session.setAttribute("addr", vo.getMemberAddr());
					session.setAttribute("auth", vo.getMemberAuth());
					request.setAttribute("message", vo.getMemberName() + "님 환영합니다.");
				}else {
					request.setAttribute("message", "아이디 또는 패스워드가 일치하지 않습니다.");
				}
				
				return "member/memberMessage";
	}

}

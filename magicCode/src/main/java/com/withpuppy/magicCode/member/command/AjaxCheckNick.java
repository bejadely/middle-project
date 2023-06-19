package com.withpuppy.magicCode.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.member.service.MemberService;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.member.serviceImpl.MemberServiceImpl;

public class AjaxCheckNick implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 아이디 중복체크
		MemberService ms = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		vo.setMemberNick(request.getParameter("nick"));
		vo = ms.memberSelectByNick(vo); //여기서 들어오는 아이디랑 같은놈을 셀렉트 해주는 함수를 여기서 실행하는거임 // 여기 vo 객체엔 아이디만 실려서 넘어갔음(서버로) >> 서버에서 다시 vo타입으로 돌려줌(만약 해당하는게 있으면 다른 필드들이 꽉채워서 올텐데, 그게 아니면 null로 가득찬 vo를 갖다줌)
								  //결국 java의 데이터를 javaScript와 교환해줄수 있는 기법이 바로 ajax 기법(데이터 전달)
		String str = "Ajax:"; // 이 처리값이 Ajax로 처리하는거라는 것을 알려주는 구문
		if(vo != null)  // 만약 서버에서 돌아온 vo 객체 안의 값이 null이 아니라면 >> 이미 사용하고 있는 아이디라는 것
			str += "No";
		 else  // 만약 서버에서 돌아온 vo 가 null 이라면 >> 사용 가능한 아이디라는 것
			str += "Yes";
		
		return str;
	}

}

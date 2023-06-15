package com.withpuppy.magicCode;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.main.MainCommand;
import com.withpuppy.magicCode.member.command.AjaxCheckId;
import com.withpuppy.magicCode.member.command.MemberInsert;
import com.withpuppy.magicCode.member.command.MemberInsertForm;
import com.withpuppy.magicCode.member.command.MemberInsertSitter;
import com.withpuppy.magicCode.member.command.MemberInsertSitterForm;
import com.withpuppy.magicCode.member.command.MemberLogin;
import com.withpuppy.magicCode.member.command.MemberLoginForm;
import com.withpuppy.magicCode.member.command.MemberLogout;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap <String, Command> map = new HashMap<String, Command>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
        super();
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// 이선호 초기화
		map.put("/main.do", new MainCommand()); // 메인 페이지 호출
		map.put("/memberLogin.do", new MemberLogin()); // 로그인 처리
		map.put("/memberLoginForm.do", new MemberLoginForm()); //로그인 폼 호출
		map.put("/memberInsert.do", new MemberInsert()); // 회원가입 데이터 삽입 
		map.put("/memberInsertForm.do", new MemberInsertForm()); // 회원가입 화면 호출
		map.put("/memberInsertSitter.do", new MemberInsertSitter()); //시터 회원가입 데이터 삽입
		map.put("/memberInsertSitterForm.do", new MemberInsertSitterForm()); //시터 회원가입 폼
		map.put("/ajaxCheckId.do", new AjaxCheckId()); // ID중복체크 ajax
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃수행
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청 분석, 수행, 결과 반환
		request.setCharacterEncoding("utf-8"); 
		String uri = request.getRequestURI(); 
		String contextPath = request.getContextPath(); 
		String page = uri.substring(contextPath.length()); 
		
		Command command = map.get(page); 
		String viewPage = command.exec(request, response);
		
		if(!viewPage.endsWith(".do")) {
			if(viewPage.startsWith("Ajax:")) {
				response.setContentType("text/html; charset=utf-8");
				response.getWriter().append(viewPage.substring(5));
				return; 
			}
			
			viewPage += ".tiles";
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}else {
			response.sendRedirect(viewPage); 
		}
		
	}

}

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

import com.withpuppy.magicCode.cmsu.command.GrommerSelect;
import com.withpuppy.magicCode.cmsu.command.SitterSelect;
import com.withpuppy.magicCode.cmsu.command.TrainnerSelect;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.main.MainCommand;

import com.withpuppy.magicCode.member.command.AjaxCheckId;
import com.withpuppy.magicCode.member.command.AjaxCheckNick;
import com.withpuppy.magicCode.member.command.MemberInsert;
import com.withpuppy.magicCode.member.command.MemberInsertForm;
import com.withpuppy.magicCode.member.command.MemberInsertSitter;
import com.withpuppy.magicCode.member.command.MemberInsertSitterForm;
import com.withpuppy.magicCode.member.command.MemberList;
import com.withpuppy.magicCode.member.command.MemberLogin;
import com.withpuppy.magicCode.member.command.MemberLoginForm;
import com.withpuppy.magicCode.member.command.MemberLogout;
import com.withpuppy.magicCode.member.command.MemberUpdate;
import com.withpuppy.magicCode.member.command.SeeMyInfo;
import com.withpuppy.magicCode.member.command.UpdateMyInfoForm;
import com.withpuppy.magicCode.mpsu.command.GrommingRequestHistory;
import com.withpuppy.magicCode.mpsu.command.SitterRequestHistory;
import com.withpuppy.magicCode.mpsu.command.SitterRequestSelect;
import com.withpuppy.magicCode.mpsu.command.TrainningRequestHistory;
import com.withpuppy.magicCode.notice.command.NoticeDelete;
import com.withpuppy.magicCode.notice.command.NoticeEdit;
import com.withpuppy.magicCode.notice.command.NoticeInsert;
import com.withpuppy.magicCode.notice.command.NoticeInsertForm;
import com.withpuppy.magicCode.notice.command.NoticeList;
import com.withpuppy.magicCode.notice.command.NoticeMenu;
import com.withpuppy.magicCode.notice.command.NoticeSelect;
import com.withpuppy.magicCode.notice.command.NoticeUpdate;
import com.withpuppy.magicCode.review.command.ReviewList;
import com.withpuppy.magicCode.review.command.ReviewSelectList;
import com.withpuppy.magicCode.psu.command.SitterReservation;
import com.withpuppy.magicCode.psu.command.UserGrommingApplySelect;
import com.withpuppy.magicCode.psu.command.UserSitterApplySelect;
import com.withpuppy.magicCode.psu.command.UserTrainningApplySelect;
import com.withpuppy.magicCode.su.command.GrommerAllList;
import com.withpuppy.magicCode.su.command.SitterAllList;
import com.withpuppy.magicCode.su.command.TrainnerAllList;
//import com.withpuppy.magicCode.su.command.SitterSelect;
import com.withpuppy.magicCode.su.command.UserGrommingApplyAllList;
import com.withpuppy.magicCode.su.command.UserSitterApplyAllList;
import com.withpuppy.magicCode.su.command.UserTrainningApplyAllList;
import com.withpuppy.magicCode.serviceRegist.command.ServiceRegist;
import com.withpuppy.magicCode.serviceRegist.command.ServiceRegistForm;



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
		// 이선호
		// 메인 페이지
		map.put("/main.do", new MainCommand()); // 메인 페이지 호출

		map.put("/memberLogin.do", new MemberLogin()); // 로그인 처리
		map.put("/memberLoginForm.do", new MemberLoginForm()); //로그인 폼 호출
		map.put("/memberInsert.do", new MemberInsert()); // 회원가입 데이터 삽입 
		map.put("/memberInsertForm.do", new MemberInsertForm()); // 회원가입 화면 호출
		map.put("/memberInsertSitter.do", new MemberInsertSitter()); //시터 회원가입 데이터 삽입
		map.put("/memberInsertSitterForm.do", new MemberInsertSitterForm()); //시터/훈련사/미용사 회원가입 폼
		map.put("/ajaxCheckId.do", new AjaxCheckId()); // ID중복체크 ajax
		map.put("/ajaxCheckNick.do", new AjaxCheckNick()); // nick중복 ajax
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃수행
		map.put("/memberList.do", new MemberList()); // 관리자 멤버 List조회
		
		// 정현
		map.put("/noticeMenu.do", new NoticeMenu());	//공지사항 메뉴리스트
		map.put("/noticeList.do", new NoticeList());	//공지사항 목록리스트
		map.put("/noticeSelect.do", new NoticeSelect()); // 공지사항 상세 보기
		map.put("/noticeEdit.do", new NoticeEdit());	//공지사항 수정하기
		map.put("/noticeUpdate.do", new NoticeUpdate()); //공지사항 DB 수정 수행
		map.put("/noticeDelete.do", new NoticeDelete());	//공지사항 삭제
		map.put("/noticeInsertForm.do", new NoticeInsertForm());	//공지사항 입력폼
		map.put("/noticeInsert.do", new NoticeInsert());	//공지사항 입력
		map.put("/reviewList.do", new ReviewList());		//전체리뷰조회
		map.put("/reviewSelectList.do", new ReviewSelectList());	//해당 srId를 가진 게시물의 평균평점/리뷰리스트확인
		
		// 창민
		// 마이페이지
		map.put("/seeMyInfo.do", new SeeMyInfo()); // 마이페이지 - 내 정보 조회화면으로 이동
		map.put("/updateMyInfoForm.do", new UpdateMyInfoForm()); // 마이페이지 - 내 정보 수정화면으로 이동
		map.put("/memberUpdate.do", new MemberUpdate()); // 내 정보 수정 기능 수행
		
		//승우
		//(서비스 사용자)
		map.put("/userSitterApplyAllList.do", new UserSitterApplyAllList()); // 마이페이지 - 나의 돌봄 서비스 신청 전체 리스트
	    map.put("/userSitterApplySelect.do", new UserSitterApplySelect()); // 마이페이지 - 나의 돌봄 서비스 신청 전체 리스트 - 상세 조회
		map.put("/userTrainningApplyAllList.do", new UserTrainningApplyAllList()); // 마이페이지 - 나의 훈련 서비스 신청 전체 리스트
		map.put("/userTrainningApplySelect.do", new UserTrainningApplySelect()); // 마이페이지 - 나의 훈련 서비스 신청 전체 리스트 - 상세 조회
		map.put("/userGrommingApplyAllList.do", new UserGrommingApplyAllList()); // 마이페이지 - 나의 미용 서비스 신청 전체 리스트
	    map.put("/userGrommingApplySelect.do", new UserGrommingApplySelect()); // 마이페이지 - 나의 미용 서비스 신청 전체 리스트 - 상세 조회
	    map.put("/sitterAllList.do", new SitterAllList()); // 전체 시터 목록 조회
	    map.put("/sitterSelect.do", new SitterSelect()); // 시터 단건 조회
	    map.put("/trainnerAllList.do", new TrainnerAllList()); //전체 훈련사 목록 조회
	    map.put("/trainnerSelect.do", new TrainnerSelect()); //훈련사 단건 조회
	    map.put("/grommerAllList.do", new GrommerAllList()); //전체 미용사 목록 조회
	    map.put("/grommerSelect.do", new GrommerSelect()); //미용사 단건 조회
	    map.put("/sitterReservation.do", new SitterReservation()); //돌봄 서비스 예약
	    //(서비스 제공자)
	    map.put("/sitterRequestHistory.do", new SitterRequestHistory()); //돌봄 서비스 요청 내역 조회(전체)
	    map.put("/sitterRequestSelect.do", new SitterRequestSelect()); //돌봄 서비스 요청 단건 조회
	    map.put("/trainningRequestHistory.do", new TrainningRequestHistory()); //훈련 서비스 요청 내역 조회(전체)
//	    map.put("/trainningRequestSelect.do", new TrainningRequestSelect()); //훈련 서비스 요청 단건 조회
	    map.put("/grommingRequestHistory.do", new GrommingRequestHistory()); //미용 서비스 요청 내역 조회(전체)
//	    map.put("/grommingRequestSelect.do", new GrommingRequestSelect()); //미용 서비스 요청 단건 조회
	    
		// 시터입장 - (돌봄/훈련/미용)서비스 등록
		map.put("/serviceRegistForm.do", new ServiceRegistForm()); // 서비스 등록 폼으로 이동
		map.put("/serviceRegist.do", new ServiceRegist()); // 서비스 등록 기능 수행
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

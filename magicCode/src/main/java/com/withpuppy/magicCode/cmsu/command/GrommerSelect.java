package com.withpuppy.magicCode.cmsu.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.cmsu.service.CmsuService;
import com.withpuppy.magicCode.cmsu.service.CmsuVO;
import com.withpuppy.magicCode.cmsu.serviceImpl.CmsuServiceImpl;
import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.common.Paging;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;

public class GrommerSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//미용사 단건 조회
		CmsuService cs = new CmsuServiceImpl();
		CmsuVO vo = new CmsuVO();
		vo.setSrId(Integer.valueOf(request.getParameter("srId")));
		vo = cs.grommerSelect(vo);
		
		// DB 에 <br>태그를 엔터로 치환
		String brChange = vo.getSrIntroduce().replaceAll("\n", "<br>");
		vo.setSrIntroduce(brChange);
		
		
		request.setAttribute("grommer", vo);
		
		//해당srId에 쓴 리뷰글 페이징
		ReviewService rs = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<>();
		//페이징처리
		Paging paging = new Paging();
		paging.setPageUnit(2);
		//현재 페이지번호
		String page = request.getParameter("page");
		int p = 1;
		if (page != null)
			p = Integer.parseInt(page);
		paging.setPage(p);
		// 전체 건수
		int total = rs.listPage();
		paging.setTotalRecord(total);
		
		ReviewVO rvo = new ReviewVO();
		rvo.setFirst(paging.getFirst());
		rvo.setLast(paging.getLast());
		
		rvo.setSrId(Integer.valueOf(request.getParameter("srId")));
		reviews = rs.reviewSelectSrId(rvo);
		Double reviewRateAvg = rs.reviewRateAvg(rvo.getSrId());
		
		//리뷰 평균값
		request.setAttribute("reviewRateAvg", reviewRateAvg);
		//srId에 해당하는 리뷰리스트들
		request.setAttribute("reviewsSrId", reviews);
		request.setAttribute("paging", paging);
		
		return "member/grommerSelect";
	}

}

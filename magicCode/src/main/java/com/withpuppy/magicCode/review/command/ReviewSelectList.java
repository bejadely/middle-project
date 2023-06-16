package com.withpuppy.magicCode.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.review.serviceImpl.ReviewServiceImpl;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;

public class ReviewSelectList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//해당 srId에 적용되는 리뷰리스트
		ReviewService rs = new ReviewServiceImpl();
		ServiceRegistVO vo = new ServiceRegistVO();
		int srId = vo.getSrId();
		List<ReviewVO> reviewSelects = new ArrayList<>();
		Double reviewRateAvg = null;
		
		reviewSelects = rs.reviewSelectSrId(vo);
		reviewRateAvg = rs.reviewRateAvg(srId);

		return "review/sitterSelect";
	}

}

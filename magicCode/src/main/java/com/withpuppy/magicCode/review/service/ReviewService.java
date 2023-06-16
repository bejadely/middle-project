package com.withpuppy.magicCode.review.service;

import java.util.List;

import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;

public interface ReviewService {
	List<ReviewVO> reviewSelectList();
	List<ReviewVO> reviewSelectSrId(ServiceRegistVO vo);
	int reviewInsert(ReviewVO vo);
	int reviewUpdate(ReviewVO vo);
	int reviewDelete(ReviewVO vo);
	Double reviewRateAvg(int srId);
}

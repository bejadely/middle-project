package com.withpuppy.magicCode.review.service;

import java.util.List;

import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public interface ReviewService {
	List<ReviewVO> reviewSelectList();
	List<ReviewVO> reviewSelectSrId(ServiceRegistVO vo);
	List<ReviewVO> reviewSelectUrId(UserRegistVO vo);
	int reviewInsert(UserRegistVO vo);
	int reviewUpdate(UserRegistVO vo);
	int reviewDelete(UserRegistVO vo);
	Double reviewRateAvg(int srId);
}

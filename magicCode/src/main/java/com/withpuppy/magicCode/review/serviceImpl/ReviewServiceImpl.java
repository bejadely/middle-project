package com.withpuppy.magicCode.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.review.service.ReviewMapper;
import com.withpuppy.magicCode.review.service.ReviewService;
import com.withpuppy.magicCode.review.service.ReviewVO;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class ReviewServiceImpl implements ReviewService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> reviewSelectList() {
		// TODO Auto-generated method stub
		return map.reviewSelectList();
	}

	@Override
	public List<ReviewVO> reviewSelectSrId(ReviewVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelectSrId(vo);
	}
	
	@Override
	public List<ReviewVO> reviewSelectUrId(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.reviewSelectUrId(vo);
	}

	@Override
	public int reviewInsert(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.reviewInsert(vo);
	}

	@Override
	public int reviewUpdate(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.reviewUpdate(vo);
	}

	@Override
	public int reviewDelete(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.reviewDelete(vo);
	}
	
	@Override
	public Double reviewRateAvg(int srId) {
		return map.reviewRateAvg(srId);
	}
	
	@Override
	public List<ReviewVO> reviewUrReviewSearch(ReviewVO vo){
		return map.reviewUrReviewSearch(vo);
	}
	
	@Override
	public List<ReviewVO> reviewMemberNickSearch(ReviewVO vo){
		return map.reviewMemberNickSearch(vo);
	}
}

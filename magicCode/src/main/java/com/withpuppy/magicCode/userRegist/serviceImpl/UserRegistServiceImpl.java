package com.withpuppy.magicCode.userRegist.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.member.service.MemberVO;
import com.withpuppy.magicCode.userRegist.service.UserRegistMapper;
import com.withpuppy.magicCode.userRegist.service.UserRegistService;
import com.withpuppy.magicCode.userRegist.service.UserRegistVO;

public class UserRegistServiceImpl implements UserRegistService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private UserRegistMapper map = sqlSession.getMapper(UserRegistMapper.class); 
	
	@Override
	public List<UserRegistVO> userRegistSelectList() {
		// TODO Auto-generated method stub
		return map.userRegistSelectList();
	}

	@Override
	public UserRegistVO userRegistSelect(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.userRegistSelect(vo);
	}

	@Override
	public int userRegistInsert(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.userRegistInsert(vo);
	}

	@Override
	public int userRegistUpdate(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.userRegistUpdate(vo);
	}

	@Override
	public int userRegistDelete(UserRegistVO vo) {
		// TODO Auto-generated method stub
		return map.userRegistDelete(vo);
	}

	@Override
	public int urCheckCUpdate(UserRegistVO vo) {
		//서비스 요청 취소
		return map.urCheckCUpdate(vo);
	}

	@Override
	public int urCheckEUpdate(UserRegistVO vo) {
		//서비스 완료
		return map.urCheckEUpdate(vo);
	}

	

}

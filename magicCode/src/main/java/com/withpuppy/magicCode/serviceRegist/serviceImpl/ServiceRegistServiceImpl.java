package com.withpuppy.magicCode.serviceRegist.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.withpuppy.magicCode.common.DataSource;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistMapper;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistService;
import com.withpuppy.magicCode.serviceRegist.service.ServiceRegistVO;

public class ServiceRegistServiceImpl implements ServiceRegistService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ServiceRegistMapper map = sqlSession.getMapper(ServiceRegistMapper.class); 
	
	@Override
	public List<ServiceRegistVO> serviceRegistSelectList() {
		// TODO Auto-generated method stub
		return map.serviceRegistSelectList();
	}

	@Override
	public ServiceRegistVO serviceRegistSelect(ServiceRegistVO vo) {
		// TODO Auto-generated method stub
		return map.serviceRegistSelect(vo);
	}

	@Override
	public int serviceRegistInsert(ServiceRegistVO vo) {
		// TODO Auto-generated method stub
		return map.serviceRegistInsert(vo);
	}

	@Override
	public int serviceRegistUpdate(ServiceRegistVO vo) {
		// TODO Auto-generated method stub
		return map.serviceRegistUpdate(vo);
	}

	@Override
	public int serviceRegistDelete(ServiceRegistVO vo) {
		// TODO Auto-generated method stub
		return map.serviceRegistDelete(vo);
	}

}

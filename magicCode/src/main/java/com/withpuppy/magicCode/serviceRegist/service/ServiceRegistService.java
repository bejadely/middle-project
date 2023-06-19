package com.withpuppy.magicCode.serviceRegist.service;

import java.util.List;

public interface ServiceRegistService {
	List<ServiceRegistVO> serviceRegistSelectList();
	ServiceRegistVO serviceRegistSelect(ServiceRegistVO vo);
	int serviceRegistInsert(ServiceRegistVO vo);
	int serviceRegistUpdate(ServiceRegistVO vo);
	int serviceRegistDelete(ServiceRegistVO vo);
	List<ServiceRegistVO> selectListById(ServiceRegistVO vo);
	List<ServiceRegistVO> selectListByName(ServiceRegistVO vo);
}

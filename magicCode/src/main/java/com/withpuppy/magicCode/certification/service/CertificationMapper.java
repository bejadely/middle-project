package com.withpuppy.magicCode.certification.service;

import java.util.List;

public interface CertificationMapper {
	List<CertificationVO> certificationSelectList();
	CertificationVO certificationSelect(CertificationVO vo);
	int certificationInsert(CertificationVO vo);
	int certificationUpdate(CertificationVO vo);
	int certificationDelete(CertificationVO vo);
}

package com.withpuppy.magicCode.cm.service;

import java.util.List;

public interface CmService {
	List<CmVO> cmSelectList();
	CmVO cmSelect(CmVO vo);
	int cmInsert(CmVO vo);
	int cmUpdate(CmVO vo);
	int cmDelete(CmVO vo);
}

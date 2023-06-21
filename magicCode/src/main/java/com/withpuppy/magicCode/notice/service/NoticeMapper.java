package com.withpuppy.magicCode.notice.service;

import java.util.List;

public interface NoticeMapper {
	List<NoticeVO> noticeSelectList();
	List<NoticeVO> noticeListPage(NoticeVO vo);
	List<NoticeVO> noticeSearchTitle(NoticeVO vo);
	List<NoticeVO> noticeSearchTime(NoticeVO vo);
	NoticeVO noticeSelect(NoticeVO vo);
	int noticeInsert(NoticeVO vo);
	int noticeUpdate(NoticeVO vo);
	int noticeDelete(NoticeVO vo);
	int listPage();
}

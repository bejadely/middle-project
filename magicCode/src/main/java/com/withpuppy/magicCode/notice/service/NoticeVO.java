package com.withpuppy.magicCode.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NoticeVO {
	int noticeId;
	String noticeTitle;
	String noticeSubject;
	String noticeWriter;
	String noticeTime;
}

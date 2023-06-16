package com.withpuppy.magicCode.review.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	String memberId;
	String memberNick;
	int srId;
	String srTitle;
	String srServerName;
	String srCategory;
	String petName;
	String petKind;
	int urRate;
	String urReview;
	
}

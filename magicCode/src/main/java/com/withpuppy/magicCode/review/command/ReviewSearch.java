package com.withpuppy.magicCode.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;

public class ReviewSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String urReview = (String) request.getAttribute("urReview");
		// 작업중
		// String 
		// if(value.urReview)
		
		return null;
	}

}

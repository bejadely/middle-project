package com.withpuppy.magicCode.notice.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.withpuppy.magicCode.common.Command;
import com.withpuppy.magicCode.notice.service.NoticeService;
import com.withpuppy.magicCode.notice.service.NoticeVO;
import com.withpuppy.magicCode.notice.serviceImpl.NoticeServiceImpl;

public class NoticeDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 게시글 삭제 기능
		NoticeService ns = new NoticeServiceImpl();
		NoticeVO vo = new NoticeVO();
		vo.setNoticeId(Integer.valueOf(request.getParameter("noticeId"))); // 페이지에서 수정할 noticeId 받아옴
		
		int n = ns.noticeDelete(vo);
		
		if(n != 0) {
			request.setAttribute("message", "게시글이 정상적으로 삭제되었습니다.");
		}else {
			request.setAttribute("message", "게시글 삭제에 실패하였습니다. 다시 시도해주십시오.");
		}
		return "notice/noticeMessage";
	}

}

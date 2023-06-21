<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
		<form id="frm" action="noticeUpdate.do" method="post">
			<h1>게시글 수정</h1>
			<div>
				<table border="1">
					<tr>
						<th width="100" align="center">작성자</th>
						<!-- 관리자가 로그인했을때 담아올 변수를 선택(id or name)-->
						<td width="150" align="center">${name}</td>
						<th width="150" align="center">작성일자->수정일자</th>
						<c:set var="today" value="<%=new java.util.Date()%>" />
						<!-- 현재날짜 -->
						<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
						<td width="200" align="center"><input type="date" id="noticeTime" name ="noticeTime" value="${date}" /></td>
					</tr>
					<tr>
						<th colspan="2">제목</th>
						<td colspan="2"><input size="100" type="text" id = "noticeTitle" name = "noticeTitle" value="${notice.noticeTitle }"></td>
					</tr>
					<tr>
						<th colspan="2">수정할 내용</th>
						<td colspan="2">
						<textarea rows="10" cols="100" id = "noticeSubject" name = "noticeSubject">${notice.noticeSubject}</textarea>
						</td>
					</tr>
				</table>
				<br>
				<div>
					<!-- hidden 변수 생성 -->
					<input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId}">
				</div>
				<div>
					<button type="submit">수정</button>&nbsp;
					<button type="button" onclick="location.href='noticeList.do'">취소</button>&nbsp;
				</div>
			</div>
		</form>	
	</div>
</body>
</html>
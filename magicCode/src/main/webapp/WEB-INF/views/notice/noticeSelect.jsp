<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>공지사항 상세보기</h1>
		<div>
			<table border="1">
				<tr>
					<th>공지번호</th>
					<td>${notice.noticeId}</td>
					<th>작성자</th>
					<td>${notice.noticeWriter}</td>
					<th>작성일자</th>
					<td>${notice.noticeTime}</td>
				</tr>
				<tr>
					<th colspan="2">제목</th>
					<td colspan="6">${notice.noticeTitle}</td>
				</tr>
				<tr>
					<th colspan="2">내용</th>
					<td colspan="6">${notice.noticeSubject}</td>
				</tr>
			</table>
			<br>
			<div>
				<!-- c:if문에서 로그인할때 세션에 가져올 id값으로 비교해야함 -->
				<c:if test="${notice.noticeWriter eq notice.noticeWriter}">
					<button type="button" onclick="callFunction('E')">수정</button>&nbsp;
					<button type="button" onclick="callFunction('D')">삭제</button>
				</c:if>
				<button type="button" onclick="location.href='noticeList.do'">목록으로</button>
			</div>
		</div>
	</div>
	<div>
		<form id="frm" action="" method="post">
			<input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId}">
		</form>
	</div>
</body>
<script type="text/javascript">
	function callFunction(str){
		let frm = document.getElementById("frm");
		if (str == 'E'){
			frm.action = "noticeEdit.do";
		} else{
			frm.action = "noticeDelete.do";
		}
		frm.submit();
	}
</script>
</html>
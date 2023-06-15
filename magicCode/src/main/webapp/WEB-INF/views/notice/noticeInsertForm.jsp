<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form id="frm" method="post">
			<h1>게시글 등록</h1>
			<div>
				<table border="1">
					<tr>
						<th width="100" align="center">작성자</th>
						<!-- 로그인커맨드에서 가져올 변수 지정해서 수정해줘야함 -->
						<td width="150" align="center">${name}</td>
						<th width="150" align="center">작성일자</th>
						<c:set var="today" value="<%=new java.util.Date()%>" />
						<!-- 현재날짜 -->
						<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
						<td width="200" align="center">${date}</td>
					</tr>
					<tr>
						<th colspan="2">제목</th>
						<td colspan="2"><input size="100" type="text" id = "noticeTitle" name = "noticeTitle"></td>
					</tr>
					<tr>
						<th colspan="2">내용</th>
						<td colspan="2">
						<textarea rows="10" cols="100" id = "noticeSubject" name = "noticeSubject"></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div>
					<button type="submit" onclick="callFunction('A')">등록</button>&nbsp;
					<button type="button" onclick="callFunction('C')">취소</button>&nbsp;
				</div>
				<div>
					<input type="hidden" id="noticeId" name="noticeId" value="${notice.noticeId}">
					<input type="hidden" id="noticeWriter" name="noticeWriter" value="${name}">
				</div>
			</div>
		</form>	
	</div>
</body>
<script type="text/javascript">
	function callFunction(str){
		let frm = document.getElementById("frm");
		if (str == 'A'){
			frm.action = "noticeInsert.do";
		} else{
			frm.action = "noticeList.do";
		}
		frm.submit();
	}
</script>
</html>
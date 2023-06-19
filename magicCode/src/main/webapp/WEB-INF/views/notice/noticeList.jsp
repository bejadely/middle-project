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
<style>
	#container{
	height: 1000px
	}
</style>
<body>
<div id ="container" align="center">
<br>
<br>
<br>
	<div>
		<h1>공지사항 목록</h1>
	</div>
	<div>
		<c:if test="${auth eq 'A'}">
			<a href="noticeInsertForm.do">공지사항 작성</a>
		</c:if>
	</div>
	<div>
		<table>
	        <thead>
	            <tr>
	                <th>No.1</th>
	                <th width="200px">제목</th>
	                <th>작성자</th>
	                <th>작성일</th>
	            </tr>
	        </thead>
	        <tbody>
	        <c:forEach items="${notices }" var="n">
	            <tr>
	                <td>${n.noticeId }</td>
	                <td><a onclick="noticeChoice(${n.noticeId})">${n.noticeTitle }</a></td>
	                <td>${n.noticeWriter }</td>
	                <td>${n.noticeTime }</td>
	            </tr>
	        </c:forEach>
	        </tbody>
	    </table>
	</div>
	<div>
		<a href="noticeMenu.do">뒤로</a>
	</div>
	<div>
		<form id="frm" action="noticeSelect.do" method="post">
			<input type="hidden" id="noticeId" name = "noticeId">
		</form>
	</div>
</div>
</body>
<script type="text/javascript">
	function noticeChoice(id){
		let frm = document.getElementById("frm");
		frm.noticeId.value = id;
		frm.submit();
	}
</script>
</html>
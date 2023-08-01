<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<h1>${message}</h1>
		<button type="button" onclick="location.href='main.do'">메인화면으로 이동</button>
		<c:if test="${auth eq 'A' }">
			<button type="button" onclick="location.href='reviewListAdmin.do'">리뷰 목록으로 이동</button>
		</c:if>
		<c:if test="${auth eq 'N' }">
			<button type="button" onclick="location.href='seeMyInfo.do'">마이페이지로 이동</button>
		</c:if>
	</div>
</body>
</html>
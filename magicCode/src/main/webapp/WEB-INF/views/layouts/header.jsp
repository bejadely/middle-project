<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
	
	<c:if test="${member.memberAuth eq A}">
  	<li><a href="memberList.do">회원관리</a></li>
	</c:if>
	
	<c:if test="${empty id }">
		<li><a class="menuLink" href="memberLoginForm.do">로그인/회원가입</a></li>
	</c:if>
	<c:if test="${not empty id }">
		<li><a class="menuLink" href="memberLogout.do#">로그아웃</a></li>
	</c:if>
	<c:if test="${not empty name }">
		<li><a class="menuLink" href="#">${name }님 로그인</a></li>
	</c:if>
	<hr>
</body>
</html>
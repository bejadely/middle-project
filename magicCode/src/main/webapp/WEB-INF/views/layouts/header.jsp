<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>header</h1>
	<c:if test="${empty id }">
		<li><a class="menuLink" href="memberLoginForm.do">Login</a></li>
	</c:if>
	<c:if test="${not empty id }">
		<li><a class="menuLink" href="memberLogout.do#">Logout</a></li>
	</c:if>
	<c:if test="${not empty name }">
		<li><a class="menuLink" href="#">${name }님 로그인</a></li>
	</c:if>
	<button type="button" onclick="location.href='memberLoginForm.do'">로그인_회원가입</button>
	<hr>
</body>
</html>
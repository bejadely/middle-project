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
	<c:if test="${auth eq A }">
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
<div align="center">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
  		<a class="navbar-brand" href="main.do"><span class="flaticon-pawprint-1 mr-2"></span>위드 퍼피</a>
    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span> Menu
      	</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
        	<ul class="navbar-nav ml-auto">
        	<li class="nav-item"><a href="main.do" class="nav-link">Home</a></li>
        	<!-- 임시버튼(있으면 삭제헤주세요) -->
        	<li class="nav-item"><a href="serviceRegistForm.do" class="nav-link">임시버튼</a></li>
        	<li class="nav-item"><a href="sitterAllList.do" class="nav-link">돌봄 서비스</a></li>
        	<li class="nav-item"><a href="#" class="nav-link">훈련 서비스</a></li>
        	<li class="nav-item"><a href="#" class="nav-link">미용 서비스</a></li>
        	<li class="nav-item"><a href="seeMyInfo.do" class="nav-link">마이페이지</a></li>
        	<li class="nav-item"><a href="memberLoginForm.do" class="nav-link">로그인</a></li>
        	<li class="nav-item"><a href="noticeMenu.do" class="nav-link">공지사항</a></li>
        	</ul>
		</div>
	</div>
</nav>
</div>
</body>
</html>
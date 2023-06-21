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
<div align="center">
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
  		<a class="navbar-brand" href="main.do"><span class="flaticon-pawprint-1 mr-2"></span>with puppy</a>
    	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="fa fa-bars"></span> Menu
      	</button>
		<div class="collapse navbar-collapse" id="ftco-nav">
	        <!-- 관리자를 제외한 회원/시터 네비 화면 -->
	        <c:if test="${auth ne 'A'}">		
	        	<ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="main.do" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="sitterAllList.do" class="nav-link">돌봄 서비스</a></li>
	        	<li class="nav-item"><a href="trainnerAllList.do" class="nav-link">훈련 서비스</a></li>
	        	<li class="nav-item"><a href="grommerAllList.do" class="nav-link">미용 서비스</a></li>
	        	<c:if test="${empty id }">
		        	<li class="nav-item"><a href="memberLoginForm.do" class="nav-link">로그인</a></li>
				</c:if>
				<c:if test="${not empty id }">
				    <li class="nav-item"><a href="seeMyInfo.do" class="nav-link">마이페이지</a></li>
					<li class="nav-item"><a href="seeMyInfo.do" class="nav-link">${name} 님</a></li>
					<li class="nav-item"><a href="memberLogout.do" class="nav-link">로그아웃</a></li>
				</c:if>
	        	<li class="nav-item"><a href="noticeList.do" class="nav-link">공지사항</a></li>
	        	</ul>
	        </c:if>
	        <!-- 관리자 로그인 네비 화면 -->
	        <c:if test="${auth eq 'A'}">		
	        	<ul class="navbar-nav ml-auto">
	        	<li class="nav-item"><a href="main.do" class="nav-link">Home</a></li>
	        	<li class="nav-item"><a href="memberList.do" class="nav-link">관리페이지</a></li>
	        	<li class="nav-item"><a href="sitterAllList.do" class="nav-link">돌봄 서비스</a></li>
	        	<li class="nav-item"><a href="trainnerAllList.do" class="nav-link">훈련 서비스</a></li>
	        	<li class="nav-item"><a href="grommerAllList.do" class="nav-link">미용 서비스</a></li>
	        	<li class="nav-item"><a href="seeMyInfo.do" class="nav-link">마이페이지</a></li>
	        	<c:if test="${empty id }">
		        	<li class="nav-item"><a href="memberLoginForm.do" class="nav-link">로그인</a></li>
				</c:if>
				<c:if test="${not empty id }">
					<li class="nav-item"><a href="seeMyInfo.do" class="nav-link">마이페이지</a></li>
					<li class="nav-item"><a href="seeMyInfo.do" class="nav-link">${name} 님</a></li>
					<li class="nav-item"><a href="memberLogout.do" class="nav-link">로그아웃</a></li>
				</c:if>
	        	<li class="nav-item"><a href="noticeList.do" class="nav-link">공지사항</a></li>
	        	</ul>
	        </c:if>
		</div>
	</div>
</nav>
</div>
</body>
</html>
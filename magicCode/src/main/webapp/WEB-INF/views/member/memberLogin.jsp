<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>로그인 페이지</h2>
	</div>
	<div align="center">
		<form id = "loginForm" action="memberLogin.do" method="post">
			<label>아이디</label><input type="email" id="memberId" name="memberId">
			<label>비밀번호</label><input type="password" id="memberPw" name="memberPw">
			<div>
				<button type="submit">로그인</button>&nbsp;
				<button type="button" onclick="location.href='memberJoin.do'">회원가입</button>
			</div>
		</form>
	</div>
</body>
</html>
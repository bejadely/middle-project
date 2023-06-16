<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body><!-- 선호 -->
	<!-- $내부 경로 맞는지 확인 및 수정해야함  , 어떤 형식으로 들어가는지 알아야함 -->
	아이디 : ${join.memberCertificationId } <p>
	이 름 :   ${join.memberCertificationName } <p>
	사 진 : <img src="attech/${join.memberCertificationPath }">
</body>
</html>
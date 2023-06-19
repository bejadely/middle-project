<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
	<div align="center">
		<h2>내 정보 수정</h2>
	</div>
	<div align="center">
		<form id="frm" action="memberUpdateByAdmin.do" method="post">
			<div>
				<label>아이디<input type="email" id="memberId" name="memberId" value="${memberId}" readonly style="background-color: gray;"></label><br>
				<label>닉네임<input type="text" id="memberNick" name="memberNick" value="${memberNick}" readonly style="background-color: gray;"></label><br>
				<label>비밀번호<input type="password" id="memberPw" name="memberPw" value="${memberPw}"readonly style="background-color: gray;"></label><br>
				<label>이름<input type="text" id="memberName" name="memberName" value="${memberName}" ></label><br>
				<label>연락처<input type="text" id="memberTel" name="memberTel" value="${memberTel}"></label><br>
				<label>주소<input type="text" id="memberAddr" name="memberAddr" value="${memberAddr}"></label><br>
				<div>
					<button type="submit">수정</button>&nbsp;
					<button type="button" onclick="location='main.do'">홈화면</button>
				</div>
			</div>
		</form>	
	</div>

</body>
</html>
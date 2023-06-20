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
		<h2>회원 정보 수정</h2>
	</div>
	<div align="center">
		<form id="frm" action="memberUpdateByAdmin.do" method="post">
			<div>
				<label>아이디<input type="email" id="memberId" name="memberId" value="${member.memberId}" readonly style="background-color: gray;"></label><br>
				<label>닉네임<input type="text" id="memberNick" name="memberNick" value="${member.memberNick}" readonly style="background-color: gray;"></label><br>
				<label>비밀번호<input type="password" id="memberPw" name="memberPw" value="${member.memberPw}"readonly style="background-color: gray;"></label><br>
				<label>이름<input type="text" id="memberName" name="memberName" value="${member.memberName}" ></label><br>
				<label>연락처<input type="text" id="memberTel" name="memberTel" value="${member.memberTel}"></label><br>
				<label>주소<input type="text" id="memberAddr" name="memberAddr" value="${member.memberAddr}"></label><br>
				<div>
					<button type="submit">수정</button>&nbsp;&nbsp;
					<button type="reset">취소</button>&nbsp;&nbsp;
					<button type="button" onclick="location='main.do'">홈화면</button>
				</div>
			</div>
		</form>	
	</div>

</body>
</html>
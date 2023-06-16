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
		<h2>내 정보 수정</h2>
	</div>
	<div align="center">
		<form id="frm" action="memberUpdate.do" method="post">
			<div>
				<label>아이디<input type="email" id="memberId" name="memberId" value="${id}" readonly style="background-color: gray;"></label><br>
				<label>닉네임<input type="text" id="memberNick" name="memberNick" value="${nick}" readonly style="background-color: gray;"></label><br>
				<label>비밀번호<input type="password" id="memberPw" name="memberPw" value="${pw}"></label><br>
				<label>이름<input type="text" id="memberName" name="memberName" value="${name}" readonly style="background-color: gray;"></label><br>
				<label>연락처<input type="text" id="memberTel" name="memberTel" value="${tel}"></label><br>
				<label>주소<input type="text" id="memberAddr" name="memberAddr" value="${addr}"></label><br>
				<div>
					<button type="submit">수정하기</button>&nbsp;
					<button type="button" onclick="location='seeMyInfo.do'">취소하기</button>
				</div>
			</div>
		</form>	
	</div>
</body>
</html>
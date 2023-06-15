<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인/회원가입</title>
</head>
<body>
<div align="center">
	<div><h1>로 그 인</h1></div>
	<div>
		<form id="frm" action="memberLogin.do" method="post">
			<div>	
				<label>*아이디</label><input type="email" id="memberId" name="memberId" required="required">
				<label>*비밀번호</label><input type="password" id="memberPw" name="memberPw" required="required">
			</div><br>
			<div>
				<input type="submit" value="로그인">&nbsp;&nbsp;
				<input type="reset" value="취소">
				<br>
				<button type="button" onclick="location.href='memberInsertForm.do'">일반 회원가입</button>
				<button type="button" onclick="location.href='memberInsertSitterForm.do'">서비스공급자 회원가입</button>
			</div>
		</form>
	</div>
</div>
<!--  <script type="text/javascript">
	function GrdCheck(){
		let frm = document.getElmentBy
	}
 //시터, 훈련사 폼 회원가입 완성후 작성예정 
</script> -->
</body>
</html>
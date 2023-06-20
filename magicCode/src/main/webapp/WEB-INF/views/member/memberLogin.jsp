<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta name="viewport" content="width=device-width, height=device-height, minimum-scale=1.0, maximum-scale=1.0, initial-scale=1.0">

<style type="text/css">

.input-box{
  position:relative;
  margin:10px 0;
}
 
.input-box > input{
  background:transparent;
  border:none;
  border-bottom: solid 1px #ccc;
  padding:20px 0px 5px 0px;
  font-size:14pt;
  width:35%;
}

input::placeholder{
	color:transparent;
}

input:placeholder-shown + label{
  color:#aaa;
  font-size:14pt;
  top:15px;
}

nput:focus + label, label{
  color:#8aa1a1;
  font-size:10pt;
  pointer-events: none;
  position: absolute;
  left:0px;
  top:0px;
  transition: all 0.2s ease ;
  -webkit-transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
}

input:focus, input:not(:placeholder-shown){
  border-bottom: solid 1px #8aa1a1;
  outline:none;
}

</style>


<meta charset="UTF-8">
<title>로그인/회원가입</title>
</head>
<body>
	<div align="center" id="container">
		<form class="form" id="frm" action="memberLogin.do" method="post">
			
		<div class="input-box">
			<input type="email" id="memberId" name="memberId" placeholder="이메일주소(아이디)" required="required" class="in">
			<label for="memberId">아이디</label>
		</div>
		
		<div class="input-box">
			<input type="password" id="memberPw" name="memberPw" placeholder="비밀번호" required="required" class="in"><br>
			<label for="memberPw">비밀번호</label>	
		</div>
			<button type="submit" id="login-button">로 그 인</button><br>
			<button type="button" onclick="location.href='memberInsertForm.do'">일반회원 가입</button>
			<button type="button" onclick="location.href='memberInsertSitterForm.do'">서비스공급자 회원가입</button>				
		</form>
	</div>
	
</body>


</html>
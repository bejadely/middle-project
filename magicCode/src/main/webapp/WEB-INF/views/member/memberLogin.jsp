<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

*{
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  font-weight: 300;
}

body{
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: 300;
}

.login-wrapper {
    width: 400px;
    height: 350px;
    padding: 40px;
    box-sizing: border-box;
}

.login-wrapper > h2 {
    font-size: 24px;
    color: #00C13F;  /* 초록색 */
    margin-bottom: 20px;
}

#login-form > input {
  width: 100%;
  height: 48px;
  padding: 0 10px;
  box-sizing: border-box;
  margin-bottom: 16px;
  border-radius: 6px;
  background-color: #F8F8F8;
  transition: box-shadow 0.3s ease, transform 0.3s ease; /* 포커스 시 애니메이션 효과 */
}

#login-form > input:focus {
  box-shadow: 0 0 0 3px rgba(0, 193, 63, 0.3); /* 폼 요소에 포커스 효과 */
  transform: scale(1.05); /* focus 됐을 때 크기 증가 효과 */
}

#login-form > input::placeholder {
    color: #D2D2D2;
}
#login-form > input[type="submit"] {
    color: #fff;
    font-size: 16px;
    background-color: #00C13F;  /* 네이버 초록색 */
    margin-top: 5px;
}
#login-form > input[type="checkbox"] {
    display: none;
}
#login-form > label {
	display: block;
  	text-align: left;
    color: #999999;
}
#login-form input[type="checkbox"] + label {
    cursor: pointer;
    padding-left: 26px;
    background-image: url("checkbox.png");
    background-repeat: no-repeat;
    background-size: contain;
}
#login-form input[type="checkbox"]:checked + label {
    background-image: url("checkbox-active.png");
    background-repeat: no-repeat;
    background-size: contain;
}

#container {
  align-items: center;
  display: flex;
  justify-content: center;
  height: 70vh;
}

.button-wrapper {
  display: flex;
  flex-direction: column; /* 세로로 버튼을 배열하도록 변경 */
  align-items: stretch; /* 버튼이 컨테이너 전체 너비를 채우도록 변경 */
   justify-content: space-between;  
}

.button-wrapper button {
  width: calc(50% - 5px);
  height: 48px;
  background-color: #00C13F;
  color: #fff;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  transition: background-color 0.3s ease; /* hover 시 애니메이션 효과 */
  width: 100%;
  margin-bottom: 16px; /* 버튼 간 간격을 추가 */
}

.button-wrapper button:hover {
  background-color: #018429; /*버튼에 hover 효과 */
}

.button-wrapper button:last-child {
  margin-bottom: 0; /* 마지막 버튼은 하단 여백이 없도록 합니다. */
}

</style>


<meta charset="UTF-8">
<title>로그인/회원가입</title>
</head>
<body>
<div align="center"  id="container">
	<div class="login-wrapper">
		<h2>Login</h2>	
		<form class="form" id="login-form" action="memberLogin.do" method="post">
			<input type="email" id="memberId" name="memberId" placeholder="이메일" required="required">
			<input type="password" id="memberPw" name="memberPw" placeholder="비밀번호" required="required">
			<label for="remember-check">
                <input type="checkbox" id="remember-check">아이디 저장하기
			</label>
			<div class="button-wrapper">
				<button type="submit" >로 그 인</button>
				<button type="button" onclick="location.href='memberInsertForm.do'">일반 회원가입</button>
				<button type="button" onclick="location.href='memberInsertSitterForm.do'">시터 회원가입</button>
			</div>
		</form>
	</div>
</div>
</body>


</html>
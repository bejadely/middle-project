<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{
  box-sizing: border-box;
  margin: 0;
  padding: 0;
  font-weight: 300;
}

body{
  font-family: 'Source Sans Pro', sans-serif;
  color: white;
  font-weight: bold;

  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: #333;
}

#frm {
  width: 400px;
  padding: 40px;
  background-color: #444;
  border-radius: 6px;
}

#frm > div {
  margin-bottom: 16px;
}

#frm > div > label {
  display: block;
  color: #999999;
  margin-bottom: 5px;
}

#frm > div > input {
  width: 100%;
  height: 48px;
  padding: 0 10px;
  box-sizing: border-box;
  border-radius: 6px;
  background-color: #F8F8F8;
}

#frm > div > input[readonly] {
  background-color: gray;
  color: white;
}

.button-wrapper {
  display: flex;
  flex-direction: column;
  align-items: stretch;
  justify-content: space-between;
}

.button-wrapper button {
  height: 48px;  
  background-color: #00C13F;
  color: #fff;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  margin-bottom: 16px;
}

.button-wrapper button:last-child {
  margin-bottom: 0;
}
</style>
</head>
<body>
<div align="center">
<form id="frm" action="memberUpdateByAdmin.do" method="post">
  <div>
    <label>아이디</label>
    <input type="email" id="memberId" name="memberId" value="${member.memberId}" readonly>
  </div>
  <div>
    <label>닉네임</label>
    <input type="text" id="memberNick" name="memberNick" value="${member.memberNick}" readonly>
  </div>
  <div>
    <label>비밀번호</label>
    <input type="password" id="memberPw" name="memberPw" value="${member.memberPw}" readonly>
  </div>
  <div>
    <label>이름</label>
    <input type="text" id="memberName" name="memberName" value="${member.memberName}">
  </div>
  <div>
    <label>연락처</label>
    <input type="text" id="memberTel" name="memberTel" value="${member.memberTel}">
  </div>
  <div>
    <label>주소</label>
    <input type="text" id="memberAddr" name="memberAddr" value="${member.memberAddr}">
  </div>
  <div class="button-wrapper">
    <button type="submit">수정</button>
    <button type="reset">취소</button>
  </div>
</form>
</div>
</body>
</html>
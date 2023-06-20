<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시터서비스 회원가입</title>
</head>
<body>
	<div><h1>시터서비스 회원가입</h1></div>
	<div><!-- 선호 -->
		<form id="frm" action="memberInsertSitter.do" onsubmit="formCheck()" enctype="multipart/form-data" method="post"> 
			<div>
				<!-- member 삽입 구문 -->
				<p>(*표시는 반드시 기입하셔야 하는 항목입니다.)</p>
				<label>*아이디</label><input type="email" id="memberId" name="memberId" required="required">&nbsp;&nbsp;<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button><br>
				<label>*비밀번호</label><input type = "password" id="memberPw" name="memberPw" required="required"><br>
				<label>*비밀번호 확인</label><input type = "password" id="passwordCheck" name="passwordCheck" required="required"><br>
				<label>*이름</label><input type = "text" id="memberName" name="memberName" required="required"><br>
				<label>*전화번호</label><input type = "tel" id="memberTel" name="memberTel" required="required"><br>
				<label>*주소</label><input type = "text" id="memberAddr" name="memberAddr" required="required"><br>
				<input type="radio" id="sitter" name="memberAuth" value="S" checked="checked">
    			<label for="sitter">시터</label>
    			<input type="radio" id="trainer" name="memberAuth" value="UT">
    			<label for="trainer">훈련사</label>
    			<input type="radio" id="groomer" name="memberAuth" value="UG">
    			<label for="groomer">애견미용</label><br>
				<!-- certificaion 삽입 구문 -->
				<label>자격증 명<input type="text" id="certificationName" name="certificationName"></label>
				<input type="file" id="cfile" name="cfile">
				
				
			</div>
			<div>
				<input type="submit" value="등 록">&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;
			</div>
		</form>
	</div>
<script type="text/javascript">

	function formCheck() {
		let frm = document.getElementById("frm");
		if (frm.memberPw.value != frm.passwordCheck.value) {
			alert("패스워드가 일치 하지 않습니다. 다시 입력해주십시오");
			frm.memberPw.value = "";
			frm.passwordCheck.value = "";
			frm.memberPw.focus();
			return false;
		} else if (frm.checkId.value != "Yes") {
			alert("아이디 중복체크를 수행하세요.");
			return false;
		}

		return true;
	}
	
	function idCheck() {
		let id = document.getElementById("memberId").value;
		let url = "ajaxCheckId.do?id="+id;
		fetch(url)  //ajax 호출
			.then(response => response.text())
			.then(text => htmlProcess(text));
	}
	
	function htmlProcess(data){
		if(data == 'Yes'){
			alert(document.getElementById("memberId").value + "\n 사용가능한 아이디 입니다.");
			document.getElementById("checkId").value = 'Yes';
		}else {
			alert(document.getElementById("memberId").value + "\n 이미사용하는 아이디 입니다.");
			document.getElementById("memberId").value ="";
			document.getElementById("memberId").focus();
		}
	}
	
</script>

</body>
</html>
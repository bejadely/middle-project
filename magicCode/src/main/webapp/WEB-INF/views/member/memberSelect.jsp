<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div align="center">
	<div><h2>회원정보 수정/삭제</h2></div>
	<div>
		<table border="1" >
			<thead>
					<tr>
						<th width="150">아이디</th>
						<th width="150">닉네임</th>
						<th width="150">이 름</th>
						<th width="150">연락처</th>
						<th width="200">주 소</th>
						<th width="100">회원등급</th>
					</tr>
				</thead>
				<tbody>
						<tr>
							<td align="center">${member.memberId}</td>
							<td align="center">${member.memberNick }</td>
							<td align="center">${member.memberName }</td>
							<td align="center">${member.memberTel }</td>
							<td align="center">${member.memberAddr }</td>
							<td align="center">${member.memberAuth }</td>
						</tr>
				</tbody>
			</table>
		</div><br>
	</div>
	<div align="center">

		<button type="button" onclick="callFunction('E')">수정</button>
		&nbsp;&nbsp;
		<button type="button" onclick="callFunction('D')">삭제</button>
		&nbsp;&nbsp;

	</div>
	<div>
		<form id="frm" method="post">
			<input type="hidden" id="memberId" name="memberId"
				value="${member.memberId }">
		</form>
	</div>
	
	<!-- 자바스크립트 기능이 작동하면 삭제 <button onclick="location.href='memberDelete.do?memberId=${member.memberId}'">회원 삭제</button>  -->
	
	<script type="text/javascript">
		function callFunction(str) {
			let frm = document.getElementById("frm");
			if (str == 'E')
				frm.action = "memberUpdateByAdminForm.do";
			else
				frm.action = "memberDelete.do";
			frm.submit();
		}
	</script>



</body>
</html>
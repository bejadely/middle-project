<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<div><h1>회원목록</h1></div>
		<form id="frm" action="memberList.do" method="post">
		<div align="center">
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
					<c:forEach items="${members }" var="m">
						<tr>
							<td align="center">${m.memberId}</td>
							<td align="center">${m.memberNick }</td>
							<td align="center">${m.memberName }</td>
							<td align="center">${m.memberTel }</td>
							<td align="center">${m.memberAddr }</td>
							<td align="center">${m.memberAuth }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><br>
		</form>
	</div>

</body>
</html>
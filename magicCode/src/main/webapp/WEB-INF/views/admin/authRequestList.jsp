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
		<h2>권한 승인 요청 조회</h2>
	</div>
	<div>
		<div align="center">
		<table border="1" >
			<thead>
				<tr>
					<th width="100" align="center">신청자ID</th>
					<th width="150" align="center">신청자명</th>
					<th width="300" align="center">자격증 정보</th>
					<th width="200" align="center">요청 분류</th>
					<th width="200" align="center">요청 처리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${authRequestList}" var="a">
					<tr>
						<td align="center" id="srId">${a.}</td>
						<td align="center">${s.srCategory}</td>
						<td align="center">${s.srTitle}</td>
						<td align="center">${s.srServerId}</td>
						<td align="center">
						<button type="button" id="deleteButton" name="deleteButton" onclick="deleteService(${s.srId})">삭제하기</button>
						<button type="button" id="deleteButton" name="deleteButton" onclick="deleteService(${s.srId})">삭제하기</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	</div>
</body>
</html>
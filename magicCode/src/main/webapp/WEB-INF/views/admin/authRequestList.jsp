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
			<c:if test="${not empty list}">
				<tbody>
					<c:forEach items="${list}" var="l">
						<tr>
							<td align="center">${l.memberId}</td>
							<td align="center">${l.memberName}</td>
							<td align="center"><img src="${l.certificaionPath}"></td>
							<td align="center">
							<c:if test="${l.memberAuth eq 'UT'}">
								훈련사
							</c:if>
							<c:if test="${l.memberAuth eq 'UG'}">
								미용사						
							</c:if>
							</td>
							<td align="center">
							<button type="button" id="approveButton" name="approveButton" onclick="approve('${l.memberId}', '${l.memberAuth}')">승인</button>
							<button type="button" id="rejectButton" name="rejectButton" onclick="reject('${l.memberId}', '${l.memberAuth}')">반려</button>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</c:if>
		</table>
			<c:if test="${empty list}">
				<div align="center">
					<span>새로운 권한 승인 요청이 없습니다.</span>
				</div>
			</c:if>
	</div><br>
	<div>
		<form id="form" method="post">
			<input type="hidden" id="memberId" name="memberId">
			<input type="hidden" id="memberAuth" name="memberAuth">
		</form>
	</div>
	</div>
</body>
<script type="text/javascript">
	function approve(id, auth){
		let form = document.getElementById("form")
		form.memberId.value = id
		form.memberAuth.value = auth
		form.action = "approveAuthRequest.do"
		form.submit();
		alert("권한 요청이 승인되었습니다.");
	}
	function reject(id, auth){
		let form = document.getElementById("form")
		form.memberId.value = id
		form.memberAuth.value = auth
		form.action = "rejectAuthRequest.do"
		form.submit();
		alert("권한 요청이 거절되었습니다.");
	}
</script>
</html>
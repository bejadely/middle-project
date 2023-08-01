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
<!-- 훈련 서비스 요청 내역 조회(전체) -->
	<div align="center">
		<div>
			<h1>훈련 서비스 요청 내역 조회</h1>
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">예약한 날짜</th>
							<th width="150">예약 시작 시간</th>
							<th width="150">예약 끝 시간</th>
							<th width="150">고객 명</th>
							<th width="150">신청 강아지 이름</th>
							<th width="150">신청 강아지 견종</th>
							<th width="150">방문장소</th>
							<th width="150">결제 금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${trainning }" var="t">
						<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="chois(${t.urId })">
							<td width="150">${t.urDate }</td>
							<td width="150">${t.urStartTime }</td>
							<td width="150">${t.urEndTime }</td>
							<td width="150">${t.memberName }</td>
							<td width="150">${t.petName }</td>
							<td width="150">${t.petKind }</td>
							<td width="150">${t.srLocation }</td>
							<td width="150">${t.srPrice }</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div><br>
		</div>
		<div>
			<button type="button" onclick="location.href='seeMyInfo.do'">뒤로가기</button>&nbsp;&nbsp;
		</div>
		<div>
			<form id="frm" action="trainningRequestSelect.do" method="post">
				<input type="hidden" id="urId" name="urId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function chois(id) {
			let frm = document.getElementById("frm");
			frm.urId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>
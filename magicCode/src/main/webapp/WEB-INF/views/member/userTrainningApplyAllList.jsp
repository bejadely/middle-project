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
		<div>
			<h1>나의 펫 훈련 신청 전체 조회</h1>
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">예약한 날짜</th>
							<th width="150">예약 시작 시간</th>
							<th width="150">예약 끝 시간</th>
							<th width="150">훈련사 명</th>
							<th width="150">장소</th>
							<th width="150">결제 금액</th>
							<th width="150">결제 방식</th>
							<th width="150">진행 여부</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userRegists }" var="u">
						<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="urMemberIdChois(${u.urId })">
							<td width="150">${u.urDate }</td>
							<td width="150">${u.urStartTime }</td>
							<td width="150">${u.urEndTime }</td>
							<td width="150">${u.srServerName }</td>
							<td width="150">${u.srLocation }</td>
							<td width="150">${u.srPrice }</td>
							<c:if test="${u.urPayment eq 'C'}">
								<td width="150">카드 결제</td>
							</c:if>
							<c:if test="${u.urPayment eq 'N'}">
								<td width="150">네이버 페이 결제</td>
							</c:if>  
							<c:if test="${u.urCheck eq 'E'}">
								<td width="150">서비스 완료</td>
							</c:if>
							<c:if test="${u.urCheck eq 'C'}">
								<td width="150">서비스 취소</td>
							</c:if>
							<c:if test="${u.urCheck eq 'N'}">
								<td width="150">서비스 전</td>
							</c:if>
							<td> <!-- 서비스 완료가 되었는지 확인하는 부분 -->
							<c:if test="${u.urCheck eq 'E'}">
								<button type="button" onclick="location.href=''">리뷰 작성</button>&nbsp;&nbsp;
							</c:if> 
							</td>
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
			<form id="frm" action="userTrainningApplySelect.do" method="post">
				<input type="hidden" id="urId" name="urId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function urMemberIdChois(id) {
			let frm = document.getElementById("frm");
			frm.urId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>
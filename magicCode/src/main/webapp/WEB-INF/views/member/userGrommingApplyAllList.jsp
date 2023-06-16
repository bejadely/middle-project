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
			<h1>나의 펫 미용 신청 전체 조회</h1>
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">예약한 날짜</th>
							<th width="150">미용사 명</th>
							<th width="150">장소</th>
							<th width="150">결제 금액</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${userRegists }" var="u">
						<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="urMemberIdChois(${u.urId })">
							<td width="150">${u.urDate }</td>
							<td width="150">${u.srServerName }</td>
							<td width="150">${u.srLocation }</td>
							<td width="150">${u.srPrice }</td>
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
			<form id="frm" action="userGrommingApplySelect.do" method="post">
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
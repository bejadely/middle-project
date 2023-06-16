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
	<div>
		<nav>
			<ul>
				<li><a href="#">평점 높은 순</a></li>
				<li><a href="#">리뷰 많은 순</a></li>
				<li><a href="#">이름으로 검색</a></li>
			</ul>
		</nav>
	</div>
	<div align="center">
		<div>
			<h1>전체 펫 돌보미 조회</h1>
		</div>
		<div>
			<c:forEach items="${services }" var="s">
				<c:if test="${s.srCategory eq 'S'}">
					<button type="button" onclick="location.href=''">돌봄 서비스 등록</button>&nbsp;&nbsp;
				</c:if> 
			</c:forEach>
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">사진</th>
							<th width="150">제목</th>
							<th width="150">돌보미 명</th>
							<th width="150">돌보미 평점</th>
						</tr>
					</thead>
					<tbody>
					 	<c:forEach items="${services }" var="s">
							<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="chois(${s.urId })">
								<td>${s.srPicturePath }</td>
								<td>${s.srTitle}</td>
								<td>${s.srServerName}</td>
								<td>${s.urRate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div>
			<form id="frm" action="sitterSelect.do" method="post">
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
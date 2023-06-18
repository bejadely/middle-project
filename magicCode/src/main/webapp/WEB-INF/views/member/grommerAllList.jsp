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
			<h1>전체 펫 미용사 조회</h1>
		</div>
		<div>
				<c:if test="${auth eq 'G'}">
					<button type="button" onclick="location.href=''">미용 서비스 등록</button>&nbsp;&nbsp;
				</c:if> 
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">사진</th>
							<th width="150">제목</th>
							<th width="150">미용사 명</th>
							<th width="150">미용사 평점</th>
						</tr>
					</thead>
					<tbody>
					 	<c:forEach items="${services }" var="s">
							<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="chois(${s.srId })">
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
			<form id="frm" action="grommerSelect.do" method="post">
				<input type="hidden" id="srId" name="srId">
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function chois(id) {
			let frm = document.getElementById("frm");
			frm.srId.value = id;
			frm.submit();
		}
	</script>
</body>
</html>
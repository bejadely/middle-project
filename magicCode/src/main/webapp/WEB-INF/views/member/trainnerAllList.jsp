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
				<li><a href="orderByTrainnerUrRate.do">평점 높은 순</a></li>
				<li><a href="#">리뷰 많은 순</a></li>
			</ul>
			<form id = "serchForm" action="searchTrainnerName.do" method="post">
			    <label>이름으로 검색</label>
		   		<input type="text" id="name" name="name" required="required">
		   		<button type="submit">검색</button>
			</form>
		</nav>
	</div>
	<div align="center">
		<div>
			<h1>전체 펫 훈련사 조회</h1>
		</div>
		<div>
				<c:if test="${auth eq 'T'}">
					<button type="button" onclick="location.href=''">훈련 서비스 등록</button>&nbsp;&nbsp;
				</c:if> 
		</div>
		<div>
			<div>
				<table border="1">
					<thead>
						<tr>
							<th width="150">사진</th>
							<th width="150">제목</th>
							<th width="150">훈련사 명</th>
							<th width="150">훈련사 평점</th>
						</tr>
					</thead>
					<tbody>
					 	<c:forEach items="${services }" var="s">
							<tr onmouseover='this.style.background="#263343";' 
							onmouseleave='this.style.background="#FFFFFF";' 
							onclick="chois(${s.srId })">
								<td><img src="${s.srPicturePath}"></td>
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
			<form id="frm" action="trainnerSelect.do" method="post">
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
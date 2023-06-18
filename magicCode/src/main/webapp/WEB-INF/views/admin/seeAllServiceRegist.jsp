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
		<h2>등록된 게시글 전체 조회</h2>
	</div>
	<div align="center">
		<!-- 검색창(아이디로 조회 / 이름으로 조회) 구현 예정 -->
		<hr>
		<form id = "serchForm" action="searchAllServiceRegistBykey.do" method="post">
			<select id="key" name="key">
			    <option value="id">아이디로 검색</option>
			    <option value="name">이름으로 검색</option>
		   </select> &nbsp;&nbsp;
		   <input type="text" id="val" name="val">
		   <button type="submit">검색</button>
		</form>
		<hr>
	</div>
	<div align="center">
		<table border="1" >
			<thead>
				<tr>
					<th width="100" align="center">등록 번호</th>
					<th width="150" align="center">서비스 종류</th>
					<th width="300" align="center">제 목</th>
					<th width="200" align="center">작성자ID</th>
					<th width="100" align="center">작성자</th>
					<th width="120" align="center">삭제하기</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${serviceRegist}" var="s">
					<tr>
						<td align="center" id="srId">${s.srId}</td>
						<td align="center">${s.srCategory}</td>
						<td align="center">${s.srTitle}</td>
						<td align="center">${s.srServerId}</td>
						<td align="center">${s.srServerName}</td>
						<td align="center"><button type="button" id="deleteButton" name="deleteButton" onclick="deleteService(${s.srId})">삭제하기</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div><br>
	<div>
		<form id="deleteform" action="deleteServiceRegist.do" method="post">
			<input type="hidden" id = "srId" name="srId">		
		</form>
	</div>
</body>
<script type="text/javascript">
	function deleteService(id){
		let form = document.getElementById("deleteform")
		form.srId.value = id
		form.submit()
	}
</script>
</html>
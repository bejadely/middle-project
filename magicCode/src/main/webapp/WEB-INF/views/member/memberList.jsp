<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<aside style="border-right: 1px solid gray">
	<p>임시로 만들었습니다(창민)</p>
	<a href="memberList.do">전체 회원 정보 조회</a><br>
	<a href="#">회원 단건 정보 조회</a><br>
	<a href="seeAllServiceRegist.do">전체 게시글 조회</a><br>
	<a href="#">리뷰 전체 조회(정현형님꺼)</a><br>
	<a href="#">리뷰 단건 조회(정현형님꺼)</a><br>
	<a href="noticeMenu.do">전체 공지 조회</a><br>
	<a href="#">공지 단건 조회</a><br>
	<a href="authRequestList.do">권한 승인 요청</a><br>
</aside>
<body>
	<div align="center">
		<div><h1>회원목록</h1></div>
		<div align="center">
			<form action="memberIdSearch.do" method="get">
				<label for="searchId">ID 검색:</label> 
				<input type="text" id="searchId" name="searchId"> <input type="submit" value="검색">
			</form>
			<br>
			<form action="memberNameSearch.do" method="get">
				<label for="searchName">이름 검색:</label> 
				<input type="text" id="searchName" name="searchName"> <input type="submit" value="검색">
			</form>
		</div>

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
					<c:forEach items="${members}" var="m">
						<tr onmouseover='this.style.background="#d9d9d9";'
    						onmouseleave='this.style.background="#FFFFFF";'
    						onclick='memberIdChois("${m.memberId}")'
						>
							
							<td align="center">${m.memberId}</td>
							<td align="center">${m.memberNick}</td>
							<td align="center">${m.memberName}</td>
							<td align="center">${m.memberTel}</td>
							<td align="center">${m.memberAddr}</td>
							<td align="center">${m.memberAuth}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div><br>
		
		<div>
		<form id="frm" action="memberSelect.do" method="post">
			<input type="hidden" id="memberId" name ="memberId">
		</form>
	</div>
</div>

</body>

<script type="text/javascript">
function memberIdChois(id) {
	let frm = document.getElementById("frm");
	frm.memberId.value = id;
	frm.submit();
}
	
</script>

</html>
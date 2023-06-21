<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.panel-heading {
	background-color: #00C13F;
	color: white;
	border-radius: 40px 80px;
	margin-bottom: 5px;
}

.panel-heading h3 {
	margin: 0;
}

.list-group-item {
	color: black; 
}

.list-group-item:hover {
	background-color: black; 
	color: white; 
}

.container{
	max-width: 100%;
	margin-right: -10px;
	padding: none;
}

.col-8{
	padding: none;
}
.col-4{
	padding: none;
}

.seachbtn{
	width: 70px; 
    height: 35px; 
    background-color: #00C13F;
    color: white;
    
}

.searchForm {
  padding-top: 20px; 
  padding-bottom: 20px; 
}

</style>

</head>
<body>
	<div class="container" style="max-width: 80%">
		<div class="row">
			<aside class="col-4" style="max-width: 20%">
				<br>
				<div class="panel panel-info"  style="max-width: 250px" >

					<div class="panel-heading">
						<h3 class="panel-title">&nbsp;Kategorie</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item">
						<a href="memberList.do">회원목록 보기</a></li>
						<li class="list-group-item">
						<a href="seeAllServiceRegist.do">모든게시물 보기</a></li>
						<li class="list-group-item">
						<a href="reviewListAdmin.do">리뷰 보기</a></li>
						<li class="list-group-item">
						<a href="noticeList.do">공지사항	보기</a></li>
						<li class="list-group-item">
						<a href="authRequestList.do">인증요청 보기</a></li>
					</ul>
				</div>
			</aside>
			<div class="col-8">
				<div align="center">
					<div>
						<h1>회원 목록</h1>
					</div>
					<div class="table-responsive">
						<table border="1" class="table" >
							<thead align="center" class="thead-dark">
								<tr>
									<th scope="col" width="150">아이디</th>
									<th scope="col" width="150">닉네임</th>
									<th scope="col" width="150">이름</th>
									<th scope="col" width="150">연락처</th>
									<th scope="col" width="200">주소</th>
									<th scope="col" width="100">회원 등급</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${members}" var="m">
									<tr onmouseover='this.style.background="#d9d9d9";'
										onmouseleave='this.style.background="#FFFFFF";'
										onclick='memberIdChois("${m.memberId}")'>
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
					</div>
					<br>
					<div align="center">
						<!-- 아이디별 검색 / 이름별 검색 기능 예정 -->
						<hr>
						<form id="searchForm" action="searchAllMemberBykey.do"
							method="post">
							<select id="key" name="key">
								<option value="id">아이디별 검색</option>
								<option value="name">이름별 검색</option>
							</select> <input type="text" id="val" name="val">
							<button type="submit" class="seachbtn">검색</button>
						</form>
						<hr>
					</div>
					<div>
						<form id="frm" action="memberSelect.do" method="post">
							<input type="hidden" id="memberId" name="memberId">
						</form>
					</div>
				</div>
			</div>
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
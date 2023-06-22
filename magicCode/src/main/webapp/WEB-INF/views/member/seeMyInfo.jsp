<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

.container {
	max-width: 100%;
	margin-right: -10px;
	padding: none;
}

.col-8 {
	padding: none;
}

.col-4 {
	padding: none;
}

.seachbtn {
	width: 70px;
	height: 35px;
	background-color: #00C13F;
	color: white;
}

.searchForm {
	padding-top: 20px;
	padding-bottom: 20px;
}

* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-weight: 300;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	color: white;
	font-weight: 300;
	height: 100vh;
	background-color: #333;
}

#frm {
	width: 400px;
	padding: 40px;
	background-color: #444;
	border-radius: 6px;
}

#frm>div {
	margin-bottom: 16px;
}

#frm>div>label {
	display: block;
	color: #999999;
	margin-bottom: 5px;
}

#frm>div>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#frm>div>input[readonly] {
	background-color: gray;
	color: white;
}

.button-wrapper {
	display: flex;
	flex-direction: column;
	align-items: stretch;
	justify-content: space-between;
}

.button-wrapper button {
	height: 48px;
	background-color: #00C13F;
	color: #fff;
	border: none;
	border-radius: 6px;
	font-size: 16px;
	margin-bottom: 16px;
}

.button-wrapper button:last-child {
	margin-bottom: 0;
}

.container {
	margin-top: 50px;
	padding: none;
}
</style>
</head>
<body>
	<div class="container" style="max-width: 80%;">
		<div class="row">
			<aside class="col-4" style="max-width: 20%">
				<br>
				<div class="panel panel-info" style="max-width: 250px">

					<div class="panel-heading">
						<h3 class="panel-title">&nbsp;Kategorie</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item"><a href="seeMyInfo.do">내 정보
								조회</a></li>
						<c:if test="${auth eq 'N'}">
							<li class="list-group-item"><a
								href="userSitterApplyAllList.do">마이 펫 돌보미 신청 현황</a></li>
							<li class="list-group-item"><a
								href="userTrainningApplyAllList.do">마이 펫 훈련 신청 현황</a></li>
							<li class="list-group-item"><a
								href="userGrommingApplyAllList.do">마이 펫 미용 신청 현황</a></li>
						</c:if>
						<c:if test="${auth eq 'S'}">
							<li class="list-group-item"><a
								href="sitterRequestHistory.do">돌봄 서비스 요청 내역 조회</a></li>
						</c:if>
						<c:if test="${auth eq 'T'}">
							<li class="list-group-item"><a
								href="trainningRequestHistory.do">훈련 서비스 요청 내역 조회</a></li>
						</c:if>
						<c:if test="${auth eq 'G'}">
							<li class="list-group-item"><a
								href="grommingRequestHistory.do">미용 서비스 요청 내역 조회</a>
						</c:if>
					</ul>
				</div>
			</aside>

			<div align="center" class="col-8"
				style="display: flex; flex-direction: column; align-items: center; width: 100%;">
				<h2>내 정보 조회</h2>
				<form id="frm" action="updateMyInfoForm.do" method="post">
					<div>
						<label>아이디</label> 
						<input type="email" id="memberId"name="memberId" value="${id}" readonly>
						<label>닉네임</label>
						<input type="text" id="memberNick" name="memberNick" value="${nick}" readonly>
						<label>비밀번호</label>
						<input type="password" id="memberPw" name="memberPw" readonly>
					 	<label>이름</label>
						<input type="text" id="memberName" name="memberName" value="${name}" readonly>
						<label>연락처</label>
						<input type="text" id="memberTel" name="memberTel" value="${tel}"readonly>
						<label>주소</label> 
						<input type="text" id="memberAddr" name="memberAddr" value="${addr}" readonly>
						<input type="hidden" name="noticeId" value="${noticeId}">
						<div class="button-wrapper">
							<br>
							<button type="submit">정보 수정하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>


</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<aside style="border-right: 1px solid gray">
	<a href="seeMyInfo.do">내 정보 조회</a><br>
	<c:if test="${auth eq 'N'}">
		<a href="userSitterApplyAllList.do">마이 펫 돌보미 신청 현황</a><br>
		<a href="userTrainningApplyAllList.do">마이 펫 훈련 신청 현황</a><br>
		<a href="userGrommingApplyAllList.do">마이 펫 미용 신청 현황</a><br>
	</c:if>
	<c:if test="${auth eq 'S'}">
		<a href="sitterRequestHistory.do">돌봄 서비스 요청 내역 조회</a><br>
	</c:if>
	<c:if test="${auth eq 'T'}">
		<a href="trainningRequestHistory.do">훈련 서비스 요청 내역 조회</a><br>
	</c:if>
	<c:if test="${auth eq 'G'}">
		<a href="grommingRequestHistory.do">미용 서비스 요청 내역 조회</a><br>
	</c:if>
</aside>
<body>
	<div align="center">
		<h2>내 정보 조회</h2>
	</div>
	<div align="center">
		<form id="frm" action="updateMyInfoForm.do" method="post">
			<div>
				<label>아이디<input type="email" id="memberId" name="memberName" value="${id}" readonly></label><br>
				<label>닉네임<input type="text" id="memberNick" name="memberNick" value="${nick}" readonly></label><br>
				<label>비밀번호<input type="password" id="memberPw" name="memberPw" readonly></label><br>
				<label>이름<input type="text" id="memberName" name="memberName" value="${name}" readonly></label><br>
				<label>연락처<input type="text" id="memberTel" name="memberTel" value="${tel}" readonly></label><br>
				<label>주소<input type="text" id="memberAddr" name="memberAddr" value="${addr}" readonly></label><br>
				<div>
					<!-- hidden 변수 생성 -->
					<input type="hidden" name="noticeId" value="${notice.noticeId}">
				</div>
				<div>
					<button type="submit">정보 수정하기</button>
				</div>
			</div>
		</form>	
	</div>
</body>
</html>
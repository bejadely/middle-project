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
	<div><h1>나의 펫 훈련 신청 내역 상세조회</h1></div>
	<div>
		<p>
      		<label>예약 날짜
      		<input type="text" value="${userRegist.urDate }"></label>
    	</p><br>
    	<p>
      		<label>예약 시작 시간
      		<input type="text" value="${userRegist.urStartTime}"></label>
    	</p><br>
    	<p>
      		<label>예약 끝 시간
      		<input type="text" value="${userRegist.urEndTime}"></label>
    	</p><br>
    	<p>
      		<label>훈련사 명
      		<input type="text" value="${userRegist.srServerName}"></label>
    	</p><br>
    	<p>
      		<label>맡길 반려 동물
     		<input type="text" value="이름">
      		<input type="text" value="${userRegist.petName}"><br>
      		<input type="text" value="종">
      		<input type="text" value="${userRegist.petKind}"><br>
      		<input type="text" value="나이">
      		<input type="text" value="${userRegist.petAge}"><br>
      		<input type="text" value="성별">
      		<input type="text" value="${userRegist.petGender}"><br>
      		<input type="text" value="무게">
      		<input type="text" value="${userRegist.petWeight}"><br>
      		<input type="text" value="특이사항">
      		<input type="text" value="${userRegist.petSign}"><br>
      		</label>
    	</p><br>
    	<p>
      		<label>요청사항
      		<input type="text" value="${userRegist.urRequire}"></label>
    	</p><br>
    	<p>
      		<label>결제금액
      		<input type="text" value="${userRegist.srPrice}"></label>
    	</p><br>
	</div>
	<div align="center">
		<c:if test="${userRegist.urCheck eq 'E'}">
			<button type="button" onclick="location.href='reviewInsertForm.do'">리뷰 작성</button>&nbsp;&nbsp;
		</c:if> 
		<button type="button" onclick="location.href='userTrainningApplyAllList.do'">나가기</button>
	</div>
</div>
</body>
</html>
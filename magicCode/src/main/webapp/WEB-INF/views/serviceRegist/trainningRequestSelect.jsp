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
	<div><h1>훈련 서비스 요청 단건 조회</h1></div>
	<div>
		<p>
      		<label>예약 날짜
      		<input type="text" value="${trainning.urDate }"></label>
    	</p><br>
    	<p>
      		<label>예약 시작 시간
      		<input type="text" value="${trainning.urStartTime}"></label>
    	</p><br>
    	<p>
      		<label>예약 끝 시간
      		<input type="text" value="${trainning.urEndTime}"></label>
    	</p><br>
    	<p>
      		<label>고객 명
      		<input type="text" value="${trainning.memberName}"></label>
    	</p><br>
    	<p>
      		<label>방문 장소
      		<input type="text" value="${trainning.srLocation}"></label>
    	</p><br>
    	<p>
      		<label>맡길 반려 동물 상세 정보
     		<input type="text" value="이름">
      		<input type="text" value="${trainning.petName}"><br>
      		<input type="text" value="종">
      		<input type="text" value="${trainning.petKind}"><br>
      		<input type="text" value="나이">
      		<input type="text" value="${trainning.petAge}"><br>
      		<input type="text" value="성별">
      		<input type="text" value="${trainning.petGender}"><br>
      		<input type="text" value="무게">
      		<input type="text" value="${trainning.petWeight}"><br>
      		<input type="text" value="특이사항">
      		<input type="text" value="${trainning.petSign}"><br>
      		</label>
    	</p><br>
    	<p>
      		<label>요청사항
      		<input type="text" value="${trainning.urRequire}"></label>
    	</p><br>
    	<p>
      		<label>결제금액
      		<input type="text" value="${trainning.srPrice}"></label>
    	</p><br>
	</div>
	<div align="center">
	    <button type="button" onclick="location.href=''">승인</button>
	    <button type="button" onclick="location.href=''">거절</button>
		<button type="button" onclick="location.href='trainningRequestHistory.do'">나가기</button>
	</div>
</div>
</body>
</html>
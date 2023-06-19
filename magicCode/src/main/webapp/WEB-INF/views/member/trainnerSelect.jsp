<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div>
		<p>
      		<label>훈련사 사진
      		<input type="text" value="${trainner.srPicturePath }"></label>
    	</p><br>
    	<p>
      		<label>훈련사 명
      		<input type="text" value="${trainner.srServerName }"></label>
    	</p><br>
    	<p>
      		<label>훈련사 연락처
      		<input type="text" value="${trainner.memberTel }"></label>
    	</p><br>
    	<p>
      		<label>서비스 가능 날짜
      		<input type="text" value="${trainner.srStartDate }"> ~ 
      		<input type="text" value="${trainner.srEndDate }">
      		</label>
    	</p><br>
    	<p>
      		<label>서비스 가능 시간
      		<input type="text" value="${trainner.srStartTime }"> ~ 
      		<input type="text" value="${trainner.srEndTime }">
      		</label>
    	</p><br>
    	<p>
      		<label>보유 자격증
      		<input type="text" value="${trainner.certificationName }"></label>
    	</p><br>
    	<p>
      		<label>돌보미 소개
      		<input type="text" value="${trainner.srIntroduce }"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="location.href='trainnerReservation.do'">예약하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='trainnerAllList.do'">목록으로</button>
	</div>
</div>
</body>
</html>
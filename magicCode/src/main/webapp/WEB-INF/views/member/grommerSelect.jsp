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
      		<label>미용사 사진
      		<input type="text" value="${grommer.srPicturePath }"></label>
    	</p><br>
    	<p>
      		<label>미용사 명
      		<input type="text" value="${grommer.srServerName }"></label>
    	</p><br>
    	<p>
      		<label>미용사 연락처
      		<input type="text" value="${grommer.memberTel }"></label>
    	</p><br>
    	<p>
      		<label>서비스 가능 날짜
      		<input type="text" value="${grommer.srStartDate }"> ~ 
      		<input type="text" value="${grommer.srEndDate }">
      		</label>
    	</p><br>
    	<p>
      		<label>보유 자격증
      		<input type="text" value="${grommer.certificationName }"></label>
    	</p><br>
    	<p>
      		<label>미용사 소개
      		<input type="text" value="${grommer.srIntroduce }"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="location.href='grommerReservation.do'">예약하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='grommerAllList.do.do'">목록으로</button>
	</div>
</div>
</body>
</html>
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
      		<label>돌보미 사진
      		<input type="text" value="${sitter.srPicturePath }"></label>
    	</p><br>
    	<p>
      		<label>돌보미 명
      		<input type="text" value="${sitter.srServerName }"></label>
    	</p><br>
    	<p>
      		<label>돌보미 연락처
      		<input type="text" value="${sitter.memberTel }"></label>
    	</p><br>
    	<p>
      		<label>서비스 가능 날짜
      		<input type="text" value="${sitter.srStartDate }"> ~ 
      		<input type="text" value="${sitter.srEndDate }">
      		</label>
    	</p><br>
    	<p>
      		<label>서비스 가능 시간
      		<input type="text" value="${sitter.srStartTime }"> ~ 
      		<input type="text" value="${sitter.srEndTime }">
      		</label>
    	</p><br>
    	<p>
      		<label>보유 자격증
      		<input type="text" value="${sitter.certificationName }"></label>
    	</p><br>
    	<p>
      		<label>돌보미 소개
      		<input type="text" value="${sitter.srIntroduce }"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="location.href='sitterReservation.do'">예약하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='sitterAllList.do'">목록으로</button>
	</div>
</div>
</body>
</html>
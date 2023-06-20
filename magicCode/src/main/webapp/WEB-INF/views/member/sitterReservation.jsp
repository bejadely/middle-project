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
	<div><h1>돌보미 예약신청</h1></div>
	<div>
		<p>
      		<label>예약 날짜 선택
      		<input type="text" id="urDate" name="urDate" required="required"></label>
    	</p><br>
    	<p>
      		<label>서비스 시작 시간 선택
      		<input type="text" id="urStartTime" name="urStartTime" required="required"></label>
    	</p><br>
    	<p>
      		<label>서비스 끝 시간 선택
      		<input type="text" id="urEndTime" name="urEndTime" required="required"></label>
    	</p><br>
    <!-- 	<p>
      		<label>맡길 반려 동물 
     		<input type="text" value="이름">
      		<input type="text" id="petName" name="petName" required="required"><br>
      		<input type="text" value="종">
      		<input type="text" id="petKind" name="petKind" required="required"><br>
      		<input type="text" value="나이">
      		<input type="text"id="petAge" name="petAge" required="required"><br>
      		<input type="text" value="성별">
      		<input type="text" id="petGender" name="petGender" required="required"><br>
      		<input type="text" value="무게">
      		<input type="text" id="petWeight" name="petWeight" required="required"><br>
      		<input type="text" value="특이사항">
      		<input type="text" id="petSign" name="petSign" required="required"><br>
      		</label>
    	</p><br>  -->
    	<p>
      		<label>요청사항
      		<input type="text" id="urRequire" name="urRequire" required="required"></label>
    	</p><br>
    	<p>
      		<label>결제금액
      		<input type="text" id="urPayment" name="urPayment" required="required"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="location.href=''">결제하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='sitterSelect.do'">뒤로가기</button>
	</div>
</div>
</body>
</html>
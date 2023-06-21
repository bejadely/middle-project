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
      		<img src="${trainner.srPicturePath}"></label>
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
      		<label>훈련사 소개
      		<input type="text" value="${trainner.srIntroduce }"></label>
    	</p><br>
    	<p>
      		<label>시간당 가격
      		<input type="text" value="${trainner.srPrice }"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="chois('${id}','${trainner.srId}','${trainner.srPrice}')">예약하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='trainnerAllList.do'">목록으로</button>
	</div>
	<div>
		<form id="frm" action="trainnerReservation.do" method="post">
			<input type="hidden" id="srId" name="srId">
			<input type="hidden" id="srPrice" name="srPrice">
		</form>
	</div>
</div>
<script type="text/javascript">
function chois(session, id, price) {
	let frm = document.getElementById("frm");
	if(session == ""){
		alert("로그인이 필요한 서비스입니다. \n로그인 후 이용해 주십시오.")
		frm.action = "memberLoginForm.do"
	} else{
		frm.srId.value = id;
		frm.srPrice.value = price;
	}
		frm.submit();
}
</script>
</body>
</html>
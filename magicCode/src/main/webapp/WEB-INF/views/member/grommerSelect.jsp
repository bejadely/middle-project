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
      		<img src="${grommer.srPicturePath}"></label>
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
      		<label>서비스 가능 시간대
      		<input type="text" value="${grommer.srStartTime }"> ~ 
      		<input type="text" value="${grommer.srEndTime }">
      		</label>
    	</p><br>
    	<p>
      		<label>보유 자격증
      		<input type="text" value="${grommer.certificationName }"></label>
    	</p><br>
    	<p>
      		<label>미용사 소개
      		<span>${grommer.srIntroduce }</span></label>
    	</p><br>
    	<p>
      		<label>미용사 가격
      		<input type="text" value="${grommer.srPrice }"></label>
    	</p><br>
	</div>
	<div align="center">
		<button type="button" onclick="chois('${grommer.srId}','${grommer.srPrice}')">예약하기</button>&nbsp;&nbsp;
		<button type="button" onclick="location.href='grommerAllList.do'">목록으로</button>
	</div>
	<div>
		<form id="frm" action="grommerReservation.do" method="post">
			<input type="hidden" id="srId" name="srId">
			<input type="hidden" id="srPrice" name="srPrice">
		</form>
	</div>
</div>
<script type="text/javascript">
	function chois(id, price) {
		let frm = document.getElementById("frm");
		frm.srId.value = id;
		frm.srPrice.value = price;
		frm.submit();
	}
</script>
</body>
</html>
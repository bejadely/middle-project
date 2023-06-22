<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<h2>돌봄 서비스 예약하기</h2>
	</div>
	<div>
		<form id = "frm" action="sittingServiceRegist.do" onsubmit="return formCheck()" method = "post">
			<div>
				<h4>펫 정보 입력</h4>
				<label>강아지 이름<input type = "text" id="petName" name="petName" required="required"></label><br>
				<label>품종<input type = "text" id="petKind" name="petKind" required="required"></label><br>
				<label>나이<input type = "number" id="petAge" name="petAge" required="required"></label><br>
				<label>성별</label><br>
				<label for="male">남자아이<input type = "radio" id="male" name="petGender" checked="checked" value="M"></label>&nbsp;&nbsp;
				<label for="female">여자아이<input type = "radio" id="female" name="petGender" value="F"></label><br>
				<label>몸무게<input type = "number" id="petWeight" name="petWeight" required="required" step="0.1"></label><br>
				<label>특이사항<br>
				<textarea rows="3" cols="20" id="petSign" name="petSign"></textarea></label>
			</div>
			<div>
				<h4>서비스 신청 내용</h4>
				<input type="hidden" id="urMemberId" name="urMemberId" value="${id}">
				<input type="hidden" id="srId" name="srId" value="${srId}">
				<!-- petId는 command 에서 받아올예정 -->
				<label for="urDate">요청 날짜를 선택해 주십시오.<br>
				  <input type="date"
				         id="urDate"
				         name="urDate"
				         required="required">
				</label><br>
				<label>돌봄 서비스 예약 시간을 선택해 주십시오</label><br>
				<label><input type = "time" id="urStartTime" name="urStartTime" required="required" min="09:00" max="23:00" value="09:00"></label> 부터 ~
				<label><input type = "time" id="urEndTime" name="urEndTime" required="required" min="09:00" max="23:00" value="09:00"></label> 까지 <br>
				<label>요청사항<br>
				<textarea rows="3" cols="20" id="urRequire" name="urRequire"></textarea></label>
				<label>결제금액<input type = "text" id="srPrice" name="srPrice" value="${srPrice}" readonly> 원</label><br>
				<label>결제방식 선택</label><br>
				<label for="credit">일반 카드 결제<input type = "radio" id="credit" name="urPayment" checked="checked" value="C"></label><br>
				<label for="naverPay">네이버 페이<input type = "radio" id="naverPay" name="urPayment" value="N"></label>
			</div>
			<div>
				<input type="submit" value = "등 록" onclick="notice()">&nbsp;
				<input type="reset" value = "취 소" >&nbsp;
				<input type="button" onclick="location.href='#'" value="목록으로 이동">
			</div>
		</form>
	</div>	
</body>
<script type="text/javascript">
	document.getElementById('urDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('urDate').min = new Date().toISOString().substring(0, 10);
	function formCheck() {
	    let startTime = document.getElementById('urStartTime').value;
	    let endTime = document.getElementById('urEndTime').value;
	    
	    var startDate = new Date("2023-01-01 " + startTime);
		var endDate = new Date("2023-01-01 " + endTime);

	    if (startDate.getTime() > endDate.getTime()) {
	        alert("서비스 시작시간은 서비스 종료시간보다 크거나 같을 수 없습니다.\n다시 입력해 주십시오.");
	        return false;
	    } else {
	    	alert('예약이 정상적으로 완료되었습니다');
	        return true;
	    }
	}
</script>
</html>
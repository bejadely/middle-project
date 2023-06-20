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
		<form id = "frm" action="serviceRegist.do" onsubmit="formCheck()" method = "post" enctype="multipart/form-data">
			<div>
				<h4>펫 정보 입력</h4>
				<label>강아지 이름<input type = "text" id="petName" name="petName" required="required"></label><br>
				<label>품종<input type = "text" id="petName" name="petName" required="required"></label><br>
				<label>나이<input type = "number" id="petAge" name="petAge" required="required"></label><br>
				<label>성별</label><br>
				<label for="male">남자아이<input type = "radio" id="male" name="petGender" checked="checked"></label>&nbsp;&nbsp;
				<label for="female">여자아이<input type = "radio" id="female" name="petGender"></label>
				<label>특이사항<br>
				<textarea rows="3" cols="20"></textarea></label>
			</div>
			<div>
				<h4>서비스 신청 내용</h4>
				<input type="hidden" id="urMemberId" name="urMemberId" value="${id}">
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
				<label>결제금액<input type = "text" id="srPrice" name="srPrice" value="${sr.srPrice}" readonly> 원</label><br>
				<label>결제방식 선택</label><br>
				<label for="credit">일반 카드 결제<input type = "radio" id="credit" name="petGender" checked="checked"></label><br>
				<label for="naverPay">네이버 페이<input type = "radio" id="naverPay" name="petGender"></label>
				
			</div>
			
			<div>
				<!-- 참조하고 있는 내용 -->
				<label>돌보미명<input type = "text" id="srServerName" name="srServerName" required="required" value="${name}" readonly></label><br>
				<label>제목<input type = "text" id="srTitle" name="srTitle" required="required"></label><br>
				<label for="srStartDate">서비스 시작 날짜를 선택해 주십시오
				  <input type="date"
				         id="srStartDate"
				         name="srStartDate"
				         required="required">
				</label><br>
				<label for="srEndDate">서비스 종료 날짜를 선택해 주십시오
				  <input type="date"
				         id="srEndDate"
				         name="srEndDate"
				         required="required">
				</label><br>
				<label>서비스 제공 가능시간</label><br>
				<label><input type = "time" id="srStartTime" name="srStartTime" required="required" min="09:00" max="23:00" value="09:00"></label> 부터 ~
				<label><input type = "time" id="srEndTime" name="srEndTime" required="required" min="09:00" max="23:00" value="09:00"></label> 까지 <br>
				<label for = "srIntroduce">소개글 등록하기</label><br>
				<textarea rows="10" cols="100" id = "srIntroduce" name = "srIntroduce" required="required"></textarea><br>
				<label>서비스 제공가를 입력해 주십시오.</label><br>
				<label>시간당 <input type = "number" id="srPrice" name="srPrice" required="required" value="0"> 원</label><br>
				<label>돌봄 장소를 입력해 주십시오.<input type = "text" id="srLocation" name="srLocation" required="required"></label><br>
				<!-- 자격증 정보 등록은 우선 미구현 -->
				<label>돌보미 사진 첨부
				<input type="file" id="mfile" name="mfile"></label>
				<label>자격증 이름
				<input type="text" id="certificationName" name="certificationName"></label>
				<label>사진 첨부<input type="file" id="cfile" name="cfile"></label>
			</div>
			<div>
				<input type="hidden" id="srServerId" name="srServerId" value="${id}">
				<input type="hidden" id="srCategory" name="srCategory" value="S">
			</div>
			<div>
				<input type="submit" value = "등 록" >&nbsp;
				<input type="reset" value = "취 소" >&nbsp;
				<input type="button" onclick="location.href='#'" value="목록으로 이동">
			</div>
		</form>
	</div>	
</body>
<script type="text/javascript">
	document.getElementById('srStartDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('srStartDate').min = new Date().toISOString().substring(0, 10);
</script>
</html>
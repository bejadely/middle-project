<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center; margin-top: 20px; margin-bottom: 20px;">
	<div style="margin-top: 40px;">
		<h1>서비스 등록</h1>
	</div>
	<div>
		<form id = "frm" action="traningServiceRegist.do" onsubmit="formCheck()" method = "post" enctype="multipart/form-data">
			<div>
				<label>미용사명<input type = "text" id="srServerName" name="srServerName" required="required" value="${name}" readonly></label><br>
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
				<label>1회당 <input type = "number" id="srPrice" name="srPrice" required="required" value="0"> 원</label><br>
				<label>미용실 주소를 입력해 주십시오.<input type = "text" id="srLocation" name="srLocation" required="required"></label><br>
				<!-- 자격증 정보 등록은 우선 미구현 -->
				<label>미용사 사진 첨부
				<input type="file" id="mfile" name="mfile"></label>
			</div>
			<div>
				<input type="hidden" id="srServerId" name="srServerId" value="${id}">
				<input type="hidden" id="srCategory" name="srCategory" value="G">
			</div>
			<div style="margin-bottom: 40px;">
				<input type="submit" value = "등 록" >&nbsp;
				<input type="reset" value = "취 소" >&nbsp;
				<input type="button" onclick="location.href='grommerAllList.do'" value="목록으로 이동">
			</div>
		</form>
	</div>	
</body>
<script type="text/javascript">
	document.getElementById('srStartDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('srStartDate').min = new Date().toISOString().substring(0, 10);
	document.getElementById('srEndDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('srEndDate').min = new Date().toISOString().substring(0, 10);
	
	function formCheck() {
	    let startTime = document.getElementById('srStartTime').value;
	    let endTime = document.getElementById('srEndTime').value;
	    
	    var startDate = new Date("2023-01-01 " + startTime);
		var endDate = new Date("2023-01-01 " + endTime);
	
	    if (startDate.getTime() > endDate.getTime()) {
	        alert("서비스 시작시간은 서비스 종료시간보다 크거나 같을 수 없습니다.\n다시 입력해 주십시오.");
	        return false;
	    } else {
	        return true;
	    }
	}
</script>
</html>
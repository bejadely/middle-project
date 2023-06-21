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
<body>
	<div>
		<h1>서비스 등록</h1>
	</div>
	<div>
		<form id = "frm" action="serviceRegist.do" onsubmit="formCheck()" method = "post" enctype="multipart/form-data">
			<div>
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
    }
</script>
</html>
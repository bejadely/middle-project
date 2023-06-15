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
		<form id = "frm" action="memberInsert.do" onsubmit="formCheck()" method = "post">
			<!-- id와 name값은 vo객체가 가지고 있는 필드명과 똑같이 작성한다 -->
			<!-- memberName 값은 승우씨가 만든 전체 조회 화면에서 버튼 누를때 값을 말아서 받아와야한다. 1. 우선 이걸 써보자.(or session활용해서 내가 등록하는 메뉴 실행할때 session에 담아서 가져올 수도 있음 -->
			<div>
				<label>돌보미명<input type = "text" id="memberName" name="memberName" required="required" value="${memberName}"></label><br>
				<label for="srStartDate">서비스 시작 날짜를 선택해 주십시오
				  <input type="date"
				         id="srStartDate"
				         name="srStartDate"
				         required="required">
				</label>
				<label for="srStartDate">서비스 종료 날짜를 선택해 주십시오
				  <input type="date"
				         id="srStartDate"
				         name="srStartDate"
				         required="required">
				</label>
				<input type="time" name="birthtime">
				<label>서비스 제공 가능시간</label>
				<label><input type = "time" id="srStartTime" name="srStartTime" required="required" min="09:00" max="23:00" value="09:00"></label> 부터 ~
				<label><input type = "time" id="srEndTime" name="srEndTime" required="required" min="09:00" max="23:00" value="09:00"></label> 까지 <br>
				<label for = "srIntroduce">소개글 등록하기</label>
				<textarea rows="10" cols="100" id = "srIntroduce" name = "srIntroduce" required="required"></textarea><br>
				<label>자격증 정보 등록하기<input type="text" id=""></label>
				<!-- 작업중 -->				
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
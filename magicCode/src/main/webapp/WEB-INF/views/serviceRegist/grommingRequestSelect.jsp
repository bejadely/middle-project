<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
	<div><h1>미용 서비스 요청 단건 조회</h1></div>
	<div>
		<p>
      		<label>예약 날짜
      		<input type="text" value="${gromming.urDate }"></label>
    	</p><br>
    	<p>
      		<label>예약 시작 시간
      		<input type="text" value="${gromming.urStartTime}"></label>
    	</p><br>
    	<p>
      		<label>고객 명
      		<input type="text" value="${gromming.memberName}"></label>
    	</p><br>
    	<p>
      		<label>방문 장소
      		<input type="text" value="${gromming.srLocation}"></label>
    	</p><br>
    	<p>
      		<label>맡길 반려 동물 상세 정보
     		<input type="text" value="이름">
      		<input type="text" value="${gromming.petName}"><br>
      		<input type="text" value="종">
      		<input type="text" value="${gromming.petKind}"><br>
      		<input type="text" value="나이">
      		<input type="text" value="${gromming.petAge}"><br>
      		<input type="text" value="성별">
      		<input type="text" value="${gromming.petGender}"><br>
      		<input type="text" value="무게">
      		<input type="text" value="${gromming.petWeight}"><br>
      		<input type="text" value="특이사항">
      		<input type="text" value="${gromming.petSign}"><br>
      		</label>
    	</p><br>
    	<p>
      		<label>요청사항
      		<input type="text" value="${gromming.urRequire}"></label>
    	</p><br>
    	<p>
      		<label>결제금액
      		<input type="text" value="${gromming.srPrice}"></label>
    	</p><br>
	</div>
	<div align="center">
	    <button type="button" onclick="choisE(${gromming.urId})">승인</button>
	    <button type="button" onclick="choisC(${gromming.urId})">거절</button>
		<button type="button" onclick="location.href='grommingRequestHistory.do'">나가기</button>
	</div>
	<div>
		<form id="frmC" action="urCheckCUpdate.do" method="post">
			<input type="hidden" id="urId" name="urId">
		</form>
		<form id="frmE" action="urCheckEUpdate.do" method="post">
			<input type="hidden" id="urId" name="urId">
		</form>
	</div>
</div>
	<script type="text/javascript">
		function choisE(id) {
			let frmE = document.getElementById("frmE");
			frmE.urId.value = id;
			frmE.submit();
		}
	</script>
	<script type="text/javascript">
		function choisC(id) {
			let frmC = document.getElementById("frmC");
			frmC.urId.value = id;
			frmC.submit();
		}
	</script>
</body>
</html>
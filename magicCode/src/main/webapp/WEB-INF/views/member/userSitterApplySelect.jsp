<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
	background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
	background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
}

.input-form {
	max-width: 500px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
</head>
<body>
	<div class="container ml-10">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12">
				<h4 class="mb-3">나의 펫 돌보미 신청 내역 상세조회</h4>
				<div class="row">
					<div class="col-md-4">
						<label>예약 날짜</label> 
						<input type="text" class="form-control" style="width: 300px" value="${userRegist.urDate }">
					</div>
					<div class="col-md-4">
						<label>돌보미 명</label> 
						<input type="text" class="form-control" style="width: 300px" value="${userRegist.srServerName}">
					</div>
				</div>
				<div class="row">
					<div class="col-md-4">
						<label>예약 시작 시간</label> 
						<input type="text" class="form-control" style="width: 300px" value="${userRegist.urStartTime}">
					</div>
					<div class="col-md-4">
						<label>예약 끝 시간</label> 
						<input type="text" class="form-control" style="width: 300px" value="${userRegist.urEndTime}">
					</div>
				</div>
				<h5>반려 동물 정보</h5>
				<div class="mb-3">
					<label>이름</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.petName}">
				</div>
				<div class="mb-3">
					<label>견종</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.petKind}">
				</div>
				<div class="mb-3">
					<label>나이</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.petAge}">
				</div>
				<div class="mb-3">
					<label>성별</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.petGender}">
				</div>
				<div class="mb-3">
					<label>무게</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.petWeight}">
				</div>
				<div class="mb-3">
					<label>특이사항</label> 
					<span class="form-control" style="width: 700px">${userRegist.petSign}</span>
				</div>
				<div class="mb-3">
					<label>요청사항</label> 
					<span class="form-control" style="width: 700px">${userRegist.urRequire}</span>
				</div>
				<div class="mb-3">
					<label>결제 금액</label> 
					<input type="text" class="form-control" style="width: 700px" value="${userRegist.srPrice}">
				</div>
				<div align="center">
					<c:if
						test="${userRegist.urCheck eq 'E' and userRegist.urReview eq ''}">
						<form id="frm" action="reviewInsertForm.do" method="post">
							<input type="hidden" id="urId" name="urId"
								value="${userRegist.urId}">
							<button type="submit" class="btn btn-success">리뷰 작성</button>
							&nbsp;&nbsp;
						</form>
					</c:if>
					<c:if
						test="${userRegist.urCheck eq 'E' and userRegist.urReview ne ''}">
						<form id="frm" action="reviewUpdateForm.do" method="post">
							<input type="hidden" id="urId" name="urId"
								value="${userRegist.urId}">
							<button type="submit" class="btn btn-light">리뷰 수정</button>
							&nbsp;&nbsp;
						</form>
					</c:if>
				</div>
				<div align="center">
					<button type="button" class="btn btn-success"
						onclick="location.href='userSitterApplyAllList.do'">나가기</button>
				</div>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2023 withPuppy by magicCode</p>
		</footer>
	</div>
</body>
<script type="text/javascript">
	function urMemberIdChoice(id) {
		let frm = document.getElementById("frm");
		frm.urId.value = id;
		frm.submit();
	}
</script>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	margin-left: 100px;
}

.sitter {
	margin-left: 120px;
	font-weight: bolder
}

.form-group {
	margin-left: 150px;
}

.form-control-plaintext {
	font-size: 20px;
}

.col-lg-3 control-label {
	font-weight: bolder;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="container">
		<h1 style="color: #417556;" class="ml-2">Profile</h1>
		<div>
			<hr>
			<div class="row">
				<!-- left column -->
				<div class="col-md-3">
					<div class="text-center">
						<img src="${sitter.srPicturePath}" class="avatar img-circle"
							width="340px" height="500px" alt="avatar">
					</div>
				</div>

				<!-- edit form column -->
				<div class="col-md-9 personal-info">
					<!--            <div class="alert alert-info alert-dismissable">
              <a class="panel-close close" data-dismiss="alert">×</a> 
              <i class="fa fa-coffee"></i>
              This is an <strong>.alert</strong>. Use this to show important messages to the user.
            </div> -->
					<h3 class="sitter">시터 소개</h3>

					<form class="form-horizontal" role="form">

						<div class="form-group">
							<label class="col-lg-3 control-label">돌보미 명:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext"
									value="${sitter.srServerName }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">돌보미 연락처:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext"
									value="${sitter.memberTel }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">서비스 가능 날짜:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext"
									value="${sitter.srStartDate } ~ ${sitter.srEndDate }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">서비스 가능 시간:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext"
									value="${sitter.srStartTime } ~ ${sitter.srEndTime }">

							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">보유 자격증:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext"
									value="${sitter.certificationName }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">돌보미 소개:</label>
							<div class="col-lg-8">
								<span class="form-control-plaintext">${sitter.srIntroduce }</span>
							</div>
						</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">시간당 가격:</label>
							<div class="col-lg-8">
								<input type="text" class="form-control-plaintext" value="${sitter.srPrice }">
							</div>
						</div>
						<div class="form-group">
							<label class="col-md-3 control-label"></label>
							<div class="col-md-8">
								<button type="button" class="btn btn-primary"
									onclick="chois(${sitter.srId},${sitter.srPrice})">예약하기</button>
								<span></span>
								<button type="button" class="btn btn-default"
									onclick="location.href='sitterAllList.do'">목록으로</button>
							</div>
						</div>
					</form>
					<div>
						<form id="frm" action="sitterReservation.do" method="post">
							<input type="hidden" id="srId" name="srId"> <input
								type="hidden" id="srPrice" name="srPrice">
						</form>
					</div>
				</div>
			</div>
		</div>
		<hr>
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
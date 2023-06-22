<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
									onclick="chois('${id}',${sitter.srId},${sitter.srPrice})">예약하기</button>
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
				<!-- 리뷰리스트/페이징 -->
				<div align="center">
					<h1><a>리뷰 목록</a></h1>
					<h2>시터 평점 평균 : ${reviewRateAvg }</h2>
			        <c:forEach items="${reviewsSrId }" var="r">
					<table border="1" class="table">
				        <tbody>
				            <tr align="center">
				                <td width="250px">사용자 닉네임 : ${r.memberNick }</td>
				                <c:if test="${r.srCategory eq 'S' }">
				                <td colspan="2">이용 서비스(시터) : ${r.srTitle }</td>
				                </c:if>
				                <c:if test="${r.srCategory eq 'T' }">
				                <td colspan="2">이용 서비스(훈련) : ${r.srTitle }</td>
				                </c:if>
				                <c:if test="${r.srCategory eq 'G' }">
				                <td colspan="2">이용 서비스(미용) : ${r.srTitle }</td>
				                </c:if>
				            </tr>
				            <tr align="center">
				                <td>강아지 이름 : ${r.petName}</td>
				                <td >견종 : ${r.petKind }</td>
				                <td>이용자 평점 : ${r.urRate }</td>
				            </tr>
				            <tr>
				                <td colspan="3">리뷰 : ${r.urReview}</td>
				            </tr>
				        </tbody>
				    </table>
			        </c:forEach>
					<!-- 페이징 -->
					<div class="pagination">
						<div class="col text-center">
						    <div class="block-27">
								<ul>
								<c:if test="${paging.startPage>1}">
									<li><a href="javascript:goPage(${paging.startPage-1})">이전</a>
								</c:if>
								<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
									<c:if test="${i != paging.page}">
										<li><a href="javascript:goPage(${i})">${i}</a>
									</c:if>
									<c:if test="${i == paging.page}">
										<li class="active"><span>${i}</span>
									</c:if>
								</c:forEach>
								<c:if test="${paging.endPage<paging.totalPageCount}">
									<li><a href="javascript:goPage(${paging.endPage+1})">다음</a>
								</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<hr>
	</div>
</body>
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
	function goPage(p){
		location.href='sitterSelect.do?srId=${sitter.srId}&page='+p;
		
	}
	let forRead = document.getElementsByTagName("input");
	for (let i = 0; i < forRead.length; i++) {
	  forRead[i].readOnly = true;
	}
</script>
</html>
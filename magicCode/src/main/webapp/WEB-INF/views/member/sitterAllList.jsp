<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Pet Sitting - Free Bootstrap 4 Template by Colorlib</title>
<style>
#sitterList{
	height: 50px;
	margin: 20px;
	margin-bottom: 20px;
}
</style>
</head>

<body>
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/petSitter.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<h1 class="mb-0 bread">전체 펫 돌보미 조회</h1>
				</div>
			</div>
		</div>
	</section>
	<div id="sitterList" align="right">
		<nav>
			<form id = "serchForm" action="searchSitterName.do" method="post">
		   		<input type="text" id="name" name="name" placeholder="이름으로 검색" required="required">
		   		<button type="submit" class="btn btn-success mr-1">검색</button>
		   		<button type="button" class="btn btn-success mr-1" onclick="location.href='orderBySitterUrRate.do'">평점 높은 순</button>
				<c:if test="${auth eq 'S'}">
					<button type="button" class="btn btn-success" onclick="location.href='serviceRegistForm.do'">돌봄 서비스 등록</button>&nbsp;&nbsp;
				</c:if>
			</form> 
		</nav>
	</div>
	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row">
				<c:forEach items="${services }" var="s">
				<div class="col-md-6 col-lg-3 ftco-animate" onclick="chois(${s.srId })">
					<div class="staff">
						<div class="img-wrap d-flex align-items-stretch">
							<div class="img align-self-stretch" style="background-image: url(${s.srPicturePath});"></div>
						</div>
						<div class="text pt-3 px-3 pb-4 text-center">
							<h3>${s.srTitle }</h3>
							<span class="position mb-2">${s.srServerName}</span>
							<div class="faded">
								<p>
									서비스 명 : ${s.srTitle}<br> 평점 : ${s.urRate}
								</p>
								<ul class="ftco-social text-center">
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-twitter"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-facebook"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-google"></span></a></li>
									<li class="ftco-animate"><a href="#"
										class="d-flex align-items-center justify-content-center"><span
											class="fa fa-instagram"></span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		<div>
			<form id="frm" action="sitterSelect.do" method="post">
				<input type="hidden" id="srId" name="srId">
			</form>
		</div>
	</section>
<script type="text/javascript">
	function chois(id) {
		let frm = document.getElementById("frm");
		frm.srId.value = id;
		frm.submit();
	}
</script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/jquery.animateNumber.min.js"></script>
<script src="js/bootstrap-datepicker.js"></script>
<script src="js/jquery.timepicker.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/scrollax.min.js"></script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="js/google-map.js"></script>
<script src="js/main.js"></script>
</body>
</html>
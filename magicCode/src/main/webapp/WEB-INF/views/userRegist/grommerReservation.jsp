<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      max-height: 1200px;
      min-height: 100vh;
      background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
      background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
      background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
    }
    
    .col-md-6 mb-3 {
      margin-left: 20px;
    }
    
    .mb-3 {
      margin-left: 20px;
    }
	
    .input-form {
      max-width: 680px;

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
<body style="background-image: url('images/back.jpg');" data-stellar-background-ratio="0.5">
 <div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h3 class="mb-3">미용 서비스 예약신청</h3>
        <form id = "frm" action="groomerServiceRegist.do" method = "post">
        <h4 class="mb-3">나의 펫 정보 입력</h4>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="petName">강아지 이름</label>
              <input type = "text" class="form-control" style="width: 250px" id="petName" name="petName" required="required">
            </div>
            <div class="col-md-6 mb-3">
              <label for="petKind">품종</label>
              <input type = "text" class="form-control" style="width: 250px" id="petKind" name="petKind" required="required">
            </div>
          </div>
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="petAge">나이</label>
              <input type = "number" class="form-control" style="width: 250px" id="petAge" name="petAge" required="required">
            </div>
            <div class="col-md-6 mb-3">
              <label for="petWeight">몸무게</label>
              <input type = "number" class="form-control" style="width: 250px" id="petWeight" name="petWeight" required="required" step="0.1">
            </div>
          </div>
		  <div class="mb-3">
            <label for="petGender">성별</label><br>
            <label for="male">남자아이<input type = "radio" id="male" name="petGender" checked="checked" value="M"></label>&nbsp;&nbsp;
			<label for="female">여자아이<input type = "radio" id="female" name="petGender" value="F"></label><br>
          </div>
          <div class="mb-3">
            <label for="petSign">특이사항</label>
            <textarea rows="3" class="form-control" style="width: 600px" cols="20" id="petSign" name="petSign"></textarea>
          </div>
		<h4 class="mb-3">서비스 신청 내용</h4>
          <div class="row">
            <div class="col-md-6 mb-3">
            	<input type="hidden" class="form-control" id="urMemberId" name="urMemberId" value="${id}">
				<input type="hidden" class="form-control" id="srId" name="srId" value="${srId}">
            	<!-- petId는 command 에서 받아올예정 -->
				<label for="urDate">요청 날짜를 선택해 주십시오.<br>
           	    	<input type="date" class="form-control" id="urDate" name="urDate" required="required">
           	    </label><br>
           	 </div>
           </div>
           <div class="row">
           	 <div class="col-md-6 mb-3">
           	    <label>미용 서비스 예약 시간을 선택해 주십시오.</label><br>
				<label><input type = "time" class="form-control" id="urStartTime" name="urStartTime" required="required" min="09:00" max="23:00" value="09:00"></label> 부터 ~
				<label><input type = "time" class="form-control" id="urEndTime" name="urEndTime" required="required" min="09:00" max="23:00" value="09:00"></label> 까지 <br>
            </div>
           </div>
           <div class="row">
            <div class="col-md-6 mb-3">
				<label>요청사항<br>
					<textarea rows="3" cols="20" class="form-control" style="width: 600px" id="urRequire" name="urRequire"></textarea>
				</label>          
          	</div>
          </div>
          <div class="row">
          	<div class="col-md-6 mb-3">
          		<label>결제금액 <input type = "text" id="srPrice" name="srPrice" value="${srPrice}" readonly> 원</label><br> 
			</div>
      	 </div>
      	 <div class="row">
      	 	<div class="col-md-6 mb-3">
      	 		<label>결제방식 선택</label><br>
				<label for="credit">일반 카드 결제<input type = "radio" id="credit" name="urPayment" checked="checked" value="C"></label>&nbsp;&nbsp;
				<label for="naverPay">네이버 페이<input type = "radio" id="naverPay" name="urPayment" value="N"></label>
      		</div>
      	 </div>   
          <hr class="mb-4">
          <div class="mb-4"></div>
          <div align="center">
			<input type="submit" class="btn btn-success mr-1" value = "등 록" onclick="notice()">&nbsp;
			<input type="reset" class="btn btn-light" value = "취 소" >&nbsp;
			<input type="button" class="btn btn-light" onclick="location.href='grommerAllList.do'" value="목록으로 이동">
		  </div>
        </form>
      </div>
    </div>
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2023 withPuppy by magicCode</p>
    </footer>
  </div>
</body>
<script type="text/javascript">
	document.getElementById('urDate').value = new Date().toISOString().substring(0, 10);
	document.getElementById('urDate').min = new Date().toISOString().substring(0, 10);
	function notice(){
		alert('결제가 정상적으로 완료되었습니다');
	}
</script>
</html>
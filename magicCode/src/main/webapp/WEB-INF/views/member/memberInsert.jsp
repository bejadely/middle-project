<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

#container {
  align-items: center;
  display: flex;
  justify-content: center;
  height: 80vh;
}

.duplicate {
  color: red;
}

<!-- 섹션 크기 -->
	.bg-light{
		height: 1053px;
		padding-top:55px;
		padding-bottom:75px;
	}
	.flex-fill.mx-xl-5.mb-2{
		margin: 0 auto;
		width : 700px;
		padding-right: 7rem;
		padding-left: 7rem;
	}
    <!-- 입력창 -->
	.container.py-4{
		margin: 0 auto;
		width : 503px;
	}
    <!-- 가입하기 -->
	.d-grid.gap-2{
		padding-top: 30px;
	}
    
    <!-- 생년월일 -->
	.bir_yy,.bir_mm,.bir_dd{
		width:160px;
		display:table-cell;
	}
	.bir_mm+.bir_dd, .bir_yy+.bir_mm{
		padding-left:10px;
	}

</style>
<meta charset="UTF-8">
<title>일반회원가입</title>
</head>

<body>
<section class="bg-light">
	<div align="center"  id="container">
	<div class="container py-4">
		 <div class="row align-items-center justify-content-between">
		 	<a class="navbar-brand h1 text-center" href="index.do">
		 	 <span class="text-dark h4">With</span> <span class="text-primary h4">Puppy</span>  
		 	</a>
		 </div>
	

	
		<!-- 선호 form은 request에다가 담아주는 역할-->  
		<form id="frm" action="memberInsert.do" onsubmit="return formCheck()" method="post">
			<div class="form-group">
			
				<label for="memberId" class="form-label mt-4">*아이디</label>
				<input type="email" class="form-control" id="memberId" name="memberId" required="required">&nbsp;&nbsp;
			</div>
			
			<div>
				<br><label>*닉네임</label>
				<input type="text" id="memberNick" name="memberNick" required="required">&nbsp;&nbsp;
			</div>
			
			<div>	
				<label class="form-label mt-4" for="memberId">*비밀번호</label>
				<input type ="password" class="form-control is-valid" id="memberPw" name="memberPw" required="required"><br>
			</div>
			
			<div class="form-group has-danger">	
				<label class="form-label mt-4" for="passwordCheck">*비밀번호 확인</label>
				<input type ="password" class="form-control is-invalid" id="passwordCheck" name="passwordCheck" required="required"><br>
			</div>
			
			<div class="form-group">
				<label for="memberName" class="form-label mt-4">*이름</label>
				<input type ="text"  class="form-control" id="memberName" name="memberName" required="required" aria-describedby="emailHelp"><br>
			</div>
			
			<div>
				<label>*전화번호</label>
				<input type = "tel" id="memberTel" name="memberTel" required="required"><br>
			</div>
			
			<div>
				<p>주소 입력란</p>
				<input id="member_post"  type="text" placeholder="도로명주소" readonly onclick="findAddr()"><br>
			  	<input id="member_addr" type="text" placeholder="메인주소" readonly><br>
				<input id="member_detail_addr" type="text" placeholder="상세주소 입력란">
			</div>
						
			<div class="d-grid gap-2">
				<input type="hidden" id="memberAuth" name="memberAuth" value="N">
				<input type="hidden" id="memberAddrInput" name="memberAddr" />
				<button type="submit" class="btn btn-primary btn-lg">가입하기</button>
			</div>
	
		</form>
	</div>
	</div>
</section>

<script type="text/javascript">

	function formCheck(){
		let frm = document.getElementById("frm");
		if(frm.memberPw.value != frm.passwordCheck.value){
			alert("패스워드가 일치 하지 않습니다.");
			frm.memberPw.value = "";
			frm.passwordCheck.value = "";
			frm.memberPw.focus();
			return false;
		}else if(frm.checkId.value != "Yes") {
			alert("아이디 중복체크를 수행하세요.");
			return false;
		}else if(frm.checkNick.value != "Yes") {
			alert("닉네임 중복체크를 수행하세요.");
			return false;
		}	
		return true;
	}
	
	function idCheck() {
		let id = document.getElementById("memberId").value;
		let url = "ajaxCheckId.do?id="+id;
		fetch(url)  //ajax 호출
			.then(response => response.text())
			.then(text => htmlProcess(text));
	}
	
	
	function nickCheck() {
		let nick = document.getElementById("memberNick").value;
		let url = "ajaxCheckNick.do?nick="+nick;
		fetch(url)  //ajax 호출
			.then(response => response.text())
			.then(text => htmlProcess2(text));
	}
	
	function htmlProcess(data){
		  let memberIdField = document.getElementById("memberId");
		  if(data == 'Yes'){
		    alert(memberIdField.value + "\n 사용가능한 아이디 입니다.");
		    memberIdField.classList.remove('duplicate');
		  }else {
		    alert(memberIdField.value + "\n 이미사용하는 아이디 입니다.");
		    memberIdField.value ="";
		    memberIdField.focus();
		    memberIdField.classList.add('duplicate');
		  }
		}
	
	function htmlProcess2(data){
		  let memberNickField = document.getElementById("memberNick");
		  if(data == 'Yes'){
		    alert(memberNickField.value + "\n 사용가능한 닉네임 입니다.");
		    memberNickField.classList.remove('duplicate');
		  }else {
		    alert(memberNickField.value + "\n 이미사용하는 닉네임 입니다.");
		    memberNickField.value ="";
		    memberNickField.focus();
		    memberNickField.classList.add('duplicate');
		  }
		}
	
	 window.onload = function() {
		 document.getElementById("memberId").addEventListener("change", idCheck);
		 document.getElementById("memberNick").addEventListener("change", nickCheck);
	        // 아이디, 닉네임 중복체크
	    };
	    
	   
	
</script>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            var postcode = data.zonecode //우편번호
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('member_post').value = data.zonecode;
            var addr = '';
            if(roadAddr !== ''){
            	addr = roadAddr;
            } 
            else if(jibunAddr !== ''){
            	addr = jibunAddr;
            }
                document.getElementById("member_addr").value = roadAddr;
                //상세주소가져오기
                var detailAddr = document.getElementById('member_detail_addr').value;
                //주소 합치기<우편번호, 도로명주소, 상세주소>
                var memberAddr = postcode + ' ' + addr + ' ' + detailAddr;
             	// 숨겨진 입력 필드의 값을 설정
                document.getElementById('memberAddrInput').value = memberAddr;
        }
    }).open();
}
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
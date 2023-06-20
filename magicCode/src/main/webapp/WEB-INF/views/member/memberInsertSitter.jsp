<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>시터서비스 회원가입</title>

</head>
<body>
	<div align="center">
	<h1>퍼피케어서비스 회원가입</h1></div>
	<div align="center">
		<form id="frm" action="memberInsertSitter.do" onsubmit="return formCheck" method="get"> 
		
			<div>
				<p>(*표시는 반드시 기입하셔야 하는 항목입니다.)</p>
				<label>* 아이디</label>
				<input type="email" id="memberId" name="memberId" required="required" placeholder="이메일주소">&nbsp;&nbsp;<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button><br>
				<label>* 비밀번호</label>
				<input type = "password" id="memberPw" name="memberPw" required="required" placeholder="비밀번호"><br>
				<label>* 비밀번호 확인</label>
				<input type = "password" id="passwordCheck" name="passwordCheck" required="required" placeholder="비밀번호확인"><br>
				<label>* 이름</label>
				<input type = "text" id="memberName" name="memberName" required="required" placeholder="이름"><br>
				<label>* 전화번호</label>
				<input type = "tel" id="memberTel" name="memberTel" required="required" placeholder="전화번호"><br>
				
				<input id="member_post"  type="text" placeholder="클릭하세요" readonly onclick="findAddr()"><br>
			  	<input id="member_addr" type="text" placeholder="Address" readonly><br>
				<input id="member_detail_addr" type="text" placeholder="상세주소 입력란">
				
		<!-- 	<label>* 주소</label> <input type="text" id="sample6_address"
					name="sample6_address" readonly="readonly" required="required">
				<button type="button" onclick="sample6_execDaumPostcode()">주소검색</button><br>
				<label>* 상세주소</label> <input type="text"
					id="sample6_detailAddress" name="sample6_detailAddress"	required="required"><br>
				<input type="hidden" id="memberAddr" name="memberAddr">
		-->		
				
				
				
				<br>
				<input type="radio" id="memberAuth" name="memberAuth" value="S">
    			<label for="memberAuth">시터</label>
    			<input type="radio" id="memberAuth" name="memberAuth" value="T">
    			<label for="memberAuth">훈련사</label>
    			<input type="radio" id="memberAuth" name="memberAuth" value="G">
    			<label for="memberAuth">애견미용</label><br>
    			
				<!-- 자격증 삽입 구조문  -->
				<label>자격증or증명서 사진 : </label>
				<input type="file" name="certificationName" required="required">
				<input type="submit" value="전송">
			</div>
			<div>
				<input type="submit" value="등 록">&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;
			</div>
		</form>
	</div>
<script type="text/javascript">

	function formCheck() {
		let frm = document.getElementById("frm");
		if (frm.memberPw.value != frm.passwordcheck.value) {
			alert("패스워드가 일치 하지 않습니다.");
			frm.memberPw.value = "";
			frm.passwordcheck.value = "";
			frm.memberPw.focus();
			return false;
		} else if (frm.checkId.value != "Yes") {
			alert("아이디 중복체크를 수행하세요.");
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
	
	function htmlProcess(data){
		if(data == 'Yes'){
			alert(document.getElementById("memberId").value + "\n 사용가능한 아이디 입니다.");
			document.getElementById("checkId").value = 'Yes';
		}else {
			alert(document.getElementById("memberId").value + "\n 이미사용하는 아이디 입니다.");
			document.getElementById("memberId").value ="";
			document.getElementById("memberId").focus();
		}
	}
	
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
        }
    }).open();
}
</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>시터서비스 회원가입</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript"> // function(e)미리 양식이 제출되는것을 방지하기 위함
document.getElementById("frm").addEventListener("submit", function(e){
	  e.preventDefault();
	  
	  // 주소 API가져오기
	  var addr_from_api = document.getElementById("loadAddress").value;

	  // user 주소 가져오기
	  var detail_addr = document.getElementById("detailAddress").value;

	  // 주소 합치기
	  var full_addr = addr_from_api + " " + detail_addr;

	  // 합친주소 보내기
	  document.getElementById("memberAddr").value = full_addr;

	  this.submit();
	});
</script>

<script>
    function sample6_execDaumPostcode() {
        new daum. Postcode({
            oncomplete: function(data) {
                var addr = ''; 
                var extraAddr = ''; 

                if (data.userSelectedType === 'R') {
                    addr = data. roadAddress;
                } else { 
                    addr = data. jibunAddress;
                }

                if(data.userSelectedType === 'R'){
                    if(data.bname !== '' && /[to|to|to]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                
                document.getElementById("sample6_address").value = addr;
                document.getElementById("memberAddr").value = addr; // update memberAddr field with the main address
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }

    // update memberAddr with the main address plus the detail address
    document.getElementById("sample6_detailAddress").addEventListener("change", function() {
        var mainAddr = document.getElementById("sample6_address").value; //도로명주소
        var detailAddr = document.getElementById("sample6_detailAddress").value; //상세주소
        document.getElementById("memberAddr").value = mainAddr + " " + detailAddr; //두개 합치기
    });
</script>

</head>
<body>
	<div align="center"><h1>퍼피케어서비스 회원가입</h1></div>
	<div align="center"><!-- 선호 -->
		<form id="frm" action="memberInsertSitter.do" onsubmit="return formCheck" method="get"> 
			<div>
				
				<p>(*표시는 반드시 기입하셔야 하는 항목입니다.)</p>
				<label>*아이디</label>
				<input type="email" id="memberId" name="memberId" required="required" placeholder="이메일주소">&nbsp;&nbsp;<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button><br>
				<label>*비밀번호</label>
				<input type = "password" id="memberPw" name="memberPw" required="required" placeholder="비밀번호"><br>
				<label>*비밀번호 확인</label>
				<input type = "password" id="passwordCheck" name="passwordCheck" required="required" placeholder="비밀번호확인"><br>
				<label>*이름</label>
				<input type = "text" id="memberName" name="memberName" required="required" placeholder="이름"><br>
				<label>*전화번호</label>
				<input type = "tel" id="memberTel" name="memberTel" required="required" placeholder="전화번호"><br>
				
				<label>*주소</label><input type = "text" id="memberAddr" name="memberAddr" required="required">&nbsp;&nbsp;
				<button type="button" onclick="sample6_execDaumPostcode()">주소찾기</button><br>
				<label>*상세주소</label><input type="text" id="detailAddress" placeholder="상세주소" required="required"><br><br>
				
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



</body>
</html>
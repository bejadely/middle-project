<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
	<div><h1>시터서비스 회원가입</h1></div>
	<div>
		<form id="frm" action="memberInsertSitter.do" onsubmit="return formCheck()" enctype="multipart/form-data" method="post"> 
			<div>
				<!-- member 삽입 구문 -->
				<p>(*표시는 반드시 기입하셔야 하는 항목입니다.)</p>
				<label>*아이디</label><input type="email" id="memberId" name="memberId" required="required">&nbsp;&nbsp;<button type="button" id="checkId" value="No" onclick="idCheck()">중복체크</button><br>
				<label>*비밀번호</label><input type = "password" id="memberPw" name="memberPw" required="required"><br>
				<label>*비밀번호 확인</label><input type = "password" id="passwordCheck" name="passwordCheck" required="required"><br>
				<label>*이름</label><input type = "text" id="memberName" name="memberName" required="required"><br>
				<label>*전화번호</label><input type = "tel" id="memberTel" name="memberTel" required="required"><br>
				<p>주소 입력란</p><br>
				<input id="member_post"  type="text" placeholder="클릭하세요" readonly onclick="findAddr()"><br>
			  	<input id="member_addr" type="text" placeholder="Address" readonly><br>
				<input id="member_detail_addr" type="text" placeholder="상세주소 입력란">
				
				<input type="radio" id="sitter" name="memberAuth" value="S" checked="checked">
    			<label for="sitter">시터</label>
    			<input type="radio" id="trainer" name="memberAuth" value="UT">
    			<label for="trainer">훈련사</label>
    			<input type="radio" id="groomer" name="memberAuth" value="UG">
    			<label for="groomer">애견미용</label><br>
				<!-- certificaion 삽입 구문 -->
				<label>자격증 명<input type="text" id="certificationName" name="certificationName"></label>
				<input type="file" id="cfile" name="cfile">
			</div>
			<div>
				<input type="submit" value="등 록">&nbsp;&nbsp;
				<input type="reset" value="취 소">&nbsp;&nbsp;
			</div>
			<input type="hidden" id="memberAddrInput" name="memberAddr"/>
		</form>
	</div>
<script type="text/javascript">

	function formCheck() {
		let frm = document.getElementById("frm");
		if (frm.memberPw.value != frm.passwordCheck.value) {
			alert("패스워드가 일치 하지 않습니다. 다시 입력해주십시오");
			frm.memberPw.value = "";
			frm.passwordCheck.value = "";
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
             	// 숨겨진 입력 필드의 값을 설정
                document.getElementById('memberAddrInput').value = memberAddr;
        }
    }).open();
}
</script>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.top{
	margin-top: 50px;
}

.button-wrapper {
  display: flex;
  flex-direction: column; /* 세로로 버튼을 배열하도록 변경 */
  align-items: center; /* 버튼을 가로로 가운데 정렬합니다 */
  justify-content: space-between;    
   
}

.button-wrapper button {
  width: calc(50% - 5px);
  height: 48px;
  background-color: #00C13F;
  color: #fff;
  border: none;
  border-radius: 6px;
  font-size: 16px;
  transition: background-color 0.3s ease; /* hover 시 애니메이션 효과 */
  width: 20%;
  margin-bottom: 16px; /* 버튼 간 간격을 추가 */
  
}

.button-wrapper button:hover {
  background-color: #018429; /*버튼에 hover 효과 */
   
}

.button-wrapper button:last-child {
  margin-bottom: 0; /* 마지막 버튼은 하단 여백이 없도록 합니다. */
  
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center"  class="top">
		<h3>${message}</h3><br>
		<div class="button-wrapper" align="center">
		<button type="button" class=" " onclick="location.href='main.do'">메인화면으로 이동</button>
		</div>
	</div>
</body>
</html>
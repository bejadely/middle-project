<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="reviewInsert.do" method="post" id="reviewInsert">
			<table>
				<tr>
					<td>평점입력</td>
					<td><input type="text" id="urRate" name="urRate"></td>
					<td>리뷰입력</td>
					<td><input type="text" id="urReview" name="urReview"></td>
				</tr>
			</table>
			<!-- hidden 변수 생성 -->
			<input type="hidden" id="urId" name="urId" value="${userRegist.urId}">
		</form>
		<button type="submit" form="reviewInsert">입력</button>
		<button type="reset">취소</button>
	</div>
</body>
</html>
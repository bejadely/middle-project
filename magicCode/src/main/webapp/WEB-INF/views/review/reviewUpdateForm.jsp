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
		<form id="frm" action="reviewUpdate.do" method="post">
			<table>
				<tr>
					<th>평점 수정</th>
					<td><input type="text" id="urRate" name="urRate" value="${urs.urRate }"></td>
				</tr>
				<tr>
					<td>리뷰 수정</td>
					<td><input type="text" id="urReview" name="urReview" value="${urs.urReview }"></td>
				</tr>
				<tr></tr>
			</table>
			<!-- hidden 변수 생성 -->
			<input type="hidden" id="urId" name="urId" value="${urs.urId}">
		</form>
		<div>
			<button type="submit" form="frm">수정</button>&nbsp;
			<button type="button" onclick="location.href='reviewList.do'">취소</button>&nbsp;
		</div>
	</div>
</body>
</html>
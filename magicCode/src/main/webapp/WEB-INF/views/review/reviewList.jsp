<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<table>
	        <thead>
	            <tr>
	                <th>리뷰 전체 목록</th>
	                <th></th>
	            </tr>
	        </thead>
	        <tbody>
	        <c:forEach items="${reviews }" var="r">
	            <tr>
	                <td>사용자 닉네임 : ${r.memberNick }</td>
	                <td>이용 서비스 : ${r.srTitle }(분류:${r.srCategory })</td>
	                <td>이용자 평점 : ${r.urRate }</td>
	            </tr>
	            <tr>
	                <td>강아지 이름 : ${r.petName}</td>
	                <td>견종 : ${r.petKind }</td>
	            </tr>
	            <tr>
	                <td>${r.urReview}</td>
	            </tr>
	        </c:forEach>
	        </tbody>
	    </table>
	</div>
</body>
</html>
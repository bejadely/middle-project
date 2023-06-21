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
		<h1><a href="reviewListAdmin.do">리뷰 전체 목록</a></h1>
		<table border="1">
	        <thead>
	            <tr>
	                <th colspan="3" align="center"></th>
	            </tr>
	        </thead>
	        <tbody>
	        <c:forEach items="${reviews }" var="r">
	            <tr align="center">
	                <td width="250px">사용자 닉네임 : ${r.memberNick }</td>
	                <c:if test="${r.srCategory eq 'S' }">
	                <td colspan="2">이용 서비스(시터) : ${r.srTitle }</td>
	                </c:if>
	                <c:if test="${r.srCategory eq 'T' }">
	                <td colspan="2">이용 서비스(훈련) : ${r.srTitle }</td>
	                </c:if>
	                <c:if test="${r.srCategory eq 'G' }">
	                <td colspan="2">이용 서비스(미용) : ${r.srTitle }</td>
	                </c:if>
	            </tr>
	            <tr align="center">
	                <td>강아지 이름 : ${r.petName}</td>
	                <td >견종 : ${r.petKind }</td>
	                <td>이용자 평점 : ${r.urRate }</td>
	            </tr>
	            <tr>
	                <td colspan="3">리뷰 : ${r.urReview}</td>
	            </tr>
	            <tr>
	            	<td colspan="3">
	            		<a onclick="urMemberIdChoice(${r.urId })"><input type="button" value="리뷰삭제"></a>
	            		<a onclick="urMemberIdChoice1(${r.urId })"><input type="button" value="리뷰수정"></a>
	            	</td>
	            </tr>
	        </c:forEach>
	        </tbody>
	    </table>
	</div>
	<div align="center">
		<form method="post" name="search" action="reviewSearch.do">
			<table>
				<tr>
					<td>
						<select class="form-control" name="searchField" ID="searchField">
							<option value="0">선택</option>
							<option value="urReview">리뷰 내용</option>
							<option value="memberNick">작성자 닉네임</option>
						</select>
					</td>
					<td>
						<input type="text" class="form-control"
						placeholder="검색어 입력" id="searchText" name="searchText" maxlength="100">
					</td>
					<td>
						<button type="submit" class="btn btn-success">검색</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div>
		<form id="frm" action="reviewDelete.do" method="post">
			<input type="hidden" id="urId" name="urId">
		</form>
		<form id="frm1" action="reviewUpdateForm.do" method="post">
			<input type="hidden" id="urId" name="urId">
		</form>
	</div>
</body>
<script type="text/javascript">
	function urMemberIdChoice(id) {
		let frm = document.getElementById("frm");
		frm.urId.value = id;
		frm.submit();
	}
	function urMemberIdChoice1(id) {
		let frm = document.getElementById("frm1");
		frm.urId.value = id;
		frm.submit();
	}
</script>
</html>
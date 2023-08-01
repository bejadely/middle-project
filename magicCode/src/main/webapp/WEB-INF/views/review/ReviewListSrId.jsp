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
		<h1><a href="reviewListAdmin.do">리뷰 목록</a></h1>
		<h2>시터 평점 평균 : ${reviewRateAvg }</h2>
        <c:forEach items="${reviewsSrId }" var="r">
		<table border="1" class="table">
	        <tbody>
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
	        </tbody>
	    </table>
        </c:forEach>
	</div>
		<!-- 페이징 -->
	<div class="pagination">
		<div class="col text-center">
		    <div class="block-27">
				<ul>
				<c:if test="${paging.startPage>1}">
					<li><a href="javascript:goPage(${paging.startPage-1})">이전</a>
				</c:if>
				<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="i">
					<c:if test="${i != paging.page}">
						<li><a href="javascript:goPage(${i})">${i}</a>
					</c:if>
					<c:if test="${i == paging.page}">
						<li class="active"><span>${i}</span>
					</c:if>
				</c:forEach>
				<c:if test="${paging.endPage<paging.totalPageCount}">
					<li><a href="javascript:goPage(${paging.endPage+1})">다음</a>
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</body>
<script>
	function goPage(p){
		location.href='noticeListPage.do?page='+p;
		
	}
</script>
</html>
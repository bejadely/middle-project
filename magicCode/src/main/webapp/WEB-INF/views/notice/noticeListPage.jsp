<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<section>
  <div class="page-title" >
        <div align="center">
        	<span style="heigt:50px; color: white;">1</span>
            <h2><a href="noticeList.do">공지사항 목록</a></h2>
        </div>
    </div>
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                	<th scope="col" class="th-num">No.1</th>
	                <th scope="col" class="th-title">제목</th>
	                <th>작성자</th>
	                <th scope="col" class="th-date">작성일</th>
                </tr>
                </thead>
                <tbody>
			        <c:forEach items="${notices }" var="n">
		            	<tr>
			                <td>${n.noticeId }</td>
			                <td><a onclick="noticeChoice(${n.noticeId})">${n.noticeTitle }</a></td>
			                <td>${n.noticeWriter }</td>
			                <td>${n.noticeTime }</td>
		            	</tr>
		        	</c:forEach>
                </tbody>
            </table>
			<form id="frm" action="noticeSelect.do" method="post">
				<input type="hidden" id="noticeId" name = "noticeId">
			</form>
        </div>
    </div>
	<div align="center">
		<form method="post" name="search" action="noticeSearch.do">
			<table>
				<tr>
					<td>
						<select class="form-control" name="searchField" ID="searchField">
							<option value="0">선택</option>
							<option value="noticeTitle">공지사항 제목</option>
							<option value="noticeTime">작성 일자</option>
						</select>
					</td>
					<td>
						<input type="text" class="form-control"
						placeholder="검색어 입력" id="searchText" name="searchText" maxlength="100">
					</td>
					<td>
						<button type="submit" id="search" name="search" class="btn btn-success">검색</button>
					</td>
					<td>
		      			<c:if test="${auth eq 'A'}">
							<a href="noticeInsertForm.do" class="btn btn-success">공지사항 작성</a>
						</c:if>
					</td>
				</tr>
			</table>
		</form>
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
</section>
</body>
<script type="text/javascript">
	function noticeChoice(id){
		let frm = document.getElementById("frm");
		frm.noticeId.value = id;
		frm.submit();
	}
	function goPage(p){
		location.href='noticeListPage.do?page='+p;
		
	}
</script>
</html>
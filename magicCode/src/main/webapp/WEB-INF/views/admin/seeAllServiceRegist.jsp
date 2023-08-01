<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.panel-heading {
	background-color: #00C13F;
	color: white;
	border-radius: 40px 80px;
	margin-bottom: 5px;
}

.panel-heading h3 {
	margin: 0;
}

.list-group-item {
	color: black;
}

.list-group-item:hover {
	background-color: black;
	color: white;
}

.container {
	max-width: 100%;
	margin-right: -10px;
	padding: none;
}

.col-8 {
	padding: none;
}

.col-4 {
	padding: none;
}

.seachbtn {
	width: 70px;
	height: 35px;
	background-color: #00C13F;
	color: white;
}

.searchForm {
	padding-top: 20px;
	padding-bottom: 20px;
}
</style>
<body>
	<div class="container">
		<div class="row">
			<aside class="col-4" style="max-width: 20%">
				<br>
				<div class="panel panel-info" style="max-width: 250px">
					<div class="panel-heading">
						<h3 class="panel-title">&nbsp;Category</h3>
					</div>
					<ul class="list-group">
						<li class="list-group-item"><a href="memberList.do">회원목록
								보기</a></li>
						<li class="list-group-item"><a href="seeAllServiceRegist.do">모든게시물
								보기</a></li>
						<li class="list-group-item"><a href="reviewListAdmin.do">리뷰
								보기</a></li>
						<li class="list-group-item"><a href="noticeListPage.do">공지사항
								보기</a></li>
						<li class="list-group-item"><a href="authRequestList.do">인증요청
								보기</a></li>
					</ul>
				</div>
			</aside>
			<div class="col-8">
				<div align="center">
					<h2>등록된 게시글 전체 조회</h2>
				</div>
				<div align="center">
					<!-- 검색창(아이디로 조회 / 이름으로 조회) 구현 예정 -->
					<hr>
					<div align="center">
						<table border="1">
							<thead>
								<tr>
									<th width="100" align="center">등록 번호</th>
									<th width="150" align="center">서비스 종류</th>
									<th width="300" align="center">제 목</th>
									<th width="200" align="center">작성자ID</th>
									<th width="100" align="center">작성자</th>
									<th width="120" align="center">삭제하기</th>
								</tr>
							</thead>
							<c:if test="${not empty serviceRegist}">
								<tbody>
									<c:forEach items="${serviceRegist}" var="s">
										<tr>
											<td align="center" id="srId">${s.srId}</td>
											<td align="center">${s.srCategory}</td>
											<td align="center">${s.srTitle}</td>
											<td align="center">${s.srServerId}</td>
											<td align="center">${s.srServerName}</td>
											<td align="center"><button type="button"
													id="deleteButton" name="deleteButton"
													onclick="deleteService(${s.srId})">삭제하기</button></td>
										</tr>
									</c:forEach>
								</tbody>
							</c:if>
						</table>
						<c:if test="${empty serviceRegist}">
							<div align="center">
								<span>일치하는 검색 결과가 없습니다.</span>
							</div>
						</c:if>
					</div>
					<hr>
					<form id="serchForm" action="searchAllServiceRegistBykey.do"
						method="post">
						<select id="key" name="key">
							<option value="id">아이디로 검색</option>
							<option value="name">이름으로 검색</option>
						</select> &nbsp;&nbsp; <input type="text" id="val" name="val">
						<button type="submit">검색</button>
					</form>
					<!-- 페이징 -->
					<div class="pagination">
						<div class="col text-center">
							<div class="block-27">
								<ul>
									<c:if test="${paging.startPage>1}">
										<li><a href="javascript:goPage(${paging.startPage-1})">이전</a>
									</c:if>
									<c:forEach begin="${paging.startPage}" end="${paging.endPage}"
										var="i">
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
					<br>
					<div>
						<form id="deleteform" action="deleteServiceRegist.do"
							method="post">
							<input type="hidden" id="srId" name="srId">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function deleteService(id){
		let form = document.getElementById("deleteform")
		form.srId.value = id
		form.submit()
	}
	function goPage(p){
		location.href='reviewListAdmin.do?page='+p;
	}
</script>
</html>
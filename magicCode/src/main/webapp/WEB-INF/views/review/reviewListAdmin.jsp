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
#reviewT tr td{
	font-weight: bold;
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
					<h1>
						<a href="reviewListAdmin.do">리뷰 전체 목록</a>
					</h1>
				</div>
				<div align="center">
				<c:forEach items="${reviews}" var="r">
					<table border="1" id="reviewT" class="table" style="width: 600px">
						<tbody>
							<tr align="center">
								<td>서비스 ID : ${r.srId }</td>
								<td width="250px">사용자 닉네임 : ${r.memberNick }</td>
								<c:if test="${r.srCategory eq 'S' }">
									<td>이용 서비스(시터) : ${r.srTitle }</td>
								</c:if>
								<c:if test="${r.srCategory eq 'T' }">
									<td>이용 서비스(훈련) : ${r.srTitle }</td>
								</c:if>
								<c:if test="${r.srCategory eq 'G' }">
									<td>이용 서비스(미용) : ${r.srTitle }</td>
								</c:if>
							</tr>
							<tr align="center">
								<td>강아지 이름 : ${r.petName}</td>
								<td>견종 : ${r.petKind }</td>
								<td>이용자 평점 : ${r.urRate }</td>
							</tr>
							<tr>
								<td colspan="3">리뷰 : ${r.urReview}</td>
							</tr>
							<tr>
								<td colspan="3"><a onclick="urMemberIdChoice(${r.urId })"><input
										type="button" value="리뷰삭제"></a> <a
									onclick="urMemberIdChoice1(${r.urId })"><input
										type="button" value="리뷰수정"></a></td>
							</tr>
						</tbody>
					</table>
				</c:forEach>
			</div>
			</div>
		</div>
	</div>
	<div align="center">
		<form method="post" name="search" action="reviewSearch.do">
			<table>
				<tr>
					<td><select class="form-control" name="searchField"
						ID="searchField">
							<option value="0">선택</option>
							<option value="urReview">리뷰 내용</option>
							<option value="memberNick">작성자 닉네임</option>
					</select></td>
					<td><input type="text" class="form-control"
						placeholder="검색어 입력" id="searchText" name="searchText"
						maxlength="100"></td>
					<td>
						<button type="submit" class="btn btn-success">검색</button>
					</td>
				</tr>
			</table>
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
	function goPage(p){
		location.href='reviewListAdmin.do?page='+p;
	}
</script>
</html>
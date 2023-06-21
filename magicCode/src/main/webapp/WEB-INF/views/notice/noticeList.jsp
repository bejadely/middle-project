<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}
#search{
	!important
}
#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*   padding-right: 124px; */
  margin: 0 auto;
  width: 80%;
  max-width: 564px;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  width: 100%;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  position: absolute;
  right: 0;
  top: 0;
  bottom: 0;
  width: 108px;
  padding: 0;
  font-size: 16px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  font-size: 15px;
  font-weight: 400;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}
</style>
<body>
<section class="notice">
  <div class="page-title">
        <div class="container">
            <h3>공지사항</h3>
        </div>
    </div>
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
        	<div>
      			<c:if test="${auth eq 'A'}">
					<a href="noticeInsertForm.do">공지사항 작성</a>
				</c:if>
        	</div>
            <table class="board-table">
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
						<button type="submit" id="search" name="search" class="btn btn-success">검색</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<div class="col text-center">
	    <div class="block-27">
	      <ul>
	        <li><a href="#">&lt;</a></li>
	        <li class="active"><span>1</span></li>
	        <li><a href="#">2</a></li>
	        <li><a href="#">3</a></li>
	        <li><a href="#">4</a></li>
	        <li><a href="#">5</a></li>
	        <li><a href="#">&gt;</a></li>
	      </ul>
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
</script>
</html>
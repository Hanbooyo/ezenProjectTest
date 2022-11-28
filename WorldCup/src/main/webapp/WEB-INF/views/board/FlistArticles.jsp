<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="articleList" value="${articleMap.articleList}" />
<c:set var="totArticles" value="${articleMap.totArticles}" />
<c:set var="section" value="${articleMap.section}" />
<c:set var="pageNum" value="${articleMap.pageNum}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<title>2022 카타르 월드컵</title>
<meta charset="UTF-8">

<link rel="stylesheet" href="${contextPath}/css/board.css">

</head>
<body>

	<!-- 페이지 상단 시작 -->
	<section class="page-info-section set-bg" data-setbg="img/commbg.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2>자유게시판</h2>
						<p>욕설 금지, 시비 금지, 싸움 금지</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 페이지 상단 종료 -->

	<!-- 게시판 페이지 시작 -->
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>자유게시판</h3>
			</div>
		</div>

		<!-- 게시판 검색 영역 시작 -->
		<div id="board-search">
			<div class="container">
				<div class="search-window">
					<form action="">
						<div class="search-wrap">
							<label for="search" class="blind">내용 검색</label> <input
								id="search" type="search" name="" placeholder="검색어를 입력해주세요."
								autocomplete="off" value="">
							<button type="submit" class="btn btn-dark">검색</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 게시판 검색 영역 종료 -->

		<!-- 게시판 리스트 영역 시작 -->
		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col" class="th-num">번호</th>
							<th scope="col" class="th-title">제목</th>
							<th scope="col" class="th-date">등록일</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${empty articleList}">
								<tr>
									<td align="center" colspan="4">등록된 글이 없습니다.</td>
								</tr>
							</c:when>
							<c:when test="${!empty articleList}">
								<c:forEach var="article" items="${articleList}" varStatus="f_aNo">
									<tr>
										<td>${article.f_aNo}</td>
							  			<th>
											<a href="${contextPath}/board/viewArticle.do?f_aNo=${article.f_aNo}">${article.f_title}</a>
							  			</th>
							  			<td>${article.f_date}</td>
						  			</tr>
								</c:forEach>
							</c:when>
						</c:choose>
					</tbody>
				</table>
				<div style="text-align: center;">페이지 번호</div>
				<div>
					<button type="button" onclick="location.href='freewrite.html'" class="btn btn-dark">글쓰기</button>
				</div>
			</div>
		</div>
		<!-- 게시판 리스트 영역 종료 -->
	</section>
	<!-- 게시판 페이지 종료 -->


</body>
</html>
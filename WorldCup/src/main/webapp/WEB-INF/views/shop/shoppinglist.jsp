<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<head>
	<title>2022 카타르 월드컵</title>
	<meta charset="UTF-8">
</head>

<body>



	<!-- 상단 이미지 영역 시작 -->
	<section class="page-info-section set-bg" data-setbg="${contextPath}/resources/img/group3.jpg">
		<div class="pi-content">
			<div class="container">
				<div class="row">
					<div class="col-xl-5 col-lg-6 text-white">
						<h2 style="color: #fff; font-weight: bold;">쇼핑</h2>
						<p style="color: #fff; font-weight: bold; font-size: 20px;">월드컵 관련 용품들을 판매합니다. 수익금 일부는 꿈나무 육성을 위해 유소년 축구단에 기부됩니다.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 상단 이미지 영역 종료 -->

	
	<!-- 쇼핑 영역 시작 -->
	<section class="page-section recent-game-page spad">
		<section class="shop spad">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-3">
						<div class="shop__sidebar">
							<div class="sidebar__categories">
								<div class="section-title side1">
									<h4>Categories</h4>
								</div>
								<div class="categories__accordion">
									<div class="accordion" id="accordionExample">
										<div class="card">
											<div class="card-heading active">
												<a href="${contextPath}/shop.do" data-toggle="collapse" data-target="#collapseOne">상품보기</a>
											</div>
											<div id="collapseOne" class="collapse show" data-parent="#accordionExample">
												<div class="card-body">
													<ul>
														<li><a href="${contextPath}/shop.do?category=1">유니폼</a></li>
														<li><a href="${contextPath}/shop.do?category=2">축구화</a></li>
														<li><a href="${contextPath}/shop.do?category=3">패션잡화</a></li>
														<li><a href="${contextPath}/shop.do?category=4">악세사리</a></li>
													</ul>
												</div>
											</div>
										</div>
										<div class="card">
											<div class="card-heading active">
												<a data-toggle="collapse" data-target="#collapseOne">구매관련</a>
											</div>
										<div id="collapseOne" class="collapse" data-parent="#accordionExample">
											<div class="card-body">
												<ul>
													<li><a href="shop-cart.html">장바구니</a></li>
													<li><a href="checkout.html">구매페이지</a></li>
													<li><a href="inquirywrite.html">문의하기</a></li>
												</ul>
											</div>
										</div>
										</div>
									</div>
								</div>
							</div>                      
						</div>
					</div>
					<div class="col-lg-9 col-md-9">
							<div class="row">
								<c:forEach var="listItems" items="${articleList}">
									<div class="col-lg-4 col-md-6">
										<a href="${contextPath}/shop/shopDetail.do?iNum=${listItems.i_img}">
											<div class="product__item">
												<div class="product__item__pic set-bg" name="i_img" data-setbg="${contextPath}/resources/img/items/${listItems.i_img}1.png">	 
												</div>
												<div class="product__item__text">
													<h6>${listItems.i_name}</h6>
													<div class="product__price">${listItems.i_price}</div>
												</div>
											</div>
										</a>
									</div>
								</c:forEach>
								
								<c:choose>
									<c:when test="${category == null}">
										<div class="col-lg-12 text-center">
											<div class="pagination__option">
												<c:if test="${totArticles != null }">
									   					<c:forEach var="page" begin="1" end="${totArticles/9 +1}" step="1">
									   						<c:if test="${section > 1 && page == 1}">
									   							<a href="${contextPath}/shop.do?section=${section-1}&pageNum=${(section-1)*9+1}"> <i class="fa fa-angle-left"></i> </a>
									   						</c:if>
									   							<a href="${contextPath}/shop.do?section=${section}&pageNum=${page}">${(section-1)*9+page}</a>
									   						<c:if test="${page == 9}">
									   							<a href="${contextPath}/shop.do?section=${section+1}&pageNum=${section*9+1}"> <i class="fa fa-angle-right"></i> </a>
									   						</c:if>
									   					</c:forEach>
										   		</c:if>
											</div>
										</div>
									</c:when>
									<c:when test="${category != null}">
										<div class="col-lg-12 text-center">
											<div class="pagination__option">
												<c:if test="${totArticles != null }">
									   					<c:forEach var="page" begin="1" end="${totArticles/9 +1}" step="1">
									   						<c:if test="${section > 1 && page == 1}">
									   							<a href="${contextPath}/shop.do?category=${category}&section=${section-1}&pageNum=${(section-1)*9+1}"> <i class="fa fa-angle-left"></i> </a>
									   						</c:if>
									   							<a href="${contextPath}/shop.do?category=${category}&section=${section}&pageNum=${page}">${(section-1)*9+page}</a>
									   						<c:if test="${page == 9}">
									   							<a href="${contextPath}/shop.do?category=${category}&section=${section+1}&pageNum=${section*9+1}"> <i class="fa fa-angle-right"></i> </a>
									   						</c:if>
									   					</c:forEach>
										   		</c:if>
											</div>
										</div>
									</c:when>
								</c:choose>
								
							</div>
						</div>
					</div>
				</div>
		</section>
	</section>
	<!-- 쇼핑 영역 종료 -->


	<!-- 푸터 영역 상단 부분 시작 -->
	<section class="footer-top-section">
		<div class="container">
			
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-logo text-white">
						<img src="${contextPath}/resources/img/footerlogo4.png" class="footlogo" alt="">
						<p>Project Teams</p>
						<div class="inquiry" style="padding-left: 93px;">
							<a href="inquirywrite.html" style="cursor: pointer;">문의하기</a>
						</div>
					</div>
				</div>
			
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget mb-5 mb-md-0">
						<h4 class="fw-title">주요 기술 스택</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="${contextPath}/resources/img/stack/jsp.png"></div>
								<div class="lb-content">
									<div class="lb-date">JSP</div>
									<p>웹브라우저와 웹서버의 연결 작업</p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="${contextPath}/resources/img/stack/css3.png"></div>
								<div class="lb-content">
									<div class="lb-date">CSS</div>
									<p>웹페이지 정적인 부분 꾸미기</p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg" data-setbg="${contextPath}/resources/img/stack/javascript.png"></div>
								<div class="lb-content">
									<div class="lb-date">Javascript</div>
									<p>웹페이지 동적인 부분 꾸미기</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="footer-widget">
						<h4 class="fw-title">웹페이지 제작</h4>
						<div class="top-comment">
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="${contextPath}/resources/img/member/han.png"></div>
								<div class="tc-content">
									<p><a href="https://github.com/Hanbooyo" target="_blank">한부영</a>&nbsp;&nbsp;<span>feat</span><br> 경기일정 페이지 제작</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="${contextPath}/resources/img/member/kimsun.jpg"></div>
								<div class="tc-content">
									<p><a href="https://github.com/sunkang-kim" target="_blank">김선강</a>&nbsp;&nbsp;<span>feat</span><br> 경기일정 페이지 제작</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="${contextPath}/resources/img/member/park.jpg"></div>
								<div class="tc-content">
									<p><a href="https://github.com/shpark010" target="_blank">박성환</a>&nbsp;&nbsp;<span>feat</span><br>  하이라이트 페이지 제작</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg" data-setbg="${contextPath}/resources/img/member/kimdong.jpg"></div>
								<div class="tc-content">
									<p><a href="https://github.com/kl8315" target="_blank">김동욱</a>&nbsp;&nbsp;<span>feat</span><br>  메인페이지 제작</p>
									<div class="tc-date"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- 푸터 상단 부분 종료 -->

	<link rel="stylesheet" href="${contextPath}/resources/css/styleshop.css">

    </body>
</html>
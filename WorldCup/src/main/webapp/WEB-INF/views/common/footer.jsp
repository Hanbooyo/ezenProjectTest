<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>2022 카타르 월드컵</title>
<meta charset="UTF-8">
</head>
<body>
	<!-- 푸터 영역 상단 부분 시작 -->
	<section class="footer-top-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="footer-logo text-white">
						<img src="${contextPath}/resources/img/footerlogo4.png" class="footlogo"
							alt="">
						<p>Project Teams</p>
						<div class="inquiry">
							<a href="${contextPath}/views/shopping/inquirywrite.jsp"
								style="cursor: pointer;">문의하기</a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6">
					<div class="footer-widget mb-5 mb-md-0">
						<h4 class="fw-title">주요 기술 스택</h4>
						<div class="latest-blog">
							<div class="lb-item">
								<div class="lb-thumb set-bg"
									data-setbg="${contextPath}/resources/img/stack/jsp.png"></div>
								<div class="lb-content">
									<div class="lb-date">JSP</div>
									<p>웹브라우저와 웹서버의 연결 작업</p>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg"
									data-setbg="${contextPath}/resources/img/stack/css3.png"></div>
								<div class="lb-content">
									<div class="lb-date">CSS</div>
									<p>웹페이지 정적인 부분 꾸미기</p>
									<a href="#" class="lb-author">By Admin</a>
								</div>
							</div>
							<div class="lb-item">
								<div class="lb-thumb set-bg"
									data-setbg="${contextPath}/resources/img/stack/javascript.png"></div>
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
								<div class="tc-thumb set-bg"
									data-setbg="${contextPath}/resources/img/member/han.png"></div>
								<div class="tc-content">
									<p>
										<a href="https://github.com/Hanbooyo" target="_blank">한부영</a>&nbsp;&nbsp;<span>feat</span><br>
										경기일정 페이지 제작
									</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg"
									data-setbg="${contextPath}/resources/img/member/kimsun.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="https://github.com/sunkang-kim" target="_blank">김선강</a>&nbsp;&nbsp;<span>feat</span><br>
										경기일정 페이지 제작
									</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg"
									data-setbg="${contextPath}/resources/img/member/park.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="https://github.com/shpark010" target="_blank">박성환</a>&nbsp;&nbsp;<span>feat</span><br>
										하이라이트 페이지 제작
									</p>
									<div class="tc-date"></div>
								</div>
							</div>
							<div class="tc-item">
								<div class="tc-thumb set-bg"
									data-setbg="${contextPath}/resources/img/member/kimdong.jpg"></div>
								<div class="tc-content">
									<p>
										<a href="https://github.com/kl8315" target="_blank">김동욱</a>&nbsp;&nbsp;<span>feat</span><br>
										메인페이지 제작
									</p>
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


	<!-- 푸터 영역 하단 부분 시작 -->
	<footer class="footer-section">
		<div class="container">
			<ul class="footer-menu">
				<li><a href="${contextPath}/views/index.jsp">홈</a></li>
				<li><a href="${contextPath}/views/match/match.jsp">경기</a></li>
				<li><a href="${contextPath}/views/video.jsp">영상</a></li>
				<li><a href="${contextPath}/views/fboard/freeboard.jsp">커뮤니티</a></li>
				<li><a href="${contextPath}/views/shopping/shopping.jsp">쇼핑</a></li>
			</ul>
			<p class="copyright">
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				Copyright &copy;
				<script>
					document.write(new Date().getFullYear());
				</script>
				All rights reserved <i class="fa fa-heart-o" aria-hidden="true"></i>
				by <a href="https://colorlib.com" target="_blank">QWERTY</a>
				<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			</p>
		</div>
	</footer>
	<!-- 푸터 부분 종료 -->
</body>
</html>
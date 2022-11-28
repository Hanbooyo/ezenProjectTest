<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Game Warrior Template</title>
	<meta charset="UTF-8">

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,400i,500,500i,700,700i" rel="stylesheet">

	<link rel="stylesheet" href="${contextPath}/resources/css/sports.css"/>


</head>
<body>
	<!-- Page section -->
	<section class="page-section single-blog-page spad">
		<div class="container">
			<div class="row">
				<div class="flex_left">
                    <div class="fixture_section">
                        <div class="fixture_sticky_area">
                            <div class="match_list">
                                <div class="match_view_port">
                                    <ul class="list_ul">
                                    <c:forEach var="todayList" items="${todayList}">
                                        <li role="presentation" class="match_list_item" style="top : 0;">
                                            <a class="match_link" href="${contextPath}/match/matchInfo.do?matchnum=${todayList.matchnum}">
                                                <em class="match_status">경기종료</em>
                                                <p class="match_list_team">
                                                    <span class="match_flag"><img src="${contextPath}/resources/img/country/${todayList.home}.png" alt="logo" width="30" height="30"></span>
                                                    <span class="match_team">${todayList.home}</span>
                                                    <span class="match_score"></span>
                                                </p>
                                                <p class="match_list_team">
                                                    <span class="match_flag"><img src="${contextPath}/resources/img/country/${todayList.away}.png" alt="logo" width="30" height="30"></span>
                                                    <span class="match_team">${todayList.away}</span>
                                                    <span class="match_score"></span>
                                                </p>
                                            </a>
                                        </li> 
                                    </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<div class="flex_center">
					<div class="comments-area">
                        <div class="game_contents">
                            <div role="tabpanel" class="line_up_tap">
                                <div class="lineUp_comp">
                                    <div class="home_area">
                                        <span class="line_logo">
                                            <img src="${contextPath}/resources/img/country/${home}.png" alt="logo" width="30" height="30">
                                        </span>
                                        <span class="team_name">${home}</span>
                                        <span class="team_formation">${homeInfo.formation}</span>
                                    </div>
                                    <div class="away_area">
                                        <span class="line_logo">
                                            <img src="${contextPath}/resources/img/country/${away}.png" alt="logo" width="30" height="30">
                                        </span>
                                        <span class="team_name">${away}</span>
                                        <span class="team_formation">${awayInfo.formation}</span>
                                    </div>
                                    <div class="formation_area">
                                        <div class="center_circle"></div>
                                        <div class="lineUp_home">
                                            <i class="goal_box" aria-hidden="true">
                                                <span class="lineUp_box">
                                                    <span class="goal"></span>
                                                </span>
                                            </i> 				
                            				<div class="lineUp_line">
                                               	<c:forEach var="homeList" items="${homeList}" begin="0" end="0">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${homeList.p_birth} &#xa;소속 팀 : ${homeList.p_team}" style="background-color: ${homeInfo.color};">${homeList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${homeList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line_four"> 
                                               	<c:forEach var="homeList" items="${homeList}" begin="1" end="4" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${homeList.p_birth} &#xa;소속 팀 : ${homeList.p_team}" style="background-color: ${homeInfo.color};">${homeList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${homeList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line">
                                               	<c:forEach var="homeList" items="${homeList}" begin="5" end="5">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${homeList.p_birth} &#xa;소속 팀 : ${homeList.p_team}" style="background-color: ${homeInfo.color};">${homeList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${homeList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line_three">
                                               	<c:forEach var="homeList" items="${homeList}" begin="6" end="8" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${homeList.p_birth} &#xa;소속 팀 : ${homeList.p_team}" style="background-color: ${homeInfo.color};">${homeList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${homeList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line_two">
                                               	<c:forEach var="homeList" items="${homeList}" begin="9" end="10" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${homeList.p_birth} &#xa;소속 팀 : ${homeList.p_team}" style="background-color: ${homeInfo.color};">${homeList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${homeList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="lineUp_away">
                                            <i class="goal_box" aria-hidden="true">
                                                <span class="lineUp_box">
                                                    <span class="goal"></span>
                                                </span>
                                            </i>
                                            <div class="lineUp_line_two">
                                               	<c:forEach var="awayList" items="${awayList}" begin="9" end="10" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${awayList.p_birth} &#xa;소속 팀 : ${awayList.p_team}" style="background-color: ${awayInfo.color};">${awayList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${awayList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line_three">
                                               	<c:forEach var="awayList" items="${awayList}" begin="5" end="8" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${awayList.p_birth} &#xa;소속 팀 : ${awayList.p_team}" style="background-color: ${awayInfo.color};">${awayList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${awayList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line_four">
                                               	<c:forEach var="awayList" items="${awayList}" begin="1" end="4" step="1">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${awayList.p_birth} &#xa;소속 팀 : ${awayList.p_team}" style="background-color: ${awayInfo.color};">${awayList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${awayList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                            <div class="lineUp_line">
                                               	<c:forEach var="awayList" items="${awayList}" begin="0" end="0">
	                                                <div class="lineUp_player_wrap">
	                                                    <div class="lineUp_player">
	                                                        <span class="lineUp_number css-tooltip" data-tooltip="생년월일 : ${awayList.p_birth} &#xa;소속 팀 : ${awayList.p_team}" style="background-color: ${awayInfo.color};">${awayList.p_num}</span>
	                                                    </div>
	                                                    <span class="lineUp_name">${awayList.p_name}</span>
	                                                </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="center_line"></div>
                                    </div><!--faomation-->
                                </div>
                                <div class="subtitute_lineUp">
                                    <div class="subtitute_table_area">
                                        <div class="table_line"></div>
                                        <table class="subtitute_table">
                                            <thead>
                                                <th scope="col">
                                                    <div class="team_title">
                                                        <span class="team_logo"><img src="${contextPath}/resources/img/country/${home}.png" alt="국기" width="30" height="30"></span>
                                                        <span class="team_text">${home} 후보선수</span>
                                                    </div>
                                                </th>
                                                <th scope="col">
                                                    <div class="team_title">
                                                        <span class="team_logo"><img src="${contextPath}/resources/img/country/${away}.png" alt="국기" width="30" height="30"></span>
                                                        <span class="team_text">${away} 후보선수</span>
                                                    </div>
                                                </th>
                                            </thead>
                                            <tbody>
											<c:forEach var="homeList" items="${homeList}" varStatus="status" begin="11" end="22" step="1">
                                                <tr>
	                                                   <td>
	                                                        <div class="subtitute_player_item">
	                                                            <div class="subtitute_player_info">
	                                                                <span class="subtitute_player_name">${homeList.p_name}</span>
	                                                            </div>
                                                             	<div class="subtitution">
	                                                                <span class="subtitution_logo"></span>
	                                                                <span class="subtitution_name"></span>
	                                                                <span class="subtitution_time"></span>
                                                            	</div>
	                                                        </div>
	                                                    </td>


	                                                    <td>
	                                                        <div class="subtitute_player_item">
	                                                            <div class="subtitute_player_info">
	                                                                <span class="subtitute_player_name">${awayList[status.index].p_name}</span>
	                                                            </div>
																<div class="subtitution">
	                                                                <span class="subtitution_logo"></span>
	                                                                <span class="subtitution_name"></span>
	                                                                <span class="subtitution_time"></span>
                                                            	</div>
	                                                        </div>
	                                                    </td>   
                                                	</tr>                       
       	                               			 </c:forEach>               
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				</div>
				<!	-- sidebar -->
				<div class="flex_right">
					<!-- widget -->
					<div class="widget-item">
						<div class="cheer_area">
							<div class="cheer_box">
								<div class="cheer_vote">
									<div class="vote_home">
										<div class="vote_home_cover">
											<div class="cover_line"></div>
											<img class="cover_flag" src="${contextPath}/resources/img/country/${home}.png" alt="flag" width="50" height="50">
											<div class="vote_message">
												<div class="count">100</div>
											</div>
										</div>
									</div>
									<div class="vote_away">
										<div class="vote_away_cover">
											<div class="end">종료</div>
											<div class="cover_line"></div>
											<img class="cover_flag" src="${contextPath}/resources/img/country/${away}.png" alt="flag" width="50" height="50">
											<div class="vote_message">
												<div class="count">100</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div><!-- 투표 존 -->
					</div>
					<!-- widget -->
					<div class="widget-item">
						<h4 class="widget_title"></h4>
                            <div id="main">
                                <div id="chat">
                                  <!-- 채팅 메시지 영역 -->
                                </div>
                                <div>
                                  <input type="text" id="test" placeholder="메시지를 입력해주세요..">
                                  <button onclick="send()">전송</button>
                                </div>
                            </div>
					</div>


				</div>
			</div>
		</div>
	</section>
	<!-- Page section end -->


	<!--====== Javascripts & Jquery ======-->
	<script src="${contextPath}/resources/js/jquery-3.6.0.min.js"></script>
	<script src="${contextPath}/resources/js/vote.js"></script>
    </body>
</html>
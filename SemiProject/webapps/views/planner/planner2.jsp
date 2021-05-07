<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.touchtrip.Allplanner.map.model.vo.MapData"%>

<%
MapData[] mapList = (MapData[]) request.getAttribute("mapList");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>TouchTrip > 플래너</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="/planner/assets/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="/planner/assets/css/planner2.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<!-- 지도 -->
<link href='/planner/assets/fullcalendar/lib/main.css' rel='stylesheet' />
<script src='/planner/assets/fullcalendar/lib/main.js'></script>
<script>
<!-- 지도 세부 설정 -->
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialDate : '2020-09-12',
			editable : true,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [ {
				title : 'All Day Event',
				start : '2020-09-01'
			}, {
				title : 'Long Event',
				start : '2020-09-07',
				end : '2020-09-10'
			}, {
				groupId : 999,
				title : 'Repeating Event',
				start : '2020-09-09T16:00:00'
			}, {
				groupId : 999,
				title : 'Repeating Event',
				start : '2020-09-16T16:00:00'
			}, {
				title : 'Conference',
				start : '2020-09-11',
				end : '2020-09-13'
			}, {
				title : 'Meeting',
				start : '2020-09-12T10:30:00',
				end : '2020-09-12T12:30:00'
			}, {
				title : 'Lunch',
				start : '2020-09-12T12:00:00'
			}, {
				title : 'Meeting',
				start : '2020-09-12T14:30:00'
			}, {
				title : 'Happy Hour',
				start : '2020-09-12T17:30:00'
			}, {
				title : 'Dinner',
				start : '2020-09-12T20:00:00'
			}, {
				title : 'Birthday Party',
				start : '2020-09-13T07:00:00'
			}, {
				title : 'Click for Google',
				url : 'http://google.com/',
				start : '2020-09-28'
			} ]
		});

		calendar.render();
	});
</script>

<!--  지도 api 끝 -->

<!-- font url -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;

<!--
header css --> /* Global */ :root {
	-text-color: #f0f4f5;
	-background-color: #263343;
	-accent-color: #263343;
}

* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: 'Source Sans Pro';
}

/* 헤더 메뉴들 */
.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 8px 12px;
	height: 60px;
	background-color: #263343;
}

/* 로고 아이콘 */
.navbar__logo {
	font-size: 24px;
	color: var(- -text-color);
	font-family: 'Permanent Marker', cursive;
	margin-top: -17px;
}

.navbar__logo i {
	color: rgb(156, 112, 192);
}

.navbar__logo a:hover {
	color: #ffffff;
	text-decoration: none;
}

/* navbar 메뉴 */
.navbar__menu {
	display: flex;
	padding-left: 0;
	list-style: none;
	margin-left: -50px;
}

/* ----------- 검색창 ---------------*/
/* 검색창 */
#content {
	position: absolute;
	height: 25px;
	width: 150px;
	position: absolute;
	margin-top: 46px;
	right: 10px;
	transform: translate(-50%, -50%);
}

#content.on {
	-webkit-animation-name: in-out;
	animation-name: in-out;
	-webkit-animation-duration: 0.7s;
	animation-duration: 0.7s;
	-webkit-animation-timing-function: linear;
	animation-timing-function: linear;
	-webkit-animation-iteration-count: 1;
	animation-iteration-count: 1;
}

/* 돋보기 원 */
#content>.input {
	box-sizing: border-box;
	width: 23px;
	height: 23px;
	border: 3px solid #ffffff;
	border-radius: 50%;
	background: none;
	color: #fff;
	font-size: 16px;
	font-weight: 400;
	outline: 0;
	-webkit-transition: width 0.4s ease-in-out, border-radius 0.8s
		ease-in-out, padding 0.2s;
	transition: width 0.4s ease-in-out, border-radius 0.8s ease-in-out,
		padding 0.2s;
	-webkit-transition-delay: 0.4s;
	transition-delay: 0.4s;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
	position: absolute;
	left: 132px;
}

/* 막대기 (돋보기 막대, 엑스 막대) */
.search {
	background: none;
	position: absolute;
	top: 0px;
	left: -2px;
	height: 15px;
	width: 15px;
	padding: 0;
	border-radius: 100%;
	outline: 0;
	border: 0;
	color: inherit;
	cursor: pointer;
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
}

/* 돋보기 막대 */
.search:before {
	content: "";
	position: absolute;
	width: 10px;
	height: 3px;
	background-color: #fff;
	-webkit-transform: rotate(30deg);
	-ms-transform: rotate(30deg);
	transform: rotate(30deg);
	margin-top: 5px;
	margin-left: 140px;
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
}

/* 검색 박스 닫기 버튼*/
.close {
	-webkit-transition: 0.4s ease-in-out;
	transition: 0.4s ease-in-out;
	-webkit-transition-delay: 0.4s;
	transition-delay: 0.4s;
}

.close:before {
	content: "";
	position: absolute;
	width: 18px;
	height: 3px;
	margin-top: -1px;
	margin-left: 117px;
	background-color: #fff;
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	-webkit-transition: 0.2s ease-in-out;
	transition: 0.2s ease-in-out;
}

.close:after {
	content: "";
	position: absolute;
	width: 18px;
	height: 3px;
	background-color: #fff;
	margin-top: -1px;
	margin-left: 117px;
	cursor: pointer;
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

/* 검색 박스 내부 영역 */
#content>.square {
	box-sizing: border-box;
	padding: 0 40px 0 10px;
	width: 150px;
	height: 30px;
	border: 2px solid #ffffff;
	border-radius: 0;
	background: none;
	color: #fff;
	font-family: 'Source Sans Pro';
	font-size: 14px;
	font-weight: 400;
	outline: 0;
	-webkit-transition: width 0.4s ease-in-out, border-radius 0.4s
		ease-in-out, padding 0.2s;
	transition: width 0.4s ease-in-out, border-radius 0.4s ease-in-out,
		padding 0.2s;
	-webkit-transition-delay: 0.4s, 0s, 0.4s;
	transition-delay: 0.4s, 0s, 0.4s;
	-webkit-transform: translate(-100%, -50%);
	-ms-transform: translate(-100%, -50%);
	transform: translate(-100%, -50%);
}

/* --------------------------*/

/* 메뉴 요소들 */
.navbar__menu li {
	padding: 8px 12px;
}

.navbar__menu li:hover {
	background-color: var(- -accent-color);
	border-radius: 4px;
}

.navbar__menu a:hover {
	color: #ffffff;
	text-decoration: none;
}

.navbar__icons {
	list-style: none;
	color: var(- -text-color);
	display: flex;
	padding-left: 0;
	margin-top: 1px;
}

/* Icons */
.navbar__icons li {
	padding: 8px 12px;
}

.navbar__icons a:hover {
	color: #ffffff;
	text-decoration: none;
}

/* footer */

/* footer의 touchtrip */
.about h3 {
	font-family: 'Permanent Marker', cursive;
	letter-spacing: 3px;
	margin-top: 22px;
	font-size: 30px;
}

.touch {
	text-align: left;
}

.trip {
	position: relative;
	left: 25px;
	bottom: 20px;
}

/* 부산 여행의 모든 것 */
.sub {
	font-size: 30px;
	font-family: 'Nanum Brush Script', cursive;
	margin-top: -25px;
}

article {
	margin-top: 40px;
}

.about {
	color: rgba(104, 104, 104, 0.884);
	text-align: center;
}

.name {
	font-size: 12px;
}

.end {
	font-size: 12px;
}

.list-icon {
	font-size: 14px;
}

.go-to-top {
	background: black;
	float: right;
}

.bottom {
	color: lightgray;
	text-align: center;
}

article div a {
	color: red;
}
</style>

</head>
<body>
	<header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<i class="fas fa-route"></i> <a href="/planner/checkMain.do"
					style="text-decoration: none; color: white;">TouchTrip</a>
			</div>
			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a href="/planner/checkMain.do"
					style="text-decoration: none; color: white;">Home</a></li>
				<li><a
					href="http://localhost:8088/planner/views/planner/planner1.jsp"
					style="text-decoration: none; color: white;">플래너</a></li>
				<li><a href="/planner/list.bo"
					style="text-decoration: none; color: white;">커뮤니티</a></li>
				<li><a
					href="http://localhost:8088/planner/views/member/login.jsp"
					style="text-decoration: none; color: white;">Login / Join</a></li>
				<li><a href="/planner/countMember.ad"
					style="text-decoration: none; color: white;">관리자 페이지</a></li>
				<li><a
					href="http://localhost:8088/planner/views/myPage/myPage.jsp"
					style="text-decoration: none; color: white;">마이페이지</a></li>
			</ul>

			<!-- 검색창 -->
			<div id="content">
				<input type="text" name="input" class="input" id="search-input">
				<button type="reset" class="search" id="search-btn"></button>
			</div>

			<!-- 인스타, 페이스북 아이콘 -->
			<ul class="navbar__icons">
				<li><a href="http://www.instagram.com/touchtrip_official"
					style="text-decoration: none; color: white;"><i
						class="fab fa-instagram"></i></a></li>
				<li><i class="fab fa-facebook-f" style="text-decoration: none; color: white;"></i></li>
			</ul>
	</header>
	<!-- header 끝 -->

	<div class="wrap1">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-5">

					<div class="p1">
						<div class="selectlist ">찜 목록</div>
						<!-- <div class="howmany">
          <button type="button" class="btn btn-primary btn-sm alone">혼자</button>
<button type="button" class="btn btn-primary btn-sm twice">둘이서</button>
<button type="button" class="btn btn-primary btn-sm third">셋이서</button>
<button type="button" class="btn btn-primary btn-sm forth">넷이서</button>
<button type="button" class="btn btn-primary btn-sm many">단체</button>
<button type="button" class="btn btn-primary btn-sm family">가족끼리</button>
</div>  -->


						<div class="searchspider">
							<%
							for (MapData saved : mapList) {
							%>
							<div class="spidersector">
								<div class="re_img">
									<img src="/planner/assets/images/<%=saved.getComp()%>.jpg"
										alt="Image" id="cartImgNo01">
								</div>
								<div class="re_text">
									<div class="re_text2 border border-primary">
										<p><%=saved.getComp()%></p>
										<p><%=saved.getAddress()%></p>
										<p><%=saved.getPhone()%></p>
									</div>
									<div>
										<button type="submit" class="btn btn-outline-info re_button"
											id="moveToPlan">
											<span id="re_but_font">일정등록</span>
										</button>
										<button type="submit"
											class="btn btn-outline-danger re_button1" id="deletePlan">
											<span id="re_but_font">일정삭제</span>
										</button>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>


				<!-- 우측 달력 -->

				<div class="col-md-5">
					<div class="p2">
						<!-- 달력API -->
						<div id='calendar'></div>

						<!-- 달력API 끝-->
						<!--  날짜와 일정 매칭 -->
						<div class="planschedule">
							<div class="plandetail">
								<span>세부 일정 계획</span>
							</div>
							<div class="finalplan">

								<table class="table detailplan">
									<thead class="thead-light">
										<tr>
											<th scope="col">날짜</th>
											<th scope="col" id="colmoney">예상금액</th>
											<th scope="col">세부내용</th>
											<th scope="col" id="colcheck"></th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">저장하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>
										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">등록하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>

										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">등록하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>

									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- footer -->
	<footer class="footer">
		<div class="top">
			<div class="container">
				<div class="row" style="margin-left: auto; margin-right: auto;">

					<article class="col-md-2 col-sm-2">
						<!-- TouchTrip 타이틀 -->
						<div class="about title">
							<h3 class="touch">Touch</h3>
							<h3 class="trip">Trip</h3>
						</div>
					</article>

					<article class="col-md-8 col-sm-10">
						<!-- 페이지 주제 -->
						<div class="about content">
							<p class="sub">"부산 여행의 모든 것"</p>
							<!-- 이름 및 환불규정, 개인정보취급방침 -->
							<p class="name">
								KH정보교육원&nbsp;|&nbsp;대표자:
								유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;강지원&nbsp;곽민지<br />
								<a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a
									href="privacy.html">개인정보취급방침</a>
							</p>
							<!-- 주소 및 이메일 -->
							<div class="list-icon">
								<div>
									&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시
									강남구 테헤란로14길 6 남도빌딩
								</div>

								<div>
									<i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;touchtrip@gmail.com
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

		<div class="bottom">
			<div class="container">
				<div class="row" style="margin-left: auto; margin-right: auto;">
					<div class="col-sm-6 copyright text-center-xs"
						style="margin: 0 auto;">
						<p>
							<span>KH정보교육원</span> Made by Yeojinjok</a> <i class="fa fa-copyright"></i>
							2021
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 맨 위로 스크롤 버튼 -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="http://localhost:8088/planner/assets/images/up.png" alt="Top"
			width="30px" height="30px"></a>
	</footer>

	<!-- 스크롤 효과 -->
	<script>
		var $target = $('.scroll');
		$target.on('click', function() {
			$('html, body').animate({
				'scrollTop' : 0
			}, 200);
			return false;
		});
	</script>

	<!-- footer 끝 -->

	<!--  
	
	<script>
	$('#moveToPlan').on('click', function(){
		
		$.ajax({
			url : '/planner/moveToPlan.pl',
			data : mapData,
			success : function(data) {
				console.log(data);
			}
		});
		
	});
	
	
	</script>
	
	-->

</body>
</html>
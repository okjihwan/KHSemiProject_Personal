<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="http://localhost:8088/planner/assets/js/jquery-3.6.0.min.js"></script>

<!-- 검색창 디자인 -->
<script
	src="http://localhost:8088/planner/assets/js/header_search_box.js"
	defer></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<!-- header, footer -->
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/header.css" />
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/footer.css" />
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<style>
/* font url */
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;
</style>

</head>

<body>
	<header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<i class="fas fa-route"></i> <a
					href="/planner/checkMain.do">TouchTrip</a>
			</div>
			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a
					href="/planner/checkMain.do">Home</a></li>
				<li><a href="http://localhost:8088/planner/views/planner/planner1.jsp">플래너</a></li>
				<li><a
					href="/planner/list.bo">커뮤니티</a></li>
				<li><a
					href="http://localhost:8088/planner/views/member/login.jsp">Login
						/ Join</a></li>
				<li><a
					href="/planner/countMember.ad">관리자
						페이지</a></li>
				<li><a
					href="http://localhost:8088/planner/views/myPage/myPage.jsp">마이페이지</a></li>
			</ul>

			<!-- 검색창 -->
			<div id="content">
				<input type="text" name="input" class="input" id="search-input">
				<button type="reset" class="search" id="search-btn"></button>
			</div>

			<!-- 인스타, 페이스북 아이콘 -->
			<ul class="navbar__icons">
				<li><a href="http://www.instagram.com/touchtrip_official"><i
						class="fab fa-instagram"></i></a></li>
				<li><i class="fab fa-facebook-f"></i></li>
			</ul>
	</header>
	<!-- header 끝 -->


</body>

</html>
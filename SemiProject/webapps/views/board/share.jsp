<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.touchtrip.board.model.vo.*,  java.util.*" %>
<%-- <%
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	
	int st = pi.getStartPage();
	int ed = pi.getEndPage();
	int mx = pi.getMaxPage();
	int limit = pi.getLimit();
	int listCount = pi.getListCount();
	int cur = pi.getCurrentPage();
%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공유 목록</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="/planner/assets/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/planner/assets/css/community.css">
    <link rel="stylesheet" href="/planner/assets/css/header.css" />
    <link rel="stylesheet" href="/planner/assets/css/footer.css">

    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>

    <!-- font url -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');
    </style>

    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
    <header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<i class="fas fa-route" aria-hidden="true"></i> <a href="">TouchTrip</a>
			</div>
			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a href="../main/mainPage.jsp">Home</a></li>
				<li><a href="">플래너</a></li>
				<li><a href="/planner/list.bo">커뮤니티</a></li>
				<li><a href="">예약</a></li>
				<li><a href="../member/login.jsp">Login</a></li>
			</ul>

			<!-- 검색창 -->
			<div id="content">
				<input type="text" name="input" class="input" id="search-input">
				<button type="reset" class="search" id="search-btn"></button>
			</div>

			<!-- 인스타, 페이스북 아이콘 -->
			<ul class="navbar__icons">
				<li><a href="http://www.instagram.com/touchtrip_official"><i
						class="fab fa-instagram" aria-hidden="true"></i></a></li>
				<li><i class="fab fa-facebook-f" aria-hidden="true"></i></li>
			</ul>
		</nav>
	</header>

    <section style="margin-left: 130px;">
        <div class="container">
            <div class="row firstContent">
                <div class="col-10">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="list-group list-group-flush">
                            <li class="list-group-item">
								<a href="community.jsp">자유게시판</a> &nbsp;&nbsp;
                                <a href="share.jsp">공유게시판</a> &nbsp;&nbsp;
                                <a href="review.jsp">리뷰게시판</a> &nbsp;&nbsp;
                            </li>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row secondContent">
                <div class="col-10">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            공유 목록
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row secondContent">
                <div class="col-10">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            공유게시판
                        </div>
                        <div class="list-group list-group-flush">
                           <div class="card" >
                           		<br>
                           		<div>
                           		&nbsp;&nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;">
                                </div>
                                <br>
                                <div>
                                &nbsp;&nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;"> &nbsp;&nbsp;&nbsp;
	                                <img src="/planner/assets/images/부산1.jpg" class="card-img-top" alt="..."
	                                style="width: 200px; height: 150px;">
                               	</div>
                            </div>
                        </div>
                    </div>
					<%-- <div class="pagingArea" align="center">
			
						<button onclick="location.href='/planner/list.bo?currentPage=1'">
							&lt;&lt;
						</button>
						
						<% if (cur <= 1) { %>
							<button disabled> &lt; </button>
						<% } else { %>
							<button onclick="location.href='/planner/list.bo?currentPage=<%= cur - 1 %>'"> &lt;</button>
						<% } %>
						
						<% for(int p = st ; p <= ed ; p++)  { %>
						
							<% if( p == cur) { %>
								<button disabled> <%= p %> </button>
							<% } else { %>
								<button onclick="location.href='/planner/list.bo?currentPage=<%= p %>'"> <%= p %> </button>
							<% } %>
						<% } %>
						
						<% if (cur >= mx) { %>
							<button disabled> &gt; </button>
						<% } else { %>
							<button onclick="location.href='/planner/list.bo?currentPage=<%= cur + 1 %>'"> &gt;</button>
						<% } %>
						
						<button onclick="location.href='/planner/list.bo?currentPage=<%= mx %>'">
							&gt;&gt;
						</button>
			                    
                	</div> --%>
		</div>
                
    </section>

    <footer class="footer">
        <div class="top">
            <div class="container">
                <div class="row">

                    <article class="col-md-2 col-sm-2">
                        <div class="about title">
                            <h3 class="touch">Touch</h3>
                            <h3 class="trip">Trip</h3>
                        </div>
                    </article>

                    <article class="col-md-8 col-sm-10">
                        <div class="about content">
                            <p class="sub">"부산 여행의 모든 것"</p>
                            <p class="name">
                                KH정보교육원&nbsp;|&nbsp;대표자:
                                유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;강지원&nbsp;곽민지<br />
                                <a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a href="privacy.html">개인정보취급방침</a>
                            </p>
                            <div class="list-icon">
                                <div>&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시 강남구 테헤란로14길 6 남도빌딩
                                </div>

                                <div><i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;touchtrip@gmail.com</div>
                            </div>
                        </div>
                    </article>

                </div>
            </div>
        </div>

        <div class="bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 copyright text-center-xs" style="margin: 0 auto;">
                        <p><span>KH정보교육원</span> Made by Yeojinjok</a> <i class="fa fa-copyright"></i> 2021</p>
                    </div>
                </div>
            </div>
        </div>

        <a href="#" style="position:fixed; bottom: 30px; right: 30px;"><img src="/planner/assets/images/up.png" alt="Top"
                width="30px" height="30px"></a>
    </footer>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="com.touchtrip.board.model.vo.*, java.util.*, com.touchtrip.member.model.vo.*"%>
<!-- com.touchtrip.boardComment.model.vo.* -->
<%
Member m = (Member) session.getAttribute("member");
// Object-->Board
Board b = (Board) request.getAttribute("board"); // 서블릿(서버)이 보낸 "board" 받아오기
%>
<!-- ArrayList<BoardComment> clist = (ArrayList<BoardComment>) request.getAttribute("clist"); -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="/planner/assets/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="/planner/assets/css/community.css">
<link rel="stylesheet" href="/planner/assets/css/header.css" />
<link rel="stylesheet" href="/planner/assets/css/footer.css">

<script
	src="http://localhost:8088/planner/assets/js/header_search_box.js"
	defer></script>

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<!-- font url -->
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;
</style>

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<!-- include summernote css/js -->
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
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
				<li><a href="/planner/checkMain.do">Home</a></li>
				<li><a
					href="http://localhost:8088/planner/views/planner/planner1.jsp">플래너</a></li>
				<li><a href="/planner/list.bo">커뮤니티</a></li>
				<li><a
					href="http://localhost:8088/planner/views/member/login.jsp">Login
						/ Join</a></li>
				<li><a href="/planner/countMember.ad">관리자 페이지</a></li>
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
						class="fab fa-instagram" aria-hidden="true"></i></a></li>
				<li><i class="fab fa-facebook-f" aria-hidden="true"></i></li>
			</ul>
		</nav>
	</header>

	<section style="margin-left: 180px;">
		<div class="container">
			<div class="row firstContent">
				<div class="col-10">
					<div class="card setCardLine" style="width: 100%;">
						<div class="list-group list-group-flush">
							<li class="list-group-item"><a href="/planner/list.bo">자유게시판</a>
								&nbsp;&nbsp; <a href="share.jsp">공유게시판</a> &nbsp;&nbsp; <a
								href="review.jsp">리뷰게시판</a> &nbsp;&nbsp;</li>
						</div>
					</div>
				</div>
			</div>

			<div class="row secondContent">
				<div class="col-10">
					<div class="card setCardLine" style="width: 100%;">
						<div class="card-header">조회한 게시판</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row secondContent">
				<div class="col-10">
					<form action="/planner/insert.bo" method="post"
						enctype="multipart/form-data">
						<div class="card setCardLine" style="width: 100%;">
							<div class="card-header">
								<span> [<%=((b.getBtype() == 1)
		? "공지사항"
		: (b.getBtype() == 2)
				? "커뮤니티"
				: (b.getBtype() == 3) ? "묻답" : (b.getBtype() == 4) ? "플래너공유" : (b.getBtype() == 5) ? "포토리뷰" : "한줄리뷰")%>]
									&nbsp; 제목 &nbsp; : &nbsp; <%=b.getBtitle()%>
								</span> <span> <span class="writeDate" style="float: right;">작성일
										: <%=b.getBdate()%> || * <%=b.getBcount()%></span>
								</span><br>
								<%-- 파일이 null이 아니면서 파일 이름이 길이가 0보다 크다면(파일이 있다면) --%>
								<%
								if (b.getBoardfile() != null && b.getBoardfile().length() > 0) {
								%>
								<small>파일 : <a
									href="/planner/resources/boardUploadFiles/<%=b.getBoardfile()%>"
									style="color: black;" download> <%=b.getBoardfile()%></a>
								</small>
								<%
								}
								%>
								<span class="writeName" style="float: right;">작성자 : <%=b.getBwriter()%></span>
							</div>

							<div class="list-group list-group-flush">
								<li class="list-group-item" style="height: 500px;"><%=b.getBcontent()%>
								</li>
							</div>
						</div>
					</form>
					<br>
					<div align="center">
						<button class="btn btn-light" onclick="goSelectList();">
							목록으로</button>
						<%
						if (b.getBwriter().equals(m.getNickName())) {
						%>
						<button class="btn btn-dark" onclick="goUpdatePage();">
							수정하기</button>
						<%
						}
						%>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script>
		function goSelectList() {
			location.href = '/planner/list.bo';
		}

		function goUpdatePage() {
			location.href = '/planner/updateView.bo?bno=' +
	<%=b.getBno()%>
		;
		}
	</script>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>












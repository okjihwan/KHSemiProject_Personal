<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.touchtrip.member.model.vo.*, com.touchtrip.board.model.vo.*, java.sql.Date"%>
<%
	Member m = (Member)session.getAttribute("member");
	Board b = (Board)request.getAttribute("board");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정하기</title>
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

	<!-- include summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
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
				<li><a href="/planer/list.bo">커뮤니티</a></li>
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

    <section style="margin-left: 180px;">
        <div class="container">
            <div class="row firstContent">
                <div class="col-10">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="list-group list-group-flush">
                            <li class="list-group-item">
								<a href="/planner/list.bo">자유게시판</a> &nbsp;&nbsp;
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
                            게시판 수정하기
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<div class="container">
			<div class="row secondContent">
				<div class="col-10">
					<form action="/planner/update.bo" method="post" enctype="multipart/form-data">
					<input type="hidden" name="bno" value="<%= b.getBno() %>" />
						<div class="card setCardLine" style="width: 100%;">
							<div class="card-header">
								<span>
	                                <select id="btype" name="type" class="sel" style="height: 30px;">
	                                    <option value="<%= b.getBtype() %>"> <%= ((b.getBtype() == 1) ? "공지사항" : (b.getBtype() == 2) ? "커뮤니티" 
                            			   : (b.getBtype() == 3) ? "묻답" : (b.getBtype() == 4) ? "플래너공유"
                            			   : (b.getBtype() == 5) ? "포토리뷰" : "한줄리뷰") %>
                            			</option>
                            			<option></option>
	                                    <option value="1">공지사항</option>
	                                    <option value="2">커뮤니티</option>
	                                    <option value="3">묻답</option>
	                                    <option value="4">플래너공유</option>
	                                    <option value="5">포토리뷰</option>
	                                    <option value="6">한줄리뷰</option>
	                                </select>
	                                <span class="writeDate" style="float: right;">작성일 : <%= b.getBdate() %></span>
	                                <br><br>
	                            </span>
	                            
	                            <div>제목 : <input type="text" name="btitle" style="width: 400px; height:30px;" value="<%= b.getBtitle() %>">
		                            <span class="writeName" style="float: right;">작성자 : <%= m.getNickName() %>
		                            	<input type="hidden" name="bwriter" value="<%= m.getNickName() %>">
		                            </span><br><br>
		                            <% if( b.getBoardfile() != null) { %>
		                            <small><b>Old File : </b>
		                            	<a href="/planner/resources/boardUploadFiles/<%= b.getBoardfile() %>" style="color: black;">
		                            	<%= b.getBoardfile() %></a>
		                            <% } %>
		                           
		                            <input type="file" name="file" id="file" style="float: right;" value="<%= b.getBoardfile() %>"> 
	                            	<b style="float: right;"> New File : &nbsp;</b>
	                            	</small>
		                        </div>                          
							</div>
							
							<div class="list-group list-group-flush">
	                            <li class="list-group-item" style="height: 400px; resize:none;">
	                            	<textarea id="summernote" name="bcontent">
	                            	<%= b.getBcontent() %>
	                            	</textarea>
	                            </li>
	                        </div>
						</div>
					<br>
					<div style="float: right;">
	                    <button type="reset" class="btn btn-light" onclick="deleteBoard();">글 삭제</button>&nbsp;			
						<button type="submit" class="btn btn-dark">수정 완료</button>
					</div>
					</form>	
				</div>
			</div>
		</div> 
    </section>
    
    <script>
         $('#summernote').summernote({
             height: 300,                 // 에디터 높이
             minHeight: null,             // 최소 높이
             maxHeight: null,             // 최대 높이
             focus: true,                 // 에디터 로딩후 포커스를 맞출지 여부
             
             placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
         });
         
         $(function(){
        	$('.writeDate').text('작성일 : ' + getToday()); 
         });
         
         function getToday(){
       	    var date = new Date();
       	    var year = date.getFullYear();
       	    var month = ("0" + (1 + date.getMonth())).slice(-2);
       	    var day = ("0" + date.getDate()).slice(-2);

       	    return year + "-" + month + "-" + day;
        }
         
         function deleteBoard(){
        	 var bno ='<%= b.getBno() %>';
        	 
        	 location.href = '/planner/delete.bo?bno=' + bno;
         }
    </script>

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

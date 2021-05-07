<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.touchtrip.member.model.vo.*, java.sql.Date"%>
<%
Member m = (Member) session.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성하기</title>
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
                            게시판 작성하기
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<div class="container">
			<div class="row secondContent">
				<div class="col-10">
					<form action="/planner/insert.bo" method="post" enctype="multipart/form-data">
						<div class="card setCardLine" style="width: 100%;">
							<div class="card-header">
								<span>
	                                <select id="btype" name="type" class="sel" style="height: 30px;">
	                                    <option selected>타입을 선택 해주세요.</option>
	                                    <option></option>
	                                    <option value="1">공지사항</option>
	                                    <option value="2">커뮤니티</option>
	                                    <option value="3">묻답</option>
	                                    <option value="4">플래너공유</option>
	                                    <option value="5">포토리뷰</option>
	                                    <option value="6">한줄리뷰</option>
	                                </select>
	                                <span class="writeDate" style="float: right;">작성일 &nbsp; : </span>
	                                <br><br>
	                            </span>
	                            
	                            <div>제목 &nbsp; : &nbsp;&nbsp;&nbsp; <input type="text" name="btitle" style="width: 400px; height:30px;">
		                            <span class="writeName" style="float: right;">작성자 : <%= m.getNickName() %>
		                            	<input type="hidden" name="bwriter" value="<%= m.getNickName() %>">
		                            </span>
		                            <br><br>
		                            <small><input type="file" name="file" id="file"></small>
	                            </div>                          
							</div>
							
							<div class="list-group list-group-flush">
	                            <li class="list-group-item" style="height: 500px;">
	                            	<textarea id="summernote" name="bcontent"></textarea>
	                            </li>
	                        </div>
						</div>
					<br>
					<div style="float: right;">
					<!-- Button trigger modal -->
						<button type="reset" data-toggle="modal" data-target="#exampleModal" class="btn btn-light">작성 취소</button>&nbsp;
	                    <button type="submit" class="btn btn-dark">작성 완료</button>
					</div>
					
						<!-- Modal -->
						<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">작성 취소 전 확인</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						      	작성 취소 버튼을 누르셨습니다. <br><br>
						      	
						        작성하신 내용은 사라집니다. <br>
						        정말 작성을 취소하시겠습니까?
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="yesBtn();">네</button>
						        <button type="button" class="btn btn-info" data-dismiss="modal" onclick="noBtn();">아니요</button>
						      </div>
						    </div>
						  </div>
						</div>
					
					</form>	
				</div>
			</div>
		</div> 
    </section>
    
    <script>
         $('#summernote').summernote({
                height: 400,                 // 에디터 높이
                minHeight: 400,              // 최소 높이
                maxHeight: 400,              // 최대 높이
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
       
        function cancelBtn(){
             var result = window.confirm("작성을 취소하시겠습니까?");

             if(result) { 
            	 /* location.replace('/planner/list.bo'); */
            	 location.href='/planner/list.bo';
             	
             } else {
            	 alert("작성을 유지합니다.");
             }
        	 
         }
        
        function yesBtn(){
        	location.href='/planner/list.bo';
        }
        function noBtn(){
        	alert("작성을 유지합니다.");
        }
  
    </script>

    <%@ include file="../common/footer.jsp"%>
</body>
</html>
	
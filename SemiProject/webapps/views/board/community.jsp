<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.touchtrip.board.model.vo.*,  java.util.*, com.touchtrip.member.model.vo.*" %>
<%
	Member m = (Member)session.getAttribute("member");
	ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	
	int st = pi.getStartPage();
	int ed = pi.getEndPage();
	int mx = pi.getMaxPage();
	int limit = pi.getLimit();
	int listCount = pi.getListCount();
	int cur = pi.getCurrentPage();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커뮤니티 목록</title>
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
    <%@ include file="../common/header.jsp"%>

    <section style="margin-left: 100px;">
        <div class="container">
            <div class="row firstContent">
                <div class="col-11">
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
                <div class="col-11">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            글 목록
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container">
            <div class="row secondContent">
                <div class="col-6">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            자유게시판
                        </div>
                        <div class="list-group list-group-flush" id="listArea">
                            <% for(Board b : list) { %>
                            <% if (b.getBtype() == 1) { %>
                            <% } else { %>
                            <li class="list-group-item"><span id="<%= b.getBno() %>"> <%= b.getBno() %>. 
	                            </span><b>[<%= ((b.getBtype() == 1) ? "공지사항" : (b.getBtype() == 2) ? "커뮤니티" 
	                            			   : (b.getBtype() == 3) ? "묻답" : (b.getBtype() == 4) ? "플래너공유"
	                            			   : (b.getBtype() == 5) ? "포토리뷰" : "한줄리뷰") %>]</b><%= b.getBtitle() %><br>
	                            <small>작성자 : <%= b.getBwriter() %> | 작성일 : <%= b.getBdate() %> | 
	                            <% if(b.getBoardfile() != null) { %> @ <% } else { %> X <% } %> | *<%= b.getBcount() %></small>
                            </li>
                            <% } %>
                            <% } %>
                        </div>
                    </div>
                    <div>
                    	<% if ( m != null) { %>
                    	<br>
                   		<button type="button" class="btn btn-dark" style="float: right; background: black; width: 500px;"
                   		onclick="location.href='views/board/boardInsert.jsp'">작성하기</button>
                    </div>
                    <br><br>
                    
                    <script>
						$('#listArea li').on('mouseover', function(){
							$(this).parent().css({'cursor' : 'pointer'});
							
							
						}).on('click', function(){
							var bno = $(this).children().first().attr('id');
							console.log(bno);
							location.href = "/planner/selectOne.bo?bno=" + bno; // GET 방식
						});
					</script>
					<% } %>
						
                    
					<div class="pagingArea" align="center">
			
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
			                    
                	</div>
				</div>
                <div class="col-5">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            공지사항
                        </div>
                        
                        <div class="list-group list-group-flush" id="noticeArea">
                        	<% for(Board n : list) { %>
	                        	<% if (n.getBtype() == 1) { %>
	                            <li class="list-group-item">
	                            	<b id="<%= n.getBno() %>">[공지사항]</b> <%= n.getBtitle() %>
	                           		<small style="float: right;"> | <%= n.getBdate() %> | *<%= n.getBcount() %></small>
	                            </li>
                            	<% } else { %>
                            	<% } %>
                            <% } %>
                        </div>
                    </div>
                    
                    <script>
						$('#noticeArea li').on('mouseover', function(){
							$(this).parent().css({'cursor' : 'pointer'});
							
							
						}).on('click', function(){
							var bno = $(this).children().first().attr('id');
							console.log(bno);
							location.href = "/planner/selectOne.bo?bno=" + bno; // GET 방식
						});
					</script>

                    <div class="card setCardLine2" style="width: 100%;">
                        <div class="card-header">
                            자주하는 질문
                        </div>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[로그인 안내]</b>
                                    <span> 로그인이 되지 않아요.</span>
                                </a>
                                    <div class="answer">
                                    처음화면으로 돌아가셔서 로그인 재 시도 해주세요.<br>
                                    아이디 및 비밀번호는 대문자 소문자를 구별합니다.<br><br>
                                    
                                     <b>영어와 숫자는 혼용해서 사용해주세요.</b><br>
                                     	아아디는 최소 6자리<br>
                                     	비밀번호는 최소 10자리이상 입니다.<br>
                                     </b>
                                	</div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[회원탈퇴 안내]</b>
                                    <span> 회원을 탈퇴하고 싶어요.</span>
                                </a>
                                    <div class="answer">
                                    탈퇴 하시기전 한번 더 고민해보시고 결정해주세요.<br>
                                    부산을 여행하기 좋은 계획하기좋은 플래너입니다.<br><br>
                                    아래사항 참고 후 이메일로 안내도와드리겠습니다.<br>
                                    아이디, 비밀번호, 가입자성함 및 닉네임, 이메일을 <br>
                                    tt_busan@touchtrip.com로 보내주세요. 감사합니다.<br><br>
                                    
                                    <b>고객에 만족과 즐거운 여행을 제공하는<br>
                                    (주)트립터치가 되도록 노력하겠습니다.</b><br>
                                	</div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[이용 안내]</b> 
                                    <span> 홈페이지가 버벅거려요. </span>
                                </a>
                                    <div class="answer">
                                    트립터치 홈페이지를 다시 재 실행 해주세요.<br>
                                    새로고침 F5를 눌러주세요.<br><br>
                                    
                                    <b>이용에 불편을 드려 죄송합니다.</b><br>
                                    아래 고객센터를 통해서 연락부탁드립니다.
                                </div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[플래너 안내]</b> 
                                    <span> 플래너 사용 어떻게 하나요? </span>
                                </a>
                                    <div class="answer">
                                    플래너 > 지역(구) > 관심있는 맛집, 명소, 호텔 담기<br>
                                    원하시는 곳 다 담으시고 저장완료 버튼눌러주세요.<br><br>
                                    상세일정은 두 번째 플래너 페이지에서 정해주세요.<br>
                                    날짜 > 예산 및 내용 등 교통편 내용을 담아보세요.<br><br>
                                    
                                    <b>플래너를 친구들과 공유게시판에서 공유해보세요.</b>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[고객센터]</b> 
                                    <span> 1 : 1 질문 하고 싶습니다. </span>
                                </a>
                                    <div class="answer">
                                    안녕하세요.이용해주셔서 감사합니다.<br>
                                    부산을 여행하는 (주)트립터치입니다.<br>
                                    10:00-17:00 친절히 안내드리겠습니다.<br><br>
                                    <strong>직접 문의하기</strong><br>
                                    (번호) 051)-956-1004<br>
                                    (메일) tt_busan@touchtrip.com <br>
                                    (주소) 부산광역시 부산구 부산동 9길 99 (주)트립터치
                                	</div>
                            </li>
                        </div>
                    </div>
                </div>
            </div>
    </section>


    <script>
        $(".ask").on('click', function () {

            function slideDown(target) {
                slideUp();
                $(target).addClass('on').next().slideDown();
            }

            function slideUp() {
                $(".ask").removeClass('on').next().slideUp();
            };
            $(this).hasClass('on') ? slideUp() : slideDown($(this));
        });
    </script>


   <%@ include file="../common/footer.jsp"%>
</body>
</html>

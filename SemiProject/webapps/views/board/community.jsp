<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="../../assets/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../assets/css/community.css">
    <link rel="stylesheet" href="../../assets/css/header.css" />
    <link rel="stylesheet" href="../../assets/css/footer.css">

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
				<li><a href="../board/community.jsp">커뮤니티</a></li>
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


    <section>
        <div class="container">
            <div class="row firstContent">
                <div class="col">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="list-group list-group-flush">
                            <li class="list-group-item">
								<a href="">자유게시판</a> &nbsp;&nbsp;
                                <a href="">공유게시판</a> &nbsp;&nbsp;
                                <a href="review.jsp">리뷰게시판</a> &nbsp;&nbsp;
                            </li>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row secondContent">
                <div class="col">
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
                <div class="col-7">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            자유게시판
                        </div>
                        <div class="list-group list-group-flush">
                            <li class="list-group-item"><b>[일반]</b> 같이 여행 갈 사람 구해요~~ <br>
                                <small>작성자 : 닉네임1 | 작성일 : 2021-04-26 11:21 | 커뮤니티 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[플래너 공유]</b> 나만의 플래너 공유합니다<br>
                                <small>작성자 : 닉네임2 | 작성일 : 2021-04-26 11:17 | 커뮤니티 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[리뷰]</b> 여기 개꿀잼!<br>
                                <small>작성자 : 닉네임3 | 작성일 : 2021-04-26 10:55 | 리뷰 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[플래너 공유]</b> 제 플래너만 믿고 따라오세요<br>
                                <small>작성자 : 닉네임4 | 작성일 : 2021-04-26 10:47 | 커뮤니티 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[문의]</b> 플래너 짜는 법좀 알려주세요<br>
                                <small>작성자 : 닉네임5 | 작성일 : 2021-04-26 10:24 | 문의하기 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[문의]</b> 플래너 짜는 법좀 알려주세요<br>
                                <small>작성자 : 닉네임5 | 작성일 : 2021-04-26 10:24 | 문의하기 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[문의]</b> 플래너 짜는 법좀 알려주세요<br>
                                <small>작성자 : 닉네임5 | 작성일 : 2021-04-26 10:24 | 문의하기 게시판</small>
                            </li>
                            <li class="list-group-item"><b>[문의]</b> 플래너 짜는 법좀 알려주세요<br>
                                <small>작성자 : 닉네임5 | 작성일 : 2021-04-26 10:24 | 문의하기 게시판</small>
                            </li>
                        </div>
                    </div>

                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                        <li class="page-item"><a class="page-link" href="#">&lt;</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">4</a></li>
                        <li class="page-item"><a class="page-link" href="#">5</a></li>
                        <li class="page-item"><a class="page-link" href="#">6</a></li>
                        <li class="page-item"><a class="page-link" href="#">7</a></li>
                        <li class="page-item"><a class="page-link" href="#">8</a></li>
                        <li class="page-item"><a class="page-link" href="#">9</a></li>
                        <li class="page-item"><a class="page-link" href="#">10</a></li>
                        <li class="page-item"><a class="page-link" href="#">></a></li>
                        <li class="page-item"><a class="page-link" href="#">>></a></li>
                    </ul>
                </div>

                <div class="col-5">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            공지사항
                        </div>
                        <div class="list-group list-group-flush">
                            <li class="list-group-item"><b>[공지사항]</b> &nbsp; 이용 규칙 안내</li>
                            <li class="list-group-item"><b>[공지사항]</b> &nbsp; 플래너 이용 방법</li>
                            <li class="list-group-item"><b>[공지사항]</b> &nbsp; 공지사항</li>
                            <li class="list-group-item"><b>[공지사항]</b> &nbsp; 공지사항</li>
                        </div>
                    </div>

                    <div class="card setCardLine2" style="width: 100%;">
                        <div class="card-header">
                            자주하는 질문
                        </div>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[로그인 이용안내]</b> 
                                    <span> 로그인이 되지 않을때는 어떻게 하나요? </span>
                                </a>
                                    <div class="answer">
                                    로그인이 되지않는다면 아이디 및 비밀번호 찾기 먼저 시도 후<br>
                                    밑에 내용을 참고해서 1대1 문의를 해주시기 바랍니다. 감사합니다.<br>
                                    <strong>직접 문의하기</strong>
                                    (이메일) butcamp_qa@butcamp.com <br>
                                    (주소) 부산광역시 부산구 부산동 9길 99번지 (주)부트캠프 정보보호팀
                                </div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[로그인 이용안내]</b> 
                                    <span> 로그인이 되지 않을때는 어떻게 하나요? </span>
                                </a>
                                    <div class="answer">
                                    로그인이 되지않는다면 아이디 및 비밀번호 찾기 먼저 시도 후<br>
                                    밑에 내용을 참고해서 1대1 문의를 해주시기 바랍니다. 감사합니다.<br>
                                    <strong>직접 문의하기</strong>
                                    (이메일) butcamp_qa@butcamp.com <br>
                                    (주소) 부산광역시 부산구 부산동 9길 99번지 (주)부트캠프 정보보호팀
                                </div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[로그인 이용안내]</b> 
                                    <span> 로그인이 되지 않을때는 어떻게 하나요? </span>
                                </a>
                                    <div class="answer">
                                    로그인이 되지않는다면 아이디 및 비밀번호 찾기 먼저 시도 후<br>
                                    밑에 내용을 참고해서 1대1 문의를 해주시기 바랍니다. 감사합니다.<br>
                                    <strong>직접 문의하기</strong>
                                    (이메일) butcamp_qa@butcamp.com <br>
                                    (주소) 부산광역시 부산구 부산동 9길 99번지 (주)부트캠프 정보보호팀
                                </div>
                            </li>
                            <li class="list-group-item">
                                <a href="#0" class="ask">
                                    <b>[로그인 이용안내]</b> 
                                    <span> 로그인이 되지 않을때는 어떻게 하나요? </span>
                                </a>
                                    <div class="answer">
                                    로그인이 되지않는다면 아이디 및 비밀번호 찾기 먼저 시도 후<br>
                                    밑에 내용을 참고해서 1대1 문의를 해주시기 바랍니다. 감사합니다.<br>
                                    <strong>직접 문의하기</strong>
                                    (이메일) butcamp_qa@butcamp.com <br>
                                    (주소) 부산광역시 부산구 부산동 9길 99번지 (주)부트캠프 정보보호팀
                                </div>
                            </li>
                            <li class="list-group-item"><b>[문의하기]</b> 홈페이지가 이상해요</li>
                        </div>
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

        <a href="#" style="position:fixed; bottom: 30px; right: 30px;"><img src="../../assets/images/up.png" alt="Top"
                width="30px" height="30px"></a>
    </footer>


</body>
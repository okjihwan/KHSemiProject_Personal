<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
    <link rel="stylesheet" href="../../assets/css/community_review.css">
    <link rel="stylesheet" href="../../assets/css/header.css" />
    <link rel="stylesheet" href="../../assets/css/footer.css">

    <script src="../../assets/js/header_search_box.js" defer></script>
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
				<li><a href="../../board/community.jsp">커뮤니티</a></li>
				<li><a href="">예약</a></li>
				<li><a href="../../member/login.jsp">Login</a></li>
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
                                자유게시판 &nbsp;&nbsp; | &nbsp;&nbsp;
                                공유게시판 &nbsp;&nbsp; | &nbsp;&nbsp;
                                공지사항 &nbsp;&nbsp; | &nbsp;&nbsp;
                                문의하기 &nbsp;&nbsp; | &nbsp;&nbsp;
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
                <div class="col-5">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            포토 리뷰
                        </div>
                        <div class="list-group list-group-flush">
                            <li class="list-group-item"><div class="card-group cardFamous">
                                <div class="card">
                                    <img src="../../assets/images/부산1.jpg" class="card-img-top" alt="...">
                                </div>
                                <div class="card cardFamous">
                                    <img src="../../assets/images/부산2.jpg" class="card-img-top" alt="...">
                                </div>
                            </li>
                            <li class="list-group-item"><div class="card-group cardFamous">
                                <div class="card">
                                    <img src="../../assets/images/부산1.jpg" class="card-img-top" alt="...">
                                </div>
                                <div class="card cardFamous">
                                    <img src="../../assets/images/부산2.jpg" class="card-img-top" alt="...">
                                </div>
                            </li>
                        </div>
                    </div>
                </div>

                <div class="col-5">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="card-header">
                            리뷰
                        </div>
                        <div class="list-group list-group-flush">
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
                            <li class="list-group-item"><b>[해운대]</b> &nbsp; 재밌던데요?? &nbsp;&nbsp; <small>평점 - 5.0 / 4.9</small></li>
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
                </div>
                <div class="col-2">
                    <div class="card setCardLine" style="width: 100%;">
                        <div class="sideMenubar">
                            <div class="mainText1">
                                <div class="icon">
                                    <i class="fa fa-user fa-3x"></i>
                                </div>
                                <div class="iconText">
                                    ADMIN1 님
                                </div>
                            </div>
                            <hr>
            
                            <div class="mainText2">
                                <div class="titleText2">
                                    <a href="">HOME</a>
                                </div>
                            </div>
                            <hr>
            
                            <div class="mainText3">
                                <div class="subText1">
                                    페이지 관리
                                </div>
                                <div class="titleText3">
                                    <a href="">TOP 6 관리</a>
                                </div>
                                <div class="titleText3">
                                    <a href="">추천 여행지 관리</a>
                                </div>
                                <div class="titleText3">
                                    <a href="">공지사항 관리</a>
                                </div>
                                <div class="titleText3">
                                    <a href="">문의하기 답변</a>
                                </div>
                            </div>
                            <hr>
            
                            <div class="mainText3">
                                <div class="subText1">
                                    인기 검색어
                                </div>
                                <div class="titleText3">
                                    <div class="btn-group">
                                        <button class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            연령
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" id="showAge10">10대</a>
                                            <a class="dropdown-item" href="#" id="showAge20">20대</a>
                                            <a class="dropdown-item" href="#" id="showAge30">30대</a>
                                            <a class="dropdown-item" href="#" id="showAge40">40대</a>
                                            <a class="dropdown-item" href="#" id="showAge50">50대</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="titleText3">
                                    <div class="btn-group">
                                        <button class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            성별
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#" id="showGenderMan">남</a>
                                            <a class="dropdown-item" href="#" id="showGenderWoman">여</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="titleText3">
                                    <div class="btn-group">
                                        <button class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown"
                                            aria-haspopup="true" aria-expanded="false">
                                            여행 인원
                                        </button>
                                        <div class="dropdown-menu">
                                            <a class="dropdown-item" href="#">1인</a>
                                            <a class="dropdown-item" href="#">2~4인</a>
                                            <a class="dropdown-item" href="#">단체</a>
                                            <a class="dropdown-item" href="#">가족</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr>
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

<hr>

<footer class="footer">
    <div class="top">
      <div class="container">
        <div class="row">
          
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
              KH정보교육원&nbsp;|&nbsp;대표자: 유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;강지원&nbsp;곽민지<br>
              <a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a href="privacy.html">개인정보취급방침</a>
              </p>
              <!-- 주소 및 이메일 -->
              <div class="list-icon">
                <div>&nbsp;<i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;서울특별시 강남구 테헤란로14길 6 남도빌딩</div>
                
                <div><i class="fa fa-envelope" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;touchtrip@gmail.com</div>
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
            <p><span>KH정보교육원</span> Made by Yeojinjok <i class="fa fa-copyright" aria-hidden="true"></i> 2021</p>
          </div>
        </div>
      </div>
    </div>

    <!-- 맨 위로 스크롤 버튼 -->
    <a href="#" class="scroll" style="position:fixed; bottom: 30px; right: 30px;"><img src="../../assets/icons/footer_up.png" alt="Top" width="30px" height="30px"></a>
  </footer>
        <a href="#" style="position:fixed; bottom: 30px; right: 30px;"><img src="../../assets/images/up.png" alt="Top"
                width="30px" height="30px"></a>

    <script>
        var $target = $('.scroll');
        $target.on('click', function(){
            $('html, body').animate({'scrollTop' : 0}, 200);
            return false;
        });
      </script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 / 회원가입</title>

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- header, footer -->
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/header.css" />
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/footer.css" />
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/login.css">
<script src="http://localhost:8088/planner/assets/js/jquery-3.6.0.min.js"></script>	

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<script
	src="http://localhost:8088/planner/assets/js/header_search_box.js"
	defer></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

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
			<div class="navbar__logo" style="margin-top: -4px;">
				<i class="fas fa-route"></i> <a
					href="/planner/checkMain.do"
					style="font-family: 'Permanent Marker', cursive;">TouchTrip</a>
			</div>
			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a
					href="/planner/checkMain.do">Home</a></li>
				<li><a href="">플래너</a></li>
				<li><a
					href="/planner/list.bo">커뮤니티</a></li>
				<li><a
					href="http://localhost:8088/planner/views/member/login.jsp">Login
						/ Join</a></li>
				<li><a
					href="http://localhost:8088/planner/views/admin/admin.jsp">관리자
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
			<ul class="navbar__icons" style="margin-top: 14px;">
				<li><a href="http://www.instagram.com/touchtrip_official"><i
						class="fab fa-instagram"></i></a></li>
				<li><i class="fab fa-facebook-f"></i></li>
			</ul>
	</header>
	<!-- header 끝 -->

	<div class="wrap">
		<div class="form-wrap">
			<div class="button-wrap">
				<div id="btn"></div>
				<button type="button" class="togglebtn" onclick="login()"><b>로그인</b></button>
				<button type="button" class="togglebtn" onclick="register()" ><b>회원가입</b></button>
			</div>
			<!-- 
			<div class="social-icons">
				<img src="http://localhost:8088/planner/assets/images/google.png"
					alt="naver">&nbsp;&nbsp; <img
					src="http://localhost:8088/planner/assets/images/kakaoTalk.png"
					alt="kakaotalk">&nbsp;&nbsp; <img
					src="http://localhost:8088/planner/assets/images/facebook.png"
					alt="google">
			</div>
			 -->
            <form id="login" class="log-group" action="/planner/login.me" method="post" >
                아이디&nbsp;
                <input type="text" class="log-field" id="userId" name="userId" placeholder="Enter ID" required>
                <br><br>
                비밀번호<input type="userPwd" class="log-field" id="userPwd" name="userPwd" placeholder="Enter Password" required>
            
                <input type="checkbox" class="checkbox"><span>로그인 유지하기</span>
                <button class="submit" onClick="loginMember();">L O G I N</button>
            </form>
            
            <form id="register" class="join-group" action="/planner/insert.me" method="post" >
				아이디&nbsp;
                <div><input style="width: 70%;" type="text" class="join-field" id="userId_sign_in" name="userId" placeholder="Enter ID" required> 
                &nbsp;<button style="width: 25%;" class="button" id="idCheck" >중복확인</button></div><br />
                비밀번호
                <div><input type="userPwd" class="join-field" id="userPwd_sign_in" name="userPwd" placeholder="Enter Password" required>
                </div><br>
                이름
                <div><input type="text" class="join-field" id="userName" name="userName" placeholder="Enter Name" required>
                </div><br/>
                닉네임<br />
                <div><input style="width: 70%;" type="text" class="join-field" id="nickName" name="nickName" placeholder="Enter Nickname" required>
                &nbsp;<button style="width: 25%;" class="button" id="nickCheck">중복확인</button>
                </div><br />
				<div>나이 &nbsp;<input type="number" name="age" class="sel" aria-label="나이" min="10" placeholder="age" style="margin-left: 8px;" required>
                    &nbsp;<select id="gender" name="gender" aria-label="성별" placeholder="gender" style="margin-left: 10px;">
                                <option value="">gender</option>
                                <option value="M">남자</option>
                                <option value="F">여자</option>
                        </select></div><br />
                <div>연락처<br>
                <input type="phone" class="join-field" id="phone" name="phone" placeholder="Enter Number Only" required> 
                <%--	<button class="button">인증하기</button> --%>
                </div>
                <input type="checkbox" class="checkbox"><span>개인정보 수집 및 이용에 동의합니다.</span>
                <button class="submit" onClick="insertMember();">R E G I S T E R</button>
            </form>
        </div>
    </div>
    <script>
        var x = document.getElementById("login");
        var y = document.getElementById("register");
        var z = document.getElementById("btn");
        
        function login(){
            x.style.left = "50px";
            y.style.left = "450px";
            z.style.left = "0";
        }
        function register(){
            x.style.left = "-400px";
            y.style.left = "50px";
            z.style.left = "110px";
        }
    	
    	function insertMember() {
    		$("#register").submit();
			alert("회원가입 성공!");
    		location.href="/planner/checkMain.do"
    	};
    	
    	$("#register").submit(function(event){
    		if($("#userId_sign_in").val() == "" || $("#userPwd_sign_in").val() == "") alert("아이디와 비밀번호는 필수 값입니다.");
    		else return;
    		event.preventDefault();
    	});
    	
    	var idCheck = 0;
    	$('#idCheck').on('click', function(){
    		var userId = $('#userId_sign_in').val();
 		
    		$.ajax({
    			url : '/planner/idCheck.me',
    			type : 'post',
    			data : { userId },
    			success : function( data ) {
					
    				if( data > 0) {
    					alert("이미 사용 중인 아이디입니다.");
    				} else {
    					alert("사용 가능한 아이디입니다.");
    				} 
    				
    			}, error : function(error){
    				alert("다시 시도해주세요!" )
    			}
    	    });
    	});
    	
    	var nickCheck = 0;
    	$('#nickCheck').on('click', function(){
    		var nickName = $('#nickName').val();

    		$.ajax({
    			url : '/planner/nickCheck.me',
    			type : 'post',
    			data : { nickName },
    			success : function( data ) {

    				if( data > 0) {
    					alert("이미 사용 중인 닉네임입니다.");
    				} else {
    					alert("사용 가능한 닉네임입니다.");
    				} 
    				
    			}, error : function(){
    				alert("다시 시도해주세요!" )
    			}
    		});
    	});
   	
    	function loginMember() {
    		$("#login").submit();
			// alert("로그인 성공!");
    		location.href='/planner/checkMain.do';
    	}
    	
    	$("#login").submit(function(event){
    		if($("#userId").val() == "" || $("#userPwd").val() == "") alert("아이디와 비밀번호는 필수 값입니다!");
    		else return;
    		event.preventDefault();
    	});
	
    </script>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- footer -->
	<footer class="footer">
		<div class="top">
			<div class="container">
				<div class="row" style="margin-left: auto; margin-right: auto;">
					<!-- TouchTrip 타이틀 -->
					<!-- 
					<article class="col-md-2 col-sm-2">
					
						<div class="about title">
							<h3 class="touch">Touch</h3>
							<h3 class="trip">Trip</h3>
						</div>
					</article>
				 -->
					<div class="row">
						<div class="col">
							<img
								src="http://localhost:8088/planner/assets/images/TouchTrip_logo.JPG"
								style="margin-left: 450px;">
							<!-- 페이지 주제 -->
							<div class="col about content"
								style="width: 500px; margin-left: 80px; display: inline-block;">
								<p class="sub">"부산 여행의 모든 것"</p>
								<!-- 이름 및 환불규정, 개인정보취급방침 -->
								<p class="name">
									KH정보교육원&nbsp;|&nbsp;대표자:
									유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;강지원&nbsp;곽민지<br />
									<a href="refund.html" style="color: red;">환불규정</a>&nbsp;|&nbsp;<a
										href="privacy.html" style="color: red;">개인정보취급방침</a>
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
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="bottom">
			<div class="container">
				<div class="row" style="margin-left: auto; margin-right: auto;">
					<div class="col-sm-6 copyright text-center-xs"
						style="margin: 0 auto;">
						<p>
							KH정보교육원 Made by Yeojinjok <i class="fa fa-copyright"></i> 2021
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 맨 위로 스크롤 버튼 -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="http://localhost:8088/planner/assets/images/up.png" alt="Top"
			width="30px" height="30px"></a> <br>
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
</body>
</html>
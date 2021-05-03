<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="../assets/images/sitelogo.png" />
    <link rel="stylesheet" href="assets/css/intro.css">
</head>

<body>
    <div class="float">
        
    </div>            

    <p class="type_text" style="text-align:center; color:#d5d4f7; font-size:18pt;"></p>

    <div id="indexBtn" class="center">
        <button id="visual-btn" onclick="goMain();" style="font-size:26px;"><b>Touch Trip</b></button>
    </div>
    <div class="video-background">
        <div class="video-foreground">
            <video muted autoplay loop id="back_video">
                <source src="assets/videos/goTravel.mp4" type="video/mp4">
            </video>
        </div>
    </div>
    <div class="video-film"></div>

    <script type="text/javascript" src="assets/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="assets/js/typeit.min.js"></script>
    <script type="text/javascript">

        // 참조 사이트 : https://typeitjs.com/
        $(function () {
            var str1 = ["매일 똑같은 일상이 지루하다면?"];
            var str2 = ["누구든지 쉽게 여행 계획을 짤 수 있다면?"];
            var str3 = ["거기 너 뭐해? 여행 갈 준비 안하고?"];
            $('.type_text').typeIt({
                strings: str1,
                html: true,
                autoStart: true,
                loop: true,
                typeSpeed: 50
                
            }).css("color", "white").css("font-size","26px")
                .tiPause(700)
                .tiDelete(60)
                .tiType(str2)
                .tiPause(700)
                .tiDelete(60)
                .tiType(str3)
                .tiPause(1000)
                .tiEmpty();
        });
    </script>
    
    <script>
    	function goMain(){
    		location.href="/planner/checkMain.do"
    	};
    </script>
</body>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.touchtrip.admin.model.vo.*, java.util.*" %>    

<%@page import="java.util.Date" %>

<%@page import="java.text.SimpleDateFormat" %>

<%
	Admin a = (Admin)request.getAttribute("countMember");
	int o = Integer.parseInt((request.getAttribute("weekJoin").toString()));
	
	int one = o + a.getSixthJoin();
	int two = one + a.getFifthJoin();
	int three = two + a.getFourthJoin();
	int four = three + a.getThirdJoin();
	int five = four + a.getSecondJoin();
	int six = five + a.getFirstJoin();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>admin</title>
    <script src="/planner/assets/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/planner/assets/css/admin.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js">
    </script>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="sideMenubar">
                <div class="mainText1">
                    <div class="icon">
                        <i class="fa fa-user fa-3x"></i>
                    </div>
                    <div class="iconText">
                        ADMIN1 님	<!-- 로그인 정보 가져와서 넣을 것 -->
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
                        사용자 분석 
                    </div>
                    <div class="titleText3">
                        <div class="btn-group">
                            <button class="btn btn-lg dropdown-toggle" type="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                연령
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="/planner/views/admin/adminAge.jsp?age=10&todayJoin=<%= a.getFirstJoin() %>"  id="showAge10">10대</a>
                                <a class="dropdown-item" href="/planner/views/admin/adminAge.jsp?age=20&todayJoin=<%= a.getFirstJoin() %>" id="showAge20">20대</a>
                                <a class="dropdown-item" href="/planner/views/admin/adminAge.jsp?age=30&todayJoin=<%= a.getFirstJoin() %>" id="showAge30">30대</a>
                                <a class="dropdown-item" href="/planner/views/admin/adminAge.jsp?age=40&todayJoin=<%= a.getFirstJoin() %>" id="showAge40">40대</a>
                                <a class="dropdown-item" href="/planner/views/admin/adminAge.jsp?age=50&todayJoin=<%= a.getFirstJoin() %>" id="showAge50">50대</a>
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
                                <a class="dropdown-item" href="/planner/views/admin/adminGender.jsp?gender=1&todayJoin=<%= a.getFirstJoin() %>" id="showGenderMan">남</a>
                                <a class="dropdown-item" href="/planner/views/admin/adminGender.jsp?gender=2&todayJoin=<%= a.getFirstJoin() %>" id="showGenderWoman">여</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr>
            </div>

            <div class="headMenubar">
                <nav class="navbar navbar-light bg-info">
                    <div class="container-fluid">
                        <form class="d-flex">
                            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success" type="submit"
                                style="background: whitesmoke;">Search</button>
                        </form>
                        <a class="navbar-brand"></a>
                        <div class="navbar-brand" style="font-size: 28px;" onclick="goMain();">메인페이지</div>
                    </div>
                </nav>

                <div class="mainContent">
                    <div class="container">
                        <div class="row firstContent">
                            <div class="col">
                                <div class="card setCardLine" style="width: 100%;">
                                    <div class="card-header">
                                        오늘의 알림 <span class="badge badge-danger">3</span>
                                    </div>
                                    <div class="list-group list-group-flush">
                                        <li class="list-group-item">
                                            신규 회원가입 <span class="badge badge-primary"><%= a.getFirstJoin() %></span> &nbsp;&nbsp;
                                            새로운 글 <span class="badge badge-primary">5</span> &nbsp;&nbsp;
                                            답변 대기 문의 <span class="badge badge-primary">4</span> &nbsp;&nbsp;
                                        </li>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- 내용 시작 -->
                        <div class="row">
                            <div class="col firstText">
                                <div class="card text-center">
                                    <div class="card-header">
                                        최근 회원 가입 수
                                    </div>
                                    <div class="card-body">
                                        <div style="width:750px">
                                            <canvas id="myChart1"></canvas>
                                        </div>

                                        <script>
                                            var ctx = document.getElementById("myChart1").getContext('2d');

                                            var myChart = new Chart(ctx, {
                                                type: 'bar',
                                                data: {
                                                    labels: ["2021-04-28", "2021-04-29", "2021-04-30", "2021-05-01", "2021-05-02", "2021-05-03", "2021-05-04"],
                                                    datasets: [{
                                                        label: '회원 수',
                                                        data: [<%= a.getSeventhJoin() %>, <%= a.getSixthJoin() %>, <%= a.getFifthJoin() %>, <%= a.getFourthJoin() %>, <%= a.getThirdJoin() %>, <%= a.getSecondJoin() %>, <%= a.getFirstJoin() %>],
                                                        backgroundColor: [
                                                            'rgba(255, 99, 132, 0.5)',
                                                            'rgba(54, 162, 235, 0.5)',
                                                            'rgba(255, 206, 86, 0.5)',
                                                            'rgba(75, 192, 192, 0.5)',
                                                            'rgba(153, 102, 255, 0.5)',
                                                            'rgba(255, 159, 64, 0.5)',
                                                            'rgba(185, 202, 121, 0.5)'
                                                        ],
                                                        borderColor: [
                                                            'rgba(255,99,132,1)',
                                                            'rgba(54, 162, 235, 1)',
                                                            'rgba(255, 206, 86, 1)',
                                                            'rgba(75, 192, 192, 1)',
                                                            'rgba(153, 102, 255, 1)',
                                                            'rgba(255, 159, 64, 1)',
                                                            'rgba(185, 202, 121, 1)'
                                                        ],
                                                        borderWidth: 1
                                                    }]
                                                },
                                                options: {
                                                    maintainAspectRatio: true,
                                                    scales: {
                                                        yAxes: [{
                                                            ticks: {
                                                                beginAtZero: true
                                                            }
                                                        }]
                                                    }
                                                }
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>

                            <div class="col firstText">
                                <div class="card text-center">
                                    <div class="card-header">
                                        누적 회원 수
                                    </div>
                                    <div class="card-body">
                                        <div style="width:750px">
                                            <canvas id="myChart2"></canvas>
                                        </div>

                                        <script>

                                            var ctx = document.getElementById("myChart2").getContext('2d');
                                            var myChart = new Chart(ctx, {
                                                type: 'bar',
                                                data: {
                                                	labels: ["2021-04-28", "2021-04-29", "2021-04-30", "2021-05-01", "2021-05-02", "2021-05-03", "2021-05-04"],
                                                    datasets: [{
                                                        label: '누적 회원 수',
                                                        data: [<%= o %>, <%= one %>, <%= two %>, <%= three %>, <%= four %>, <%= five %>, <%= six %>],
                                                        backgroundColor: [
                                                            'rgba(255, 99, 132, 0.5)',
                                                            'rgba(54, 162, 235, 0.5)',
                                                            'rgba(255, 206, 86, 0.5)',
                                                            'rgba(75, 192, 192, 0.5)',
                                                            'rgba(153, 102, 255, 0.5)',
                                                            'rgba(255, 159, 64, 0.5)',
                                                            'rgba(185, 202, 121, 0.5)'
                                                        ],
                                                        borderColor: [
                                                            'rgba(255,99,132,1)',
                                                            'rgba(54, 162, 235, 1)',
                                                            'rgba(255, 206, 86, 1)',
                                                            'rgba(75, 192, 192, 1)',
                                                            'rgba(153, 102, 255, 1)',
                                                            'rgba(255, 159, 64, 1)',
                                                            'rgba(185, 202, 121, 1)'
                                                        ],
                                                        borderWidth: 1
                                                    }]
                                                },
                                                options: {
                                                    maintainAspectRatio: true,
                                                    scales: {
                                                        yAxes: [{
                                                            ticks: {
                                                                beginAtZero: true
                                                            }
                                                        }]
                                                    }
                                                }
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row secondContent">
                            <div class="col">
                                <div class="card setCardLine" style="width: 100%;">
                                    <div class="card-header">
                                        공지사항 - 공지사항 글 목록 불러오기, 공지사항 글 쓰기 버튼추가 => 글 쓰기 게시판으로 링크
                                    </div>
                                    <div class="list-group list-group-flush">
                                        <li class="list-group-item"><b>[공지사항]</b> 1. 이용 규칙 안내</li>
                                        <li class="list-group-item"><b>[공지사항]</b> 2. 플래너 이용 방법</li>
                                        <li class="list-group-item"><b>[공지사항]</b> 3. 공지사항</li>
                                        <li class="list-group-item"><b>[공지사항]</b> 4. 공지사항</li>
                                    </div>
                                </div>
                            </div>
                            <div class="col">
                                <div class="card setCardLine" style="width: 100%;">
                                    <div class="card-header">
                                        새로운 글 <span class="badge badge-danger">5</span>
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
		function goMain(){
			location.href="/planner/checkMain.do"
		};
    </script>
</body>

</html>
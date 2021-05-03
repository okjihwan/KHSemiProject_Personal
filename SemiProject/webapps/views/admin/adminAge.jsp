<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<% int age = Integer.parseInt((request.getParameter("age").toString())); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="/planner/assets/css/admin.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js">
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
					<div class="iconText">ADMIN1 님</div>
				</div>
				<hr>

				<div class="mainText2">
					<div class="titleText2">
						<a href="/planner/countMember.ad">HOME</a>
					</div>
				</div>
				<hr>

				<div class="mainText3">
					<div class="subText1">페이지 관리</div>
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
					<div class="subText1">사용자 분석</div>
					<div class="titleText3">
						<div class="btn-group">
							<button class="btn btn-lg dropdown-toggle" type="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">연령</button>
							<div class="dropdown-menu">
								<div class="dropdown-item" id="showAge10"
									onclick="selectAge(10);">10대</div>
								<div class="dropdown-item" id="showAge20"
									onclick="selectAge(20);">20대</div>
								<div class="dropdown-item" id="showAge30"
									onclick="selectAge(30);">30대</div>
								<div class="dropdown-item" id="showAge40"
									onclick="selectAge(40);">40대</div>
								<div class="dropdown-item" id="showAge50"
									onclick="selectAge(50);">50대</div>
							</div>
						</div>
					</div>
					<div class="titleText3">
						<div class="btn-group">
							<button class="btn btn-lg dropdown-toggle" type="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">성별</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#" id="showGenderMan">남</a> 
								<a class="dropdown-item" href="#" id="showGenderWoman">여</a>
							</div>
						</div>
					</div>
					<div class="titleText3">
						<div class="btn-group">
							<button class="btn btn-lg dropdown-toggle" type="button"
								data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">여행 인원</button>
							<div class="dropdown-menu">
								<a class="dropdown-item" href="#">1인</a> <a
									class="dropdown-item" href="#">2~4인</a> <a
									class="dropdown-item" href="#">단체</a> <a class="dropdown-item"
									href="#">가족</a>
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
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit"
								style="background: whitesmoke;">Search</button>
						</form>
						<a class="navbar-brand"></a> <a class="navbar-brand"
							style="font-size: 28px;"> ADMIN1 </a>
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
										<li class="list-group-item">신규 회원가입 
										<span class="badge badge-primary">37</span> &nbsp;&nbsp; 새로운 글 
										<span class="badge badge-primary">5</span> &nbsp;&nbsp; 답변 대기 문의 
										<span class="badge badge-primary">4</span> &nbsp;&nbsp;										</li>
									</div>
								</div>
							</div>
						</div>

						<!-- 분석 별 그래프  -->
						<div class="row showAgeContentText">
							<div class="col">
								<div class="card setCardLine" style="width: 100%;">
									<div class="card-header">연령별 분석 - 10대</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col showAgeContentText">
								<div class="card text-center">
									<div class="card-header">선호 지역</div>
									<div class="card-body">
										<div style="width: 750px">
											<canvas id="myChart1"></canvas>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col showAgeContentText">
								<div class="card text-center">
									<div class="card-header">선호 관광지</div>
									<div class="card-body">
										<div style="width: 750px">
											<canvas id="myChart2"></canvas>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
						
						<div class="row">
							<div class="col-4 showAgeContentText">
								<div class="card text-center">
									<div class="card-header">성별</div>
									<div class="card-body">
										<div style="width: 490px">
											<canvas id="myChart3"></canvas>
										</div>
									</div>
								</div>
							</div>

							<div class="col-4 showAgeContentText">
								<div class="card text-center">
									<div class="card-header">여행 인원</div>
									<div class="card-body">
										<div style="width: 490px">
											<canvas id="myChart4"></canvas>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-4 showAgeContentText">
								<div class="card text-center">
									<div class="card-header">여행 일수</div>
									<div class="card-body">
										<div style="width: 490px">
											<canvas id="myChart5"></canvas>
										</div>
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
	/* 화면 처음 접속 시 나오는 5개 그래프 */
	var myChart1;
	var myChart2;
	var myChart3;
	var myChart4;
	var myChart5;
	$(function() {
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 선호지역 ========================  */
				$.ajax({
					url : '/planner/checkAge.ad?age=' + <%=age%>,
					data : {},
					success : function(result) {
						var ctx = document.getElementById("myChart1")
								.getContext('2d');

						myChart1 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구", "동래구" ],
								datasets : [ {
									label : '지역',
									data : result.arrayAge,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 
											'rgba(255, 99, 132, 1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
						
						var ctx = document.getElementById("myChart3")
								.getContext('2d');

						myChart3 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ '남', '여'],
								datasets : [ {
									label : '성별',
									data : result.arrayGender,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',],
									borderColor : [
											'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					}
				});
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 선호지역 ========================  */				
				
				
				
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 선호 관광지 ========================  */
				<%-- $.ajax({
					url : '/planner/checkAge.ad?age=' + <%= age %>,
					data : {},
					success : function(arrayAge) {
						console.log("관광지 그래프 시작");
						var ctx = document.getElementById("myChart2")
								.getContext('2d');

						var myChart2 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구",
										"동래구" ],
								datasets : [ {
									label : '지역',
									data : arrayAge,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					}
				});
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 선호 관광지 ========================  */				
				
				
				
				
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 성별 ========================  */
				$.ajax({
					url : '/planner/checkAge.ad?age=' + <%=age%>,
					data : {},
					success : function(result) {
						console.log("성별 그래프 시작");
						console.log(result.Gender);
						var ctx = document.getElementById("myChart1")
								.getContext('2d');

						var myChart3 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구",
										"동래구" ],
								datasets : [ {
									label : '지역',
									data : result.arrayGender,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',],
									borderColor : [
											'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					} 
				}); 
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 - 성별 ========================  */				
				
				
				
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 -여행 인원 ========================  */
				$.ajax({
					url : '/planner/checkAge.ad?age=' + <%=age%>,
					data : {},
					success : function(arrayAge) {
						var ctx = document.getElementById("myChart4")
								.getContext('2d');

						var myChart = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구",
										"동래구" ],
								datasets : [ {
									label : '지역',
									data : arrayAge,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					}
				});
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 -여행 인원 ========================  */
				
				
				
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 -여행 일수 ========================  */
				$.ajax({
					url : '/planner/checkAge.ad?age=' + <%=age%>,
					data : {},
					success : function(arrayAge) {
						var ctx = document.getElementById("myChart5")
								.getContext('2d');

						var myChart = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구",
										"동래구" ],
								datasets : [ {
									label : '지역',
									data : arrayAge,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					}
				}); --%>
			});
/* ======================== 화면 처음 접속 시 나오는 5개 그래프 -여행 일수 ========================  */		
		
		
		
		
		
		
		
		/* 첫 화면에서 연령별로 선택했을 때 나오는 그래프 구현 위한 코드 */
			function selectAge(age) {
				$.ajax({
					url : '/planner/checkAge.ad?age=' + age,
					data : {},
					success : function(result) {
						var cnv = document.getElementById("myChart1");
						var ctx = cnv.getContext('2d');
						myChart1.destroy();
						// myChart1.clear();
						
						myChart1 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ "동구", "서구", "남구", "북구", "해운대구",
										"동래구" ],
								datasets : [ {
									label : '지역',
									data : result.arrayAge,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',
											'rgba(255, 206, 86, 0.5)',
											'rgba(75, 192, 192, 0.5)',
											'rgba(153, 102, 255, 0.5)',
											'rgba(255, 159, 64, 0.5)' ],
									borderColor : [ 'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',
											'rgba(255, 206, 86, 1)',
											'rgba(75, 192, 192, 1)',
											'rgba(153, 102, 255, 1)',
											'rgba(255, 159, 64, 1)' ],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
						
						var ctx = document.getElementById("myChart3")
								.getContext('2d');

						myChart3.destroy();
						// myChart3.clear();
						myChart3 = new Chart(ctx, {
							type : 'bar',
							data : {
								labels : [ '남', '여'],
								datasets : [ {
									label : '성별',
									data : result.arrayGender,
									backgroundColor : [
											'rgba(255, 99, 132, 0.5)',
											'rgba(54, 162, 235, 0.5)',],
									borderColor : [
											'rgba(255,99,132,1)',
											'rgba(54, 162, 235, 1)',],
									borderWidth : 1
								} ]
							},
							options : {
								maintainAspectRatio : true,
								scales : {
									yAxes : [ {
										ticks : {
											beginAtZero : true
										}
									} ]
								}
							}
						});
					}
				});
			};
		</script>
	</body>
</html>
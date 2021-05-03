<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="http://localhost:8088/planner/assets/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<!-- header, footer -->
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/header.css" />
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/footer.css" />

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

<body >
	<!-- footer -->
	<hr>
	<footer class="footer"  >
		<div class="top" >
			<div class="container" >
				<div class="row" style="margin-left : auto; margin-right : auto;">

					<article class="col-md-2 col-sm-2">
						<!-- TouchTrip 타이틀 -->
						<div class="about title">
							<h3 class="touch">Touch</h3>
							<h3 class="trip">Trip</h3>
						</div>
					</article>

					<article class="col-md-8 col-sm-10">
						<!-- 페이지 주제 -->
						<div class="about content" >
							<p class="sub">"부산 여행의 모든 것"</p>
							<!-- 이름 및 환불규정, 개인정보취급방침 -->
							<p class="name">
								KH정보교육원&nbsp;|&nbsp;대표자:
								유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;강지원&nbsp;곽민지<br />
								<a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a
									href="privacy.html">개인정보취급방침</a>
							</p>
							<!-- 주소 및 이메일 -->
							<div class="list-icon">
								<div>
									&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시
									강남구 테헤란로14길 6 남도빌딩
								</div>

								<div>
									<i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;triptouch@gmail.com
								</div>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

		<div class="bottom">
			<div class="container">
				<div class="row"  style="margin-left : auto; margin-right : auto;">
					<div class="col-sm-6 copyright text-center-xs"
						style="margin: 0 auto;">
						<p>
							<span>KH정보교육원</span> Made by Yeojinjok</a> <i class="fa fa-copyright"></i>
							2021
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- 맨 위로 스크롤 버튼 -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="http://localhost:8088/planner/assets/images/up.png" alt="Top"
			width="30px" height="30px"></a>
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
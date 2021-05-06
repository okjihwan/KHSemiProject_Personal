<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TouchTrip > 마이페이지</title>
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
<link rel="stylesheet"
	href="http://localhost:8088/planner/assets/css/mypage.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<!-- 프로필 수정 팝업 -->
<script
	src="http://localhost:8088/planner/assets/js/mypage_profile.js" defer></script>

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
	<%@ include file="../common/header.jsp"%>

	<div class="row" style="margin-left: auto; margin-right: auto;">
		<div class="col">
			<!-- 프로필 -->
			<div class="profile">
				<!-- 썸네일-->
				<div class="thumb-wrapper stagger-item">

					<!-- 썸네일 클릭 시 프로필 사진 크게 나오게 하는 기능 추가 예정 -->
					<a href="#"><img class="thumb"
						src="http://localhost:8088/planner/assets/images/IMG_1858.JPG" /></a>
				</div>

				<div class="text-area">
					<!-- 닉네임 및 자기소개 -->
					<h2 class="greeting stagger-item">오늘은 맑음</h2>
					<div class="desc stagger-item">
						한 달의 여행으로 10년을 버티는 사람입니다.<br> (자기소개)
					</div>
				</div>


				<!-- 프로필 수정 버튼 -->
				<div>
					<a href="#profile_layer"
						class="btn btn-primary profile-fix btn-example"
						style="background-color: #263343; border-radius: 28px; border: 1px solid white; display: inline-block; cursor: pointer; color: #ffffff; font-family: Arial; text-decoration: none;">수정</a>
				</div>


				<!-- 프로필 수정 팝업 -->
				<div id="profile_layer" class="pop-layer">
					<div class="pop-container">
						<div class="pop-conts" style="margin-top: 20px;">
							<img class="thumb"
								src="http://localhost:8088/planner/assets/images/IMG_1858.JPG" />
							<div class="row" style="margin-top: 30px; margin-left: 25px;">
								<div class="col" style="padding: 0px;">
									<a href="#" class="fix-btn">사진변경</a>
								</div>
								<div class="col" style="padding: 0px; margin-left: -140px;">
									<a href="#" class="fix-btn"
										style="color: rgba(212, 211, 211, 0.884);">삭제하기</a>
								</div>
							</div>
							<div class="row profile-text" style="margin-top: 30px; margin-left: 80px;">
								<input type="text" name="nickname" class="nickname"
									placeholder="오늘은맑음" value="오늘은맑음" style="text-align : center;">
							</div>
							<div class="row profile-text" style="margin-left: 70px;">
								<textarea name="" id="" cols="25" rows="3" style="text-align : center;"></textarea>
							</div>

							<div class="btn-r">
								<a href="#" class="btn-layerClose">저장</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- 세로선 -->
		<div class="vl"></div>


		<div class="col">
			<!-- 데이터 수정 목록 -->
			<div class="row" style="margin-left: 15px; margin-right: 0px;">
				<!-- 개인정보 수정 -->
				<div class="col">
					<div class="card"
						style="width: 500px; height: 170px; margin-top: 40px; margin-left: auto; margin-right: auto;">
						<div class="card-body">
							<h5 class="card-title">개인정보</h5>
							<table>
								<tr>
									<td><b>이름</b></td>
									<td>곽민지</td>
								</tr>
								<tr>
									<td><b>연락처 이메일</b></td>
									<td>mi******@n****.com</td>
								</tr>
								<tr>
									<td><b>휴대전화</b></td>
									<td>+82&nbsp;10-7***-6***</td>
								</tr>
							</table>
							<a href="#" class="btn btn-primary fix"
								style="margin-bottom: 50px; font-size: 12px; padding: 6px 12px; position: absolute; right: 20px; top: 125px; background-color: #263343; border-radius: 28px; border: 1px solid white; display: inline-block; cursor: pointer; color: #ffffff; font-family: Arial; text-decoration: none;">수정하기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="margin-left: 15px; margin-right: 0px;">
				<!-- 내 플래너 확인 -->
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="plan-title">내 플래너</h5>
							<div class="row">
								<div class="plan-img">
									<div class="plan-text">
										<p>플래너 1</p>
									</div>
								</div>
								<div class="plan-img">
									<div class="plan-text">
										<p>플래너 1</p>
									</div>
								</div>
								<div class="plan-img">
									<div class="plan-text">
										<p>플래너 1</p>
									</div>
								</div>
							</div>
							<a href="#" class="btn btn-primary fix"
								style="margin-bottom: 50px; font-size: 12px; padding: 6px 12px; position: absolute; right: 20px; top: 125px; background-color: #263343; border-radius: 28px; border: 1px solid white; display: inline-block; cursor: pointer; color: #ffffff; font-family: Arial; text-decoration: none;">보러가기</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 작성 글 확인 -->
			<div class="row" style="margin-left: 15px; margin-right: 0px;">
				<div class="col">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title">작성 글</h5>
							<p class="card-text">최근 작성한 글이 없습니다.</p>
							<a href="#" class="btn btn-primary fix"
								style="margin-bottom: 50px; font-size: 12px; padding: 6px 12px; position: absolute; right: 20px; top: 125px; background-color: #263343; border-radius: 28px; border: 1px solid white; display: inline-block; cursor: pointer; color: #ffffff; font-family: Arial; text-decoration: none;">확인하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>


	<%@ include file="../common/footer.jsp"%>
</body>

</html>
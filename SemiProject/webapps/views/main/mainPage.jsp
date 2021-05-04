<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.touchtrip.main.model.vo.*, java.util.*"%>

<%
ArrayList<MainAllFamous> listAll = (ArrayList<MainAllFamous>) request.getAttribute("listAll");
ArrayList<MainAllFamous> listPage = (ArrayList<MainAllFamous>) request.getAttribute("listPage");
MainPagingInfo pageInfo = (MainPagingInfo) request.getAttribute("pageInfo");

int st = pageInfo.getStartPage();
int ed = pageInfo.getEndPage();
int mx = pageInfo.getMaxPage();
int limit = pageInfo.getLimit();
int listCount = pageInfo.getListCount();
int cur = pageInfo.getCurrentPage();

int i = 0;
int j = 0;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainPage</title>
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
<link rel="stylesheet" href="/planner/assets/css/mainPage.css">
<link rel="stylesheet" href="/planner/assets/css/header.css" />
<link rel="stylesheet" href="/planner/assets/css/footer.css">

<script src="/planner/assets/js/header_search_box.js" defer></script>
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

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div class="img">
		<div class="content">
			<h1 class="touch">Touch</h1>
			<h1 class="trip">Trip</h1>
			<!-- <h2 class="text"><button type="button" class="btn btn-primary">시작하기</button></h2> -->
		</div>
		<div class="img-cover"></div>
	</div>

	<section>
		<div class="container">
			<div class="mainText1">인기 여행지 TOP6</div>

			<div class="subText1">
				어디를 가야할지 모르는 당신을 위해 준비했습니다 <br> 가장 인기있는 TOP6 여행지. 지금 바로 만나보시죠
			</div>


			<div class="card-group cardFamous">
				<div class="card"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산1.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 1</h5>
						<p class="card-text">부산 해운대</p>
						<p class="card-text">
							부산 해운대는 사람이 엄청 많습니다 <br> 놀러 가실때는 눈치싸움 필수!!
						</p>
						<p class="card-text">
							<small class="text-muted">#우정여행 #눈치싸움 필수</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.9</small>
						</p>
					</div>
				</div>
				<div class="card cardFamous"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산2.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 2</h5>
						<p class="card-text">부산 감천문화마을</p>
						<p class="card-text">
							여기는 진짜 사진찍기 좋아용 <br> 제일 꼭대기에서 보면 경치 진짜 이뻐용
						</p>
						<p class="card-text">
							<small class="text-muted">#우정여행 #사진 찍기 좋은</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.8</small>
						</p>
					</div>
				</div>
				<div class="card cardFamous"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산3.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 3</h5>
						<p class="card-text">부산 마린시티</p>
						<p class="card-text">
							야경 미친거 아니냐구~~!! <br> 내가 찍으면 저렇게 안나오던뎅..
						</p>
						<p class="card-text">
							<small class="text-muted">#야경 #사진 찍기 좋은</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.8</small>
						</p>
					</div>
				</div>
			</div>

			<div class="card-group cardFamous">
				<div class="card"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산1.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 4</h5>
						<p class="card-text">부산 해운대</p>
						<p class="card-text">
							부산 해운대는 사람이 엄청 많습니다 <br> 놀러 가실때는 눈치싸움 필수!!
						</p>
						<p class="card-text">
							<small class="text-muted">#우정여행 #눈치싸움 필수</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.9</small>
						</p>
					</div>
				</div>
				<div class="card cardFamous"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산2.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 5</h5>
						<p class="card-text">부산 감천문화마을</p>
						<p class="card-text">
							여기는 진짜 사진찍기 좋아용 <br> 제일 꼭대기에서 보면 경치 진짜 이뻐용
						</p>
						<p class="card-text">
							<small class="text-muted">#우정여행 #사진 찍기 좋은</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.8</small>
						</p>
					</div>
				</div>
				<div class="card cardFamous"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img src="/planner/assets/images/부산3.jpg" class="card-img-top"
						alt="..."
						style="width: 330px; height: 400px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<div class="overTest">
							<button type="button" class="btn overTest"
								style="font-weight: bold; font-size: 24px;">
								플래너<br />작성하러 가기
							</button>
						</div>
						<h5 class="card-title">Top 6</h5>
						<p class="card-text">부산 마린시티</p>
						<p class="card-text">
							야경 미친거 아니냐구~~!! <br> 내가 찍으면 저렇게 안나오던뎅..
						</p>
						<p class="card-text">
							<small class="text-muted">#야경 #사진 찍기 좋은</small>
						</p>
						<p class="card-text">
							<small class="text-muted">평점 5.0 / 4.8</small>
						</p>
					</div>
				</div>
			</div>


			<div class="mainText2">지역별 관광지 찾기</div>

			<div class="subText2">
				지역별 관광지를 알고 싶으시다구요? <br> 지역 버튼을 통해 지역별 관광지를 알 수 있습니다.
			</div>
			<!-- 
			<div class="input-group mb-3 searchFamous">
				<input type="text" class="form-control"
					placeholder="Recipient's username"
					aria-label="Recipient's username" aria-describedby="button-addon2">
				<div class="input-group-append">
					<button class="btn btn-outline-secondary" type="button"
						id="button-addon2">Button</button>
				</div>
			</div>
			 -->
			<div class="btnWrap1">
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(0);" style="width: 85px; color: black;">전체</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(1);" style="width: 100px; color: black;">해운대구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(2);" style="width: 85px; color: black;">금정구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(3);" style="width: 85px; color: black;">연제구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(4);" style="width: 100px; color: black;">부산진구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(5);" style="width: 85px; color: black;">동래구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(6);" style="width: 85px; color: black;">수영구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(7);" style="width: 85px; color: black;">영도구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(8);" style="width: 85px; color: black;">사상구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(9);" style="width: 85px; color: black;">사하구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(10);" style="width: 85px; color: black;">서구</button>
				<button type="button" class="btn btn-outline-secondary"
					onclick="selectArea(11);" style="width: 85px; color: black;">남구</button>
			</div>


			<%
			for (i = 0; i <= listPage.size() / 4; i++) {
			%>

			<%
			if (j < listPage.size()) {
			%>

			<div class="card-group famousSelet">
				<div class="card famousSelet"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img
						src="/planner/assets/images/<%=listPage.get(j).getfName()%>.jpg"
						class="card-img-top" alt="..." id="img<%=j%>"
						style="width: 237px; height: 237px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<h5 class="card-title" id="area<%=j%>"><%=listPage.get(j).getfArea()%></h5>
						<p class="card-text" id="name<%=j%>"><%=listPage.get(j).getfName()%></p>
						<p class="card-text" id="address<%=j%>"><%=listPage.get(j).getfAddress()%></p>
						<p class="card-text" id="phone<%=j%>"><%=listPage.get(j).getfPhone()%></p>
						<p class="card-text" id="review<%=j%>"><%=listPage.get(j).getfReview()%></p>
						<p class="card-text">
							<small class="text-muted" id="score<%=j%>">평점 <%=listPage.get(j).getfScore()%>
								/ 10
							</small>
						</p>
					</div>
				</div>

				<%
				j++;
				}
				%>


				<%
				if (j < listPage.size()) {
				%>

				<div class="card famousSelet"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img
						src="/planner/assets/images/<%=listPage.get(j).getfName()%>.jpg"
						class="card-img-top" alt="..." id="img<%=j%>"
						style="width: 237px; height: 237px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<h5 class="card-title" id="area<%=j%>"><%=listPage.get(j).getfArea()%></h5>
						<p class="card-text" id="name<%=j%>"><%=listPage.get(j).getfName()%></p>
						<p class="card-text" id="address<%=j%>"><%=listPage.get(j).getfAddress()%></p>
						<p class="card-text" id="phone<%=j%>"><%=listPage.get(j).getfPhone()%></p>
						<p class="card-text" id="review<%=j%>"><%=listPage.get(j).getfReview()%></p>
						<p class="card-text">
							<small class="text-muted" id="score<%=j%>">평점 <%=listPage.get(j).getfScore()%>
								/ 10
							</small>
						</p>
					</div>
				</div>

				<%
				j++;
				}
				%>


				<%
				if (j < listPage.size()) {
				%>

				<div class="card famousSelet"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img
						src="/planner/assets/images/<%=listPage.get(j).getfName()%>.jpg"
						class="card-img-top" alt="..." id="img<%=j%>"
						style="width: 237px; height: 237px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<h5 class="card-title" id="area<%=j%>"><%=listPage.get(j).getfArea()%></h5>
						<p class="card-text" id="name<%=j%>"><%=listPage.get(j).getfName()%></p>
						<p class="card-text" id="address<%=j%>"><%=listPage.get(j).getfAddress()%></p>
						<p class="card-text" id="phone<%=j%>"><%=listPage.get(j).getfPhone()%></p>
						<p class="card-text" id="review<%=j%>"><%=listPage.get(j).getfReview()%></p>
						<p class="card-text">
							<small class="text-muted" id="score<%=j%>">평점 <%=listPage.get(j).getfScore()%>
								/ 10
							</small>
						</p>
					</div>
				</div>

				<%
				j++;
				}
				%>

				<%
				if (j < listPage.size()) {
				%>

				<div class="card famousSelet"
					style="margin: 30px 20px; box-shadow: 1px 1px 2px rgba(104, 104, 104, 0.884), -1px -1px 5px rgba(104, 104, 104, 0.884);">
					<img
						src="/planner/assets/images/<%=listPage.get(j).getfName()%>.jpg"
						class="card-img-top" alt="..." id="img<%=j%>"
						style="width: 237px; height: 237px; border-bottom: 2px solid rgba(104, 104, 104, 0.884);">
					<div class="card-body">
						<h5 class="card-title" id="area<%=j%>"><%=listPage.get(j).getfArea()%></h5>
						<p class="card-text" id="name<%=j%>"><%=listPage.get(j).getfName()%></p>
						<p class="card-text" id="address<%=j%>"><%=listPage.get(j).getfAddress()%></p>
						<p class="card-text" id="phone<%=j%>"><%=listPage.get(j).getfPhone()%></p>
						<p class="card-text" id="review<%=j%>"><%=listPage.get(j).getfReview()%></p>
						<p class="card-text">
							<small class="text-muted" id="score<%=j%>">평점 <%=listPage.get(j).getfScore()%>
								/ 10
							</small>
						</p>
					</div>
				</div>
			</div>

			<%
			j++;
			}
			%>

			<%
			}
			%>



			<div class="pagingArea" align="center">
				<button onclick="selectPage(1);">&lt;&lt;</button>

				<%
				if (cur <= 1) {
				%>
				<button disabled>&lt;</button>
				<%
				} else {
				%>
				<button onclick="selectPage(<%=cur - 1%>);">&lt;</button>
				<%
				}
				%>

				<%
				for (int p = st; p <= ed; p++) {
				%>

				<%
				if (p == cur) {
				%>
				<button disabled>
					<%=p%></button>
				<%
				} else {
				%>
				<button onclick="selectPage(<%=p%>);"><%=p%></button>
				<%
				}
				%>

				<%
				}
				%>

				<%
				if (cur >= mx) {
				%>
				<button disabled>&gt;</button>
				<%
				} else {
				%>
				<button onclick="selectPage(<%=cur + 1%>);">&gt;</button>
				<%
				}
				%>

				<button onclick="selectPage(<%=mx%>);">&gt;&gt;</button>

			</div>


			<div class="mainText2">나만의 여행지 추천</div>

			<div class="subText2">
				다른 이용자분들이 추천하는 여행지를 알고 싶다구요?? <br> 여기서는 관리자와 이용자분들이 여행지 / 플래너를
				추천해드립니다.
			</div>

			<div class="warp2">
				<div class="row">
					<div class="col-3">
						<div class="list-group selectPerson">
							<button type="button"
								class="list-group-item list-group-item-action">강지원 관리자</button>
							<button type="button"
								class="list-group-item list-group-item-action">구도욱 관리자</button>
							<button type="button"
								class="list-group-item list-group-item-action">곽민지 관리자</button>
							<button type="button"
								class="list-group-item list-group-item-action">박지환 관리자</button>
							<button type="button"
								class="list-group-item list-group-item-action">전소연 관리자</button>
							<button type="button"
								class="list-group-item list-group-item-action">이철원 관리자</button>
						</div>
					</div>

					<div class="col-9">
						<div class="card mb-3 selectedPerson">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="/planner/assets/images/부산2.jpg" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="card-title">지역 이름</h5>
										<p class="card-text">여기 정말 좋아요. 저 믿고 한번 가보십쇼</p>
										<p class="card-text">
											<small class="text-muted"><a href="">다른 여행지 or
													플래너 추천 보러가기..</a></small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="warp2">
				<div class="row">
					<div class="col-9">
						<div class="card mb-3 selectedPerson">
							<div class="row no-gutters">
								<div class="col-md-4">
									<img src="/planner/assets/images/부산1.jpg" alt="...">
								</div>
								<div class="col-md-8">
									<div class="card-body">
										<h5 class="card-title">Card title</h5>
										<p class="card-text">This is a wider card with supporting
											text below as a natural lead-in to additional content. This
											content is a little bit longer.</p>
										<p class="card-text">
											<small class="text-muted">Last updated 3 mins ago</small>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-3">
						<div class="list-group selectPerson">
							<button type="button"
								class="list-group-item list-group-item-action">이용자 1
								닉네임</button>
							<button type="button"
								class="list-group-item list-group-item-action">이용자 2
								닉네임</button>
							<button type="button"
								class="list-group-item list-group-item-action">이용자 3
								닉네임</button>
							<button type="button"
								class="list-group-item list-group-item-action">이용자 4
								닉네임</button>
							<button type="button"
								class="list-group-item list-group-item-action">이용자 5
								닉네임</button>
							<button type="button"
								class="list-group-item list-group-item-action">이용자 6
								닉네임</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="../common/footer.jsp"%>

	<script>
/* 		function selectArea(value){
			$.ajax({
				url: "/planner/choiceArea.ma?atype=" + value,
				data: {},
				success: function(result){
					for(z = 0 ; z < result.length ; z++){
						$("#area" + z).text(result[z].fArea);
						$("#phone" + z).text(result[z].fPhone);
						$("#name" + z).text(result[z].fName);
						$("#adress" + z).text(result[z].fAdress);
						console.log(z);
						console.log(result[z]);
					}
				}
			});
		}; */
	</script>

	<script>
		function selectArea(areaValue){
			$.ajax({
				url : "/planner/choiceArea.do?areaValue=" + areaValue,
				data : {},
				success : function(resultArea) {
					
					console.log("지역 선택 데이터 전송 확인");
					console.log(resultArea);
					
					for( z = 0 ; z < resultArea.length ; z++){
						console.log("반복문 실행 테스트");
						$("#area" + z).text(resultArea[z].fArea);
						$("#name" + z).text(resultArea[z].fName);
						$("#address" + z).text(resultArea[z].fAddress);
						$("#phone" + z).text(resultArea[z].fPhone);
						$("#review" + z).text(resultArea[z].fReview);
						$("#score" + z).text(resultArea[z].fScore);
					}
				}
			});
		};

    	function selectPage(value){
			console.log(value);
			$.ajax({
				url : "/planner/choicePage.do?value=" + value,
				data : {},
				success : function(result) {			
/* 					console.log(result);
					console.log(result.listSelectPage[0].fArea);
					console.log(result.pageInfo.startPage); */
					/*
						자바 스크립트 변수는 무조건 var, let, const 중 하나 입니다.
						var : 일반 변수
						let : { } 안에서만 사용하는 블록 변수
						const : 상수
						---------------------------
						jsp --> servlet --> HTML
						 즉 < % 과 같은 스크립트태그가 먼저 실행 된 후에
						 HTML 및 자바 스크립트가 실행되기 때문에
						 이 구문은 올바르지 않습니다.
					*/
					
					/* console.log(result); */
					/* console.log(result.listSelectPage); */
					/* console.log(result.listSelectPage[0].fArea); */
												
	
					for( z = 0 ; z < result.listSelectPage.length ; z++){
						/* console.log("반복문 실행 테스트"); */
						$("#img" + z).attr("src", result.listSelectPage[z].fName);
						$("#area" + z).text(result.listSelectPage[z].fArea);
						$("#name" + z).text(result.listSelectPage[z].fName);
						$("#address" + z).text(result.listSelectPage[z].fAddress);
						$("#phone" + z).text(result.listSelectPage[z].fPhone);
						$("#review" + z).text(result.listSelectPage[z].fReview);
						$("#score" + z).text(result.listSelectPage[z].fScore);
					} 
					
 					var st = result.pageInfo.startPage;
					var ed = result.pageInfo.endPage;
					var mx = result.pageInfo.maxPage;
					var limit = result.pageInfo.limit;
					var listCount = result.pageInfo.listCount;
					var cur = result.pageInfo.currentPage;
					
					/* 페이징 버튼 처리 */
					
					var $pagingBtnArea = $('.pagingArea');
					var startBtn = '<button onclick="selectPage(1);">&lt;&lt;</button>';		
				    var prevBtn = '';
					if ( cur <= 1) {
						prevBtn = '<button disabled>&lt;</button>';
					} else {
						prevBtn = '<button onclick="selectPage(' + (cur - 1) + ');">&lt;</button>';
					}
					
					var pageBtn = '';
					
					for( var p = st; p <= ed ; p++) {
						if( p == cur ) {
							pageBtn += '<button disabled>' + p + '</button>';
						} else {
							pageBtn += '<button onclick="selectPage(' + p + ');">' + p + '</button>';
						}
					}
					
							
				    var nextBtn = '';
				    if ( cur >= mx) {
						nextBtn = '<button disabled>&gt;</button>';
					} else {
						nextBtn = '<button onclick="selectPage(' + (cur + 1) + ');">&gt;</button>';
					}
				    var endBtn = '<button onclick="selectPage(' + mx +');">&gt;&gt;</button>';
					
				    $pagingBtnArea.html(startBtn);
				    $pagingBtnArea.html($pagingBtnArea.html() + prevBtn);
				    $pagingBtnArea.html($pagingBtnArea.html() + pageBtn);
				    $pagingBtnArea.html($pagingBtnArea.html() + nextBtn);
				    $pagingBtnArea.html($pagingBtnArea.html() + endBtn);
				}
			});
		};
	</script>

</body>

</html>
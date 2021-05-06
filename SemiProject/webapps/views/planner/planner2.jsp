<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.touchtrip.Allplanner.map.model.vo.MapData"%>

<%MapData[] mapList = (MapData[]) request.getAttribute("mapList");%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>플래너2</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script src="/planner/assets/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous">
	
</script>
<link rel="stylesheet" href="/planner/assets/css/header.css" />
<link rel="stylesheet" href="/planner/assets/css/footer.css" />
<link rel="stylesheet" href="/planner/assets/css/planner2.css">
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<!-- 지도 -->
<link href='/planner/assets/fullcalendar/lib/main.css' rel='stylesheet' />
<script src='/planner/assets/fullcalendar/lib/main.js'></script>
<script>
<!-- 지도 세부 설정 -->
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');

		var calendar = new FullCalendar.Calendar(calendarEl, {
			initialDate : '2020-09-12',
			editable : true,
			selectable : true,
			businessHours : true,
			dayMaxEvents : true, // allow "more" link when too many events
			events : [ {
				title : 'All Day Event',
				start : '2020-09-01'
			}, {
				title : 'Long Event',
				start : '2020-09-07',
				end : '2020-09-10'
			}, {
				groupId : 999,
				title : 'Repeating Event',
				start : '2020-09-09T16:00:00'
			}, {
				groupId : 999,
				title : 'Repeating Event',
				start : '2020-09-16T16:00:00'
			}, {
				title : 'Conference',
				start : '2020-09-11',
				end : '2020-09-13'
			}, {
				title : 'Meeting',
				start : '2020-09-12T10:30:00',
				end : '2020-09-12T12:30:00'
			}, {
				title : 'Lunch',
				start : '2020-09-12T12:00:00'
			}, {
				title : 'Meeting',
				start : '2020-09-12T14:30:00'
			}, {
				title : 'Happy Hour',
				start : '2020-09-12T17:30:00'
			}, {
				title : 'Dinner',
				start : '2020-09-12T20:00:00'
			}, {
				title : 'Birthday Party',
				start : '2020-09-13T07:00:00'
			}, {
				title : 'Click for Google',
				url : 'http://google.com/',
				start : '2020-09-28'
			} ]
		});

		calendar.render();
	});
</script>

<!--  지도 api 끝 -->

<!-- font url -->
<style>
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

	<div class="wrap1">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-5">

					<div class="p1">
						<div class="selectlist ">찜 목록</div>
						<!-- <div class="howmany">
          <button type="button" class="btn btn-primary btn-sm alone">혼자</button>
<button type="button" class="btn btn-primary btn-sm twice">둘이서</button>
<button type="button" class="btn btn-primary btn-sm third">셋이서</button>
<button type="button" class="btn btn-primary btn-sm forth">넷이서</button>
<button type="button" class="btn btn-primary btn-sm many">단체</button>
<button type="button" class="btn btn-primary btn-sm family">가족끼리</button>
</div>  -->


						<div class="searchspider">
							<%
							for (MapData saved : mapList) {
							%>
							<div class="spidersector">
								<div class="re_img">
									<img src="/planner/assets/images/<%=saved.getComp()%>.jpg"
										alt="Image" id="cartImgNo01">
								</div>
								<div class="re_text">
									<div class="re_text2 border border-primary">
										<p><%=saved.getComp()%></p>
										<p><%=saved.getAddress()%></p>
										<p><%=saved.getPhone()%></p>
									</div>
									<div>
										<button type="submit" class="btn btn-outline-info re_button" id="moveToPlan">
											<span id="re_but_font">일정등록</span>
										</button>
										<button type="submit"
											class="btn btn-outline-danger re_button1" id="deletePlan">
											<span id="re_but_font">일정삭제</span>
										</button>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>


				<!-- 우측 달력 -->

				<div class="col-md-5">
					<div class="p2">
						<!-- 달력API -->
						<div id='calendar'></div>

						<!-- 달력API 끝-->
						<!--  날짜와 일정 매칭 -->
						<div class="planschedule">
							<div class="plandetail">
								<span>세부 일정 계획</span>
							</div>
							<div class="finalplan">

								<table class="table detailplan">
									<thead class="thead-light">
										<tr>
											<th scope="col">날짜</th>
											<th scope="col" id="colmoney">예상금액</th>
											<th scope="col">세부내용</th>
											<th scope="col" id="colcheck"></th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">저장하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>
										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">등록하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>

										<tr>
											<th scope="row">04.23</th>
											<td id="colmoney">
												<div class="input-group moneydiv">
													<input type="text" class="form-control money"
														aria-label="Dollar amount (with dot and two decimal places)"
														placeholder="예상금액입력"> <span
														class="input-group-text">원</span>
												</div>
											</td>
											<td>
												<div class="input-group detaildiv">
													<textarea class="form-control detail"
														aria-label="With textarea" placeholder="상세계획을 입력하세요."></textarea>
												</div>
											</td>
											<td id="colfpbutton">
												<button type="submit"
													class="btn btn-outline-info finalplanbutton ">
													<span id="re_but_font">등록하기</span>
												</button>
												<button type="submit"
													class="btn btn-outline-danger finalplanbutton1 ">
													<span id="re_but_font">삭제하기</span>
												</button>
											</td>
										</tr>

									</tbody>
								</table>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../common/footer.jsp"%>
	
	<!--  
	
	<script>
	$('#moveToPlan').on('click', function(){
		
		$.ajax({
			url : '/planner/moveToPlan.pl',
			data : mapData,
			success : function(data) {
				console.log(data);
			}
		});
		
	});
	
	
	</script>
	
	-->

</body>
</html>
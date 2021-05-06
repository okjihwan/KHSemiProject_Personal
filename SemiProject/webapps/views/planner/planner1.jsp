<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
int i = 0;
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>플레너</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<script src="../../assets/js/jquery-3.6.0.min.js"></script>
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

<link rel="stylesheet" href="../../assets/css/header.css" />
<link rel="stylesheet" href="../../assets/css/footer.css" />
<link rel="stylesheet" href="../../assets/css/planner1.css">

<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />
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

	<!-- 좌측 검색 영억 -->
	<div class="wrap1">
		<div class="container-fluid">
			<div class="row">
				<div class="col-3">
					<div class="p1">
						<div>
							<div class="input-group mb-3">
								<input type="text" id="searchKeyword" class="form-control"
									placeholder="지역을 검색해주세요." aria-label="Recipient's username"
									aria-describedby="button-addon2">
								<div class="input-group-append">
									<button class="btn btn-outline-primary" type="button"
										id="button-addon2" onclick="searchList('전체');">검 색</button>
								</div>
							</div>
						</div>
						<div>
							<button class="btn btn-outline-primary re_but"
								onclick="searchList('호텔');">
								<span id="re_but_font">호 텔</span>
							</button>
							<button class="btn btn-outline-primary re_but"
								onclick="searchList('장소');">
								<span id="re_but_font">장 소</span>
							</button>
							<button class="btn btn-outline-primary re_but"
								onclick="searchList('맛집');">
								<span id="re_but_font">맛 집</span>
							</button>
						</div>

						<div class="searchspider" id="searchbdiv"></div>
					</div>

				</div>




				<!-- 지도 -->
				<div class="col-7">
					<div class="p2">
						<div id="map" style="width: 1345px; height: 800px;">
							<span class="spl1com">
								<button class="btn btn-outline-primary pl1com" type="submit"
									onclick="goPlanner2Page();">작성완료</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=96273a396a102a97082fff99fdd7b2f0"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center : new kakao.maps.LatLng(35.1798159, 129.0750224),
			level : 8
		};

		var map = new kakao.maps.Map(container, options);
		var positions = [];
		/* 
		for(let i = 0; i<data.length;i++){
			positions.put({content:'<div>'+data[i].yname+'</div>'
				,latlng:new kakao.maps.LatLng(data[i].yx, data[i].yy)
				});
		} */
		var positions = [ {
			content : '<div>부산광역시청</div>',
			latlng : new kakao.maps.LatLng(35.1798159, 129.0750224)
		}, {
			content : '<div>생태연못</div>',
			latlng : new kakao.maps.LatLng(33.450936, 126.569477)
		}, {
			content : '<div>텃밭</div>',
			latlng : new kakao.maps.LatLng(33.450879, 126.569940)
		}, {
			content : '<div>근린공원</div>',
			latlng : new kakao.maps.LatLng(33.451393, 126.570738)
		} ];

		for (var i = 0; i < positions.length; i++) {
			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
				map : map, // 마커를 표시할 지도
				position : positions[i].latlng
			// 마커의 위치
			});

			// 마커에 표시할 인포윈도우를 생성합니다 
			var infowindow = new kakao.maps.InfoWindow({
				content : positions[i].content
			// 인포윈도우에 표시할 내용
			});

			// 마커에 mouseover 이벤트와 mouseout 이벤트를 등록합니다
			// 이벤트 리스너로는 클로저를 만들어 등록합니다 
			// for문에서 클로저를 만들어 주지 않으면 마지막 마커에만 이벤트가 등록됩니다
			kakao.maps.event.addListener(marker, 'mouseover', makeOverListener(
					map, marker, infowindow));
			kakao.maps.event.addListener(marker, 'mouseout',
					makeOutListener(infowindow));
		}

		// 인포윈도우를 표시하는 클로저를 만드는 함수입니다 
		function makeOverListener(map, marker, infowindow) {
			return function() {
				infowindow.open(map, marker);
			};
		}

		// 인포윈도우를 닫는 클로저를 만드는 함수입니다 
		function makeOutListener(infowindow) {
			return function() {
				infowindow.close();
			};
		}

		var planList = [];

		function searchList(type) {

			console.log(type + " : " + $('#searchKeyword').val());

			$
					.ajax({
						url : '/planner/data.search',
						data : {
							type : type,
							keyword : $('#searchKeyword').val()
						},
						success : function(data) {
							/*console.log(data);*/
							var $divList = $('#searchbdiv');
							$divList.empty();

							for (var i = 0; i < data.length; i++) {
								// 내용을 담을 div
								var $listdiv = $('<div class="spidersector">');
								var $text = $('<div class="re_text2 border border-primary">');
								var $btn = $('<button class="btn btn-outline-info re_button" >');
								$btn.text("추가");

								// 담을 내용 과 div 생성
								var $img = $('<div style = "z-index :3;" class="re_img"><img src="/planner/assets/images/' + data[i].comp + '.jpg" alt="Image" id="cartImgNo' + i+1 + ' ">');
								var $name = $('<p>').text(data[i].comp);
								var $address = $('<p>').text(data[i].address);
								var $phone = $('<p>').text(data[i].phone);

								$text.append($name).append($address).append(
										$phone).append($btn);
								$listdiv.append($img).append($text);

								$divList.append($listdiv);

								/*console.log($divList);*/
							}

							$('div.spidersector button')
									.each(
											function(idx, item) {
												$(this)
														.on(
																'click',
																function() {
																	if (planList
																			.includes(data[idx])) {
																		for (let i = 0; i < planList.length; i++) {
																			if (planList[i] === data[idx]) {
																				planList
																						.splice(
																								i,
																								1);
																				i--;
																			}
																		}
																		alert("해당 지역 삭제!");
																	} else {
																		planList
																				.push(data[idx]);
																		alert("해당 지역 등록 완료!");
																	}
																	console
																			.log(planList);
																});
											});
							/* 
							console.log("된다");
							
							// 데이터를 담을 객체 생성
							var saveList = {};
							saveList.img = $img;
							saveList.name = $name;
							saveList.address = $address;
							saveList.phone = $phone;
							
							console.log(saveList);
							
							
							
							});
							 */

						}
					});
		};
	</script>
	<form id="sendPlan" action="/planner/goPlanner2.pl" method="post">
		<textarea style="display: none;" id="testMapData" name="mapData"></textarea>
	</form>
	<script>
		function goPlanner2Page() {
			$('#testMapData').val(JSON.stringify(planList));
			$('#sendPlan').submit();

		}
	</script>

	<%@ include file="../common/footer.jsp"%>

</body>

</html>
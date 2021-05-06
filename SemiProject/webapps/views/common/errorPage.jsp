<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    
<%
	String msg = (String)request.getAttribute("error-msg");
%>
<!doctype html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>에러 페이지</title>
	<link rel="stylesheet" href="/planner/assets/css/header.css" />
</head>
<body>

	
	
	<section>
		<h1>ERROR 입니다.</h1>
		<h3 style="color : red;"> ERROR :: <%= msg %> </h3>
		<p>
		에러가 발생했습니다. 처음화면으로 돌아가세요.<br>
		불편을 끼쳐드려 죄송합니다. 해당페이지가 계속 반복된다면<br>
		담당자에게 문의 부탁드립니다.<br>
		<br>
		tel) 	 051) 956-1004     평일) 09:00 ~ 17:00 <br>
		Email)   busantrip@touchtrip.com<br>
		address) 부산광역시 부산구 부산동 9길 99번지<br>
				 (주)터치트립 서비스 개발팀<br>
		
		<a href="/planner/index.jsp">홈 화면으로 돌아가기....</a>
		
		</p>
	</section>
	
</body>
</html>

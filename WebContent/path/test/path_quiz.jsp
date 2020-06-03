<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../request/req_video.jsp">req_video.jsp로(상대경로)</a><br>
	<a href="/JSPBasic/request/req_video.jsp">req_video.jsp로(절대경로)</a><br>
	
	<!-- a태그를 이용해서 TestServlet페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../banana">testServlet.java로(상대경로)</a><br>
	<a href="/JSPBasic/banana">testServlet.java로(절대경로)</a><br>
	<!-- img태그를 이용해서 java.png -->
	<img src= "../../request/img/java.png" width = "100px" height = "100px" alt = "자바" >java.png 출력(상대경로)<br>
	<img src= "/JSPBasic/request/img/java.png" width = "100px" height = "100px" alt = "자바" >java.png 출력(절대경로)<br>
		
</body>
</html>
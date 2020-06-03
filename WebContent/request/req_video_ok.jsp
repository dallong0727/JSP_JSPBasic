<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String name = request.getParameter("name"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% if(name == null) {%>
		잘못들어왔습니다.
	<% } else if(name.equals("java")) { %>
	<div align = "center">
		<h2>강의영상</h2>
		<hr>
		<p>자바 수업소개</p>
		
		<iframe width="560" height="315" src="https://www.youtube.com/embed/SXX2cnmL0Ng" frameborder="0" 
		allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } else if(name.equals("javascript")) { %>
	<div align = "center">
		<h2>강의영상</h2>
		<hr>
		<p>자바스크립트 수업소개</p>
		
		<iframe width="560" height="315" src="https://www.youtube.com/embed/nOTpuof2YG8" frameborder="0" 
		allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } else if(name.equals("oracle")) { %>
	<div align = "center">
		<h2>강의영상</h2>
		<hr>
		<p>오라클 수업소개</p>
		
		<iframe width="560" height="315" src="https://www.youtube.com/embed/DEVR_R2Hva0" frameborder="0" 
		allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<% } %>
	
</body>
</html>
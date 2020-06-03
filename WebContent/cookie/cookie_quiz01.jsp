<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	Date클래스를 이용해서 이 페이지에 접한 시간을 xxxx년 xx월 일 형태로 생성
	show라는 이름으로 쿠키를 생성
	다음페이지에 넘어가서 이 쿠키를 화면에 출력.
	*/
	String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy년MM월dd일"));

	/*
	Date d = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	String date = sdf.format(d);
	*/
	Cookie cookie = new Cookie("show", date);
	cookie.setMaxAge(3600);
	response.addCookie(cookie);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<a href="cookie_quiz01_result.jsp">쿠키 확인하기</a>

</body>
</html>
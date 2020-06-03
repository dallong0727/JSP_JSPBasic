<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies();
	String s = "";
	if(cookies != null) {
		for(Cookie c : cookies) {
			if(c.getName().equals("show")) {
				s = c.getValue(); //쿠키의 값을 꺼냄
			}
		}
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	쿠키값 : <%= s %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String name = (String) request.getAttribute("name"); 
Double avg = (Double) request.getAttribute("avg"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= name %>님 평균은 <%=avg %>점 불합격입니다.
</body>
</html>
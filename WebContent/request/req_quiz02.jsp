<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% int num = 1; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_quiz_ok02.jsp로 이동</h2>
	
	<% while(num <= 30) { %>
		<a href = "req_quiz_ok02.jsp?student=<%=num%>"> <%=num%>번 학생<br></a>
		<% num++; %>
		<% } %>
</body>
</html>
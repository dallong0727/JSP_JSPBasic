<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% for(int i = 1; i <= 10; i++)  {%>
		<%= i %>
	<% } %>
	
	<h2>구구단 3단을 out.println으로 출력</h2>
	<h3>구구단 3단을 표현식을 통해서 출력</h3>
	
	<% for(int i = 1; i <= 9; i++) {
		out.println(3 + " * " + i + " = " + 3 * i + "<br/>");
	} %>
	<br/>
	
	<% for(int i = 1; i <= 9; i++) {%>
		 3 * <%=i %>  = <%= i * 3 %><br/>
	<% } %>
	
	<h2>반복문으로 체크박스에 1~20까지 이름을 붙여서 가로 출력</h2>
		좌석선택
	<% for(char c = 'A'; c <='T'; c++) {%>	
		<%= c %> <input type = "checkbox" name="seat">
	<% } %>	 
	
</body>
</html>
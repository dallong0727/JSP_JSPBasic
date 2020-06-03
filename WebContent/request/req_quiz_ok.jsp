<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String height = request.getParameter("height");
	String weight = request.getParameter("weight");
	
	double num = Double.parseDouble(weight) / ((Double.parseDouble(height) / 100.0 * Double.parseDouble(height) / 100.0));
	double bmi = Math.round(num * 100)/100.0;
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	이름 : <%= name %><br>
	키 : <%= height %><br>
	몸무게 : <%= weight %><br>
	BMI : <%= bmi %><br>
	
	<% if(bmi >= 25) { %>
		과체중
	<% } else if(bmi <= 18) { %>
		저체중
	<% } else { %>
		정상
	<% } %>
</body>
</html>
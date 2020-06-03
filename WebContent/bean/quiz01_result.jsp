<%@page import="com.bean.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Score score = (Score) request.getAttribute("Score"); %>
	
	아이디 : <%=score.getId() %>
	비밀번호 : <%=score.getPw() %>
	이름 : <%=score.getName() %>
	주소 : <%=score.getAddress() %>
	평균 : <%=score.getAvg() %>
	합계 : <%=score.getSum() %>
	
<%-- 
	<jsp:useBean id="Score" class="com.bean.Score" scope="request"/>
	<jsp:getProperty name="Score" property="id" /><br>
	<jsp:getProperty name="Score" property="pw" />
	<jsp:getProperty name="Score" property="name" />
	<jsp:getProperty name="Score" property="address" />
	평균 : <%=avg %>
	합계 : <%=sum %>
--%>
</body>
</html>
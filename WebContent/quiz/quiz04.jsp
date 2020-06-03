<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<HashMap<String,String>> list = new ArrayList<>();
	int sum =0;
	
	sum += Integer.parseInt("price") * Integer.parseInt("count");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border = "1" align ="center">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>가격</td>
			<td>수량</td>
		</tr>
		<% if(!list.isEmpty()) {%>
			<% for(int i = 0; i < list.size(); i++) { %>
				<tr>
					<td><%=list.get(i).get("num")%></td>
					<td><%=list.get(i).get("name")%></td>
					<td><%=list.get(i).get("price")%></td>
					<td><%=list.get(i).get("count")%></td>
				</tr>	
			<% } %>
				<tr>
					<td colspan="4">총 금액<%= sum %></td>
				</tr>
		<% } else { %>
			<tr>	
				<td colspan="4">장바구니가 비었습니다</td>
			<tr>
		<% } %>
			<tr>
				<td colspan="4"><a href = "quiz02.jsp"></a>계속 쇼핑하기</td>
			</tr>
	</table>
</body>
</html>
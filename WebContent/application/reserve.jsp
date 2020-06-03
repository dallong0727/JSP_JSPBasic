<%@ page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//인증이 없는 사람은 접근하지 못하도록 처리
	
	if(session.getAttribute("check") == null) {
		response.sendRedirect("auth.jsp");
	}
	
	boolean check = (boolean) session.getAttribute("check");
	
	List<String> list = new ArrayList<>();
	
	//화면에 들어왔을 때 app좌석 정보가 있다면, 정보를 얻어옵니다.
	if(application.getAttribute("list") != null) {
		list = (List<String>) application.getAttribute("list");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>콘서트 좌석 예매</h2>
		<h4>예매할 좌석을 체크한 후 예약 버튼을 눌러주세요.</h4>
	</div>
	<hr/>
	<form action="reserve_ok.jsp" method="post">
	<p align="center">
		<strong>좌석 배치도</strong><br/>&nbsp;&nbsp;&nbsp;&nbsp;
		<% for(char c='A'; c<='Z'; c++) { %>
			<small><%=c %></small>&nbsp;&nbsp;
		<% } %> <br/>
		
		<% for(int i=1; i<=6; i++) { %>
			<%= i %>
			<% for(char c='A'; c<='Z'; c++) { %>
				<% if(list.contains(c + "-" + i)) { %>
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>" disabled> 
				<% } else { %>
					<input type="checkbox" name="seat" value="<%=c %>-<%=i %>" > 
				<% } %>  
			<% } %>
			
			<%= i == 3 ? "<br>" : ""%>
			
			<br/>
		<% } %><br/>
	 
	<%-- 	<% for(int i=4; i<=6; i++) { %>
			<%= i %>
			<% for(char c='A'; c<='Z'; c++) { %>
				<input type="checkbox" name="seat" value="<%=c %>-<%=i %>"/>
			<% } %><br/>
		<% } %><br/><br/> --%>
		
		<input type="submit" value="예약">&nbsp;
		<input type="reset" value="초기화">
	</p>
	</form>
</body>
</html>
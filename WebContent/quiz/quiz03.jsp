<%@page import="org.eclipse.jdt.internal.compiler.env.IModule.IService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	
	ArrayList<HashMap<String,String>> list = new ArrayList<>();
	
	boolean bool = true;
	if(!list.isEmpty()) {
		for(HashMap<String, String> map : list) {
			map.put("num", num);
			map.put("name", name);
			map.put("price", price);
			map.put("count", String.valueOf(Integer.parseInt(map.get("count"))+1));
		}
	}
	if(bool) {
		HashMap<String, String> map = new HashMap<>();
			map.put("num", num);
			map.put("name", name);
			map.put("price", price);
			map.put("count", "1");
			list.add(map);
	}
	session.setAttribute("name", list);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<%= name %>이(가) 추가 되었습니다.
		<a href = "quiz02.jsp">계속 쇼핑하기</a>
		<a href = "quiz04.jsp">장바구니 확인하기</a>
	</div>
</body>
</html>
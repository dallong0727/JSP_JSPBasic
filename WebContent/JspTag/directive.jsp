<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	String now = sdf.format(date);
	
	//list
	List<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("이순신");
	list.add("신사임당");
	
	//map
	Map<Integer,String> map = new HashMap<>();
	map.put(1,"홍길동");
	map.put(2,"이순신");
	
	//set
	Set<Integer> set = new HashSet<>();
	set.add(1);
	set.add(2);
	
	List<Integer> list2 = new ArrayList<>(map.keySet());
			
	Iterator<Integer> iter = set.iterator();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	지금 : <%= now %><br/>
	리스트 : <%= list.toString() %><br/>
	맵 : <%= map.toString() %><br/>
	셋 : <%= set.toString() %><br/>
	
	<%for(int i = 0; i < list.size();i++) { %>
		<%= list.get(i) %><br/>
	<% } %>
	
	<%-- 
	<% Set<Entry<Integer, String>> i = map.entrySet(); %>
	<% for(Entry<Integer, String> i : iter) { %>
		<%=i.getKey() %>
		<%=i.getValue() %> 
	--%>
		
	<% for(Integer i :list2) { %>
		 "키 : "+ <%= i %> + ", 벨류값 : "+ <%= map.get(i) %><br/>
	<% } %>
	
	<% while(iter.hasNext()) { %>
		"set값 :" <%= iter.next() %><br/>
	<% } %>
</body>
</html>
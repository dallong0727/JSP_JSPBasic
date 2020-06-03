<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
	1. 정수를 저장하는 List를 선언합니다.
	2. 1~45까지 로또번호를 생성하고 리스트에 추가
	3. 중복되지 않은 숫자의 6개의 로또번호를 저장하면 됩니다.
	4. 화면에 출력
	5. 같은 방법으로 Set을 이용해서라도 처리
	*/
	Random ran = new Random();
	List<Integer> list = new ArrayList<>();
	Set<Integer> set = new TreeSet<>();
	Iterator<Integer> iter = set.iterator();
	
	while(list.size() < 6) {
		int num = ran.nextInt(45)+1;
		if(!list.contains(num)) {
			list.add(num);
		}
		Collections.sort(list);
	}
	
	while(set.size() < 6) {
		int num = ran.nextInt(45)+1;
		set.add(num);
	}
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로또 번호
	<% for(int i : list) { %>
		<%= i %>	
	<% } %>
	<br>
	로또 번호
	<% for(int i2 : set) {%>
	 <%= i2 %>		
	<% } %>
	<br>
	로또번호
	<% while(iter.hasNext()) { %>
		<%= iter.next() %>
	<% } %>
</body>
</html>
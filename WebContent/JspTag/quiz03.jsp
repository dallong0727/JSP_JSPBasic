<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	List<String> list = new ArrayList<>();
	String[] str = {"라이언", "무지", "아파치", "제이지", "프로도", "네오", "튜브", "콘"};
	Random ran = new Random();

	int index = 0;
	String character="";
	
	public void party() {
		int i = ran.nextInt(8);
		character = str[i];
		list.add(character);
		index++;
		if(list.size() > 10) {
			list.clear();
			index = 0;
		}
	}
%>
<%
	int count = 0;
	party();
	for(int j = 0; j < list.size();j++) {
		if(list.get(j).equals(character)) {
			count++;
		}
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<b>[<%= character %>]</b> 님이 입장<br/>
	현재 같은 카카오 프렌즈는 <%= count %>명입니다.
	
	<h2>현재 구성 정보</h2>
	
	<%= list.toString() %> (<%= index %>명 참가중)
</body>
</html>
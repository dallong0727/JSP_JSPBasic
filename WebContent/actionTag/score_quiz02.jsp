<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60점 이상이면 score_quiz03으로 이동해서 ~~님 평균은 xx점 합격입니다. 를 출력
	평균이 60점 이하이면 score_quiz04으로 이동해서 ~~님 평균은 xx점 불합격입니다. 를 출력
	
	조건 : 세션을 사용하지 않습니다.	
	*/
	
	String name = request.getParameter("name");
	String kor = request.getParameter("kor");
	String eng = request.getParameter("eng");
	String math = request.getParameter("math");
	double avg = (Integer.parseInt(kor) + Integer.parseInt(eng) + Integer.parseInt(math)) / 3.0 ;
	
	//request에 강제로 저장
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	
/* 	if(avg >= 60) {
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	} else {
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	} */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<% if(avg >= 60) { %>
		<jsp:forward page="score_quiz03.jsp"/>
	<% } else { %>
		<jsp:forward page="score_quiz04.jsp"/>
	<% } %>
	
</body>
</html>
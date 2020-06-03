<%@page import="com.bean.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
1. 폼태그를 처리할 수 있는 빈을 선언하고
2. 폼값을 받아서 평균과 총점을 구합니다.
3. quiz01_result페이지로 이동해서
	학생정보와 평균, 총점을 모두 출력하세요.
 --%>
 
 <%
 	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int math = Integer.parseInt(request.getParameter("math"));
	int sum = kor + math;
	double avg = (double) sum / 2.0;
	
 	Score score = new Score(id, pw, name, address, kor, math, sum, avg);
 	
	request.setAttribute("Score", score);
	
	request.getRequestDispatcher("quiz01_result.jsp").forward(request, response);
 %>
<%-- 
<jsp:useBean id="Score" class="com.bean.Score" scope="request"/>
<jsp:setProperty name="Score" property="*"/>
<jsp:forward page="quiz01_result.jsp"/> 
--%>
    
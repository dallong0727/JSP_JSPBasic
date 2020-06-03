<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idcheck = request.getParameter("idCheck");
	/*
	1. id=abc이고 pw=1234라면 로그인 성공이라고 간주하고 (user_id, id) 쿠키생성
	2. 아이디나 비밀번호가 틀렸으면 다시 로그인 페이지로 리다이렉트
	3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트해서 화면에 "id님 로그인중입니다." 출력
	*/
	
	if(id.equals("abc") && pw.equals("1234")) {
		Cookie cookie = new Cookie("user_id", id);
		cookie.setMaxAge(3600);
		response.addCookie(cookie);
		if(idcheck != null) {
			Cookie cookie2 = new Cookie("idCheck", id);
			cookie2.setMaxAge(3600);
			response.addCookie(cookie2);
		} 
		response.sendRedirect("cookie_ex01_welcome.jsp");
	} else {
		response.sendRedirect("cookie_ex01.jsp");	
	}
	
%>

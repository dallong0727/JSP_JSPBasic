<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	//사용자가 입력한 값
	String code = request.getParameter("code");
	//세션에 저장된 인증 문자열
	String random = (String) session.getAttribute("random");
	
	//인증 비교
	if(code.equals(random)) {
		
		//인증성공
		session.setAttribute("check", true);
		response.sendRedirect("reserve.jsp");
	} else {
		response.sendRedirect("auth.jsp");
	}
%>
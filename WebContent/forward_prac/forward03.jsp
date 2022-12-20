<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	
	System.out.println(mid);
	System.out.println(pwd);
	
	out.println(mid);
	out.println(pwd);
	%>
</body>
</html>
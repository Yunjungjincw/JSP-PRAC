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
		
		//콘솔에 출력
		System.out.println("id="+mid);
		System.out.println("pw="+pwd);
	
		// 브라우저 화면에 출력
		out.write("id="+mid+"<br> ");
		out.write("pw="+pwd+"<br> ");
	%>
	
	<jsp:forward page="forward03.jsp">
	<jsp:param value="<%=mid%>" name="mid"/>
	<jsp:param value="<%=pwd%>" name="pwd"/>
	</jsp:forward>
	
	<a href="forward03.jsp?id2=<%=mid %>&pwd2=<%=pwd%>">forward03.jsp문서로 이동</a>
</body>
</html>
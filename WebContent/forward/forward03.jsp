<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>forward03.jsp 문서</h2>
	<pre>이 문서는 forward02.jsp 문서에서 넘어온 값을 받는 서버측 페이지</pre>
	<% 	
	String  mid = request.getParameter("id2");
	String  pwd = request.getParameter("pwd2");
	//콘솔 출력
	System.out.println("아래는 forward02.jsp 에서 받은 파라미터값");
	System.out.println("ID: "+mid);
	System.out.println("PW: "+ pwd);
	
	//브라우저 출력
		out.write("ID: "+mid +"<br>");
		out.write("PW: "+pwd+"<br>");
	%>
	
	
	
	
</body>
</html>
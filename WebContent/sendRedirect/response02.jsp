<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>response02.jsp 문서</h2>
<pre> 이 문서는 response01_p93.jsp에서 
보내온 user의 정보를 받아서 출력하는 서측 페이지 이다</pre>
<% 	
	String  mid = request.getParameter("mid");
	String  pwd = request.getParameter("pwd");
	//콘솔 출력
	System.out.println("ID: "+mid);
	System.out.println("PW: "+ pwd);
	
	//브라우저 출력
		out.write("ID: "+mid +"<br>");
		out.write("PW: "+pwd+"<br>");
		
	// 01.jsp -> 02.jsp -> 03.jsp
	// user가 보는 페이지 01.jsp -> 03.jsp
	// 거쳐가는 페이지 02.jsp
	// 거쳐가는 페이지에서 파라미터를 전달시키지 않는다.
	// 아래는 파라미터를 전달 시키기 위한 작업
	// response.sedRedirect("페이지주소?파라미터명=값&파라미터명=값")
	//response.sendRedirect("response03.jsp?id2="+mid+"&pw2=+"+pwd);
	//개발자가 의도를 가지고 데이터를 넘긴 것.
		
		%>	
	<!-- 01에서  받은 정보를 파라미터를 통해 03으로 보내준다.  -->
	<a href="response03.jsp?id2=<%=mid %>&pw2=<%=pwd%>">response03.jsp문서로 이동</a>
	
</body>
</html>
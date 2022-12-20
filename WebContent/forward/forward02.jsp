<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward01 에서 받은 데이터 페이지</title>
</head>
<body>
<%
String  mid = request.getParameter("mid");
String  pwd = request.getParameter("pwd");

//콘솔 출력
System.out.println("ID: "+mid);
System.out.println("PW: "+ pwd);

//브라우저 출력
	out.write("ID: "+mid +"<br>");
	out.write("PW: "+pwd+"<br>");
	

%>
<!-- 참고 : forward 하는 또 다른 방법 (P559 35~37라인)
	RequestDispatcher dispatcher = request.getRequestDispatcher("이동할 페이지");
	
	dispatcher.forward(SevletRequest객체, SevletResponse객체);
 -->
 
 
<%--
   <jsp:forward page="경로및파일명">
   	<jsp:param value="파라미터값" name="파라미터명"/>
   	<jsp:param value="파라미터값" name="파라미터명"/>
   </jsp:forward> 
   //forward03.jsp?id2=mid&pwd2=pwd
   --%>
	 <jsp:forward page="forward03.jsp">
	 	<jsp:param value="<%=mid%>" name="id2"/>
	 	<jsp:param value="<%=pwd%>" name="pwd2"/>
	 </jsp:forward>
<br>
<a href="forward03.jsp?id2=<%=mid %>&pwd2=<%=pwd%>">forward03.jsp문서로 이동</a>

</body>
</html>
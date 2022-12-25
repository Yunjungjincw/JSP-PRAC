<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 입력 확인</title>
</head>
<body>
	<%
		String empno = request.getParameter("empno");
		String ename = request.getParameter("ename");
		String job = request.getParameter("job");
		String mgr = request.getParameter("mgr");
		String deptno = request.getParameter("deptno");

		
		System.out.println("empno"+empno);
		System.out.println("ename"+ename);
		System.out.println("job"+job);
		System.out.println("mgr"+mgr);
		System.out.println("deptno"+deptno);
		
		out.write("empno="+empno+"<br>");
		out.write("ename="+ename+"<br>");
		out.write("job="+job+"<br>");
		out.write("mgr="+mgr+"<br>");
		out.write("deptno="+deptno+"<br>");
%>
		<jsp:forward page="empView.jsp">
		<jsp:param value="<%=empno %>" name="empno"/>
		<jsp:param value="<%=ename %>" name="ename"/>
		<jsp:param value="<%=job %>" name="job"/>
		<jsp:param value="<%=mgr %>" name="mgr"/>
		<jsp:param value="<%=deptno %>" name="deptno"/>
		</jsp:forward>

		<a href="empView.jsp?empno=<%=empno %>&ename=<%=ename %>&job=<%=job %>&mgr=<%=mgr %>&deptno=<%=deptno %>">empView.jsp문서로 이동</a>

</body>
</html>
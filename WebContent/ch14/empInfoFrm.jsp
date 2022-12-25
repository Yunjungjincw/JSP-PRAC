<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="empinfo" id="empinfo" method="get" action="<%=request.getContextPath()%>/ch14/empInsertProc.jsp"><br>
		EMPNO: <input type="text" name="empno" value="" placeholder="EMPNO"><br>
		ENAME: <input type="text" name="ename" value="" placeholder="ENAME"><br>
		JOB: <input type="text" name="job" value="" placeholder="JOB"><br>
		MGR: <input type="text" name="mgr" value="" placeholder="MGR"><br>
		DEPTNO: <input type="text" name="deptno" value="" placeholder="DEPTNO"><br>
		
		<input type="submit" value="입력">
	
	
	</form>
</body>
</html>
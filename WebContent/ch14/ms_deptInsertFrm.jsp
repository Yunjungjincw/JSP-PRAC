<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

</style>
</head>
<body>
	<h2>부서정보입력(deptInsertFrm.jsp)</h2>
<!-- 	부서번호는 number이용 41부터 999까지
	name="deptno"
	부서명은 text name="dname" id="dname"
	소재지 text name="loc" id="loc"	
	user입력받아 처리하는 서버측페이지는 deptInsertProc.jsp -->
	
	<pre>
	여기에서는 부서번호를 올바르게 입력한다는 가정하에 받음.
	실제로 부서번호는 db에서 pk 이므로 not null- > 중복 X
	입력 받으면 x 
	why-> submit하면 넘어감 
	-> 쿼리실행시 제약조건 에러발생 
	-> 입력전에 기존 내용과 비교 조회해서 데이터 넣어줘야함
	</pre>
	
	<form name="deptInsFrm" id="deptInsFrm" action="ms_deptInsertProc.jsp">
	<table border="1">
	<tr>
		<th>부서번호</th>
		<td><input type="number" name="deptno" id="deptno" min="91" max="999">	</td>
	</tr>
	<tr>
		<th>부서명</th>
		<td><input type="text" name="dname" id="dname">	</td>
	</tr>
	<tr>
		<th>소재지</th>
		<td><input type="text" name="loc" id="loc">	</td>
	</tr>
	<tr>
		<th colspan="2">
			<input type="submit" value="입력"/>
			<input type="reset" value="취소"/>
		</th>
		</tr>
	</table>
	</form>
</body>
</html>
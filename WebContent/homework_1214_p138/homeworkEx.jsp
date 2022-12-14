<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>p138 연습</title>
</head>
<body>
<h2>과목</h2>
	<form action="homework.jsp">
	<fieldset>
	<legend> 과목 선택</legend>
	<ul>
		<li>이름: <input type="text" name="mname" id="mname" size="10" maxlength="10" required="required" autofocus="autofocus" placeholder="이름 입력"/></li>
		<li><input type="checkbox" name="subject" value="math"> 수학</li>
		<li><input type="checkbox" name="subject" value="science"> 과학</li>
		<li><input type="checkbox" name="subject" value="languege"> 언어</li>
	</ul>
	
	<input type="submit" value="확인"/>
	<input type="reset" value="취소"/>
	
	</fieldset>
	</form>
</body>
</html>
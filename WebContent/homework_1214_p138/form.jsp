<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 생성</title>
</head>
<body>
<!-- <form> 태그는 웹 페이지에서의 입력 양식을 의미합니다. 
로그인 창이나, 회원가입 폼 등이 이에 해당되죠. 
텍스트 필드에 글자를 입력하거나, 
체크박스나 라디오 버튼을 클릭하고 제출 버튼을 누르면 
백엔드 서버에 양식이 전달되어 정보를 처리하게 됩니다. -->
	<form action="viewParameter.jsp" method="post">
	이름: <input type="text" name="name" size="10"><br> 
	<!-- 이름이 name인 요청 파라미터 입력 폼을 생성 -->
	주소: <input type="text" name="address" size="30"><br>
	<!-- 이름이 address인 요청 파라미터 입력 폼을 생성 -->
	좋아하는 동물:
	<input type="checkbox" name="pet" value="dog">강아지
	<input type="checkbox" name="pet" value="cat">고양이
	<input type="checkbox" name="pet" value="pig">돼지<br>
	<!-- 이름이 pet인 요청 파라미터의 체크박스를 생성한다. -->
	<input type="submit" value="전송"></form>
</body>
</html>
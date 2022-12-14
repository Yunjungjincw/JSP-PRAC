<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>frm1</title>
</head>
<body>
<h2>frm1</h2>
	<form name="frm1" id="frm1" method="get" action="ok.jsp">
	<fieldset>
	<legend>개인정보</legend>
	<li>
	      이름 :<input type="text" name="mname" id="mname" size="10" maxlength="10" required="required" autofocus="autofocus" placeholder="이름 입력" />
	</li> 
	 <li>
	      비번 :<input type="password" name="mpwd" id="mpwd" size="10" required="required" autofocus="autofocus" placeholder="PW 입력"/>
	</li>
	<li>좋아하는 동물(다중선택):
				<input type="checkbox" name="animals" id="animals0" value="dog"/>강아지
	     	<input type="checkbox" name="animals" id="animals1" value="cat"/>고양이
	     	<input type="checkbox" name="animals" id="animals2" value="cow"/>소
	     	<input type="checkbox" name="animals" id="animals3" value="pig"/>돼지
	     	<input type="checkbox" name="animals" id="animals4" value="tiger"/>호랑이
	</li>
	   <input type="submit" value="확인"/>
	   <input type="reset" value="취소"/>
	  </fieldset>
	</form>
</body>
</html>

<!-- ?부터 문자열을 쿼리스트링이라고 한다.
?파라미터명 = value&파라미터명=value
파라미터와 value가 한쌍 -->
<!-- 파라미터명은 input의 name에 해당됨. -->



/* 이름과 id가 frm1
user가 입력한 데이터가 주소표시줄에 노출되는 방식
user가 입력한 데이터를 받아서 처리하는 서버측 페이지는 ok.jsp*/
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<!-- id는 page 안에서 중복 사용 불가하며 주로 js 에서 다룰려고 지정 
			name도 자바스크립트로 속성이나 값을 변경할 수 있으나 중복값을 갖기 때문에 id로 접근하는 것을 주로 사용.
			document.getElementByld(id)를 통해서 해당 엘리먼트 Object를 가져옴
		xml 문서(DOM tree)내에서 node를 식별하는 용도로 사용되어 페이지 안에 이름이 한개만 존재해야 함.
		보통은 특정 tag를 지정하기 위해서 사용. 태그 내용을 바꾸는 dhtml 작업에서 주로 사용.
		
		참고로 id로 설정된 값은 서버쪽으로 파라미터로 넘어가지 않기 때문에 서버쪽에서 접근이 안됨.	
		-->
<!-- name은 page 안에서 중복되어 사용이 가능하며 action에 해당하는 페이지로 전달하는 파라미터로 사용
		get/post 방식으로 값을 전달하고 싶은 tag에 사용 , 
		form 객체들이 (input radio box, checkbox)에서 전송되어지는 
		parameter의 key값으로 사용 
		서버단에서는 request.getParameter(parameterName)이런식으로 값을 가져옴
		-->
	<form name="loginFrm" id="loginFrm" action="login_p94.jsp" method="get">
	 *id: <input type="text"     name="mid" id="mid"/>
	 *pwd:<input type="password" name="pwd" id="pwd"/>
	 <input type="submit" value="로그인" />
	</form>
	
	
</body>
</html>









<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<%-- 이문서는 loginFrm_p94.jsp에서
	user가 입력한 정보를 받아서 처리하는 서브측 페이지이다 
	user가 입력한 정보 id와 비밀번호를 받아서
	(원칙적으로는 DB의 회원테이블에 저장된) 회원의 id와 비밀번호와 비교하여
	여기에서는 임시로  
	회원테이블의 회원ID는 hongId,  비번은 hpwd라고 가정하고 진행
	
	일치하면  로그인성공! 메세지가 있는 페이지로 이동
	실패하면  로그인성공! 메세지를 출력
	
	--%>
<%
//1.user가 입력한 정보 id와 비밀번호를 가져오기
/*<input type="text"     name="mid" id="mid"/>
	<input type="password" name="pwd" id="pwd"/>*/
String mid = request.getParameter("mid"); //id
String pwd = request.getParameter("pwd"); //비밀번호
System.out.println(mid);//콘솔출력
System.out.println(pwd);//콘솔출력

//2.일치여부비교  기준문자열.equals(비교문자열)
//3.결과에 따른 페이지이동 또는 출력		
//if( user입력id.equals(db회원id)  ){
  if( (mid!=null) &&  mid.equals("hongId")  ){
		//loginSuccess_p94.jsp로 강제적인 페이지이동
		response.sendRedirect("loginSuccess_p94.jsp");
	}else{
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>login_p94.jsp</h3>
	 일치x 로그인실패
</body>
</html>
<%
	}
%>		
		












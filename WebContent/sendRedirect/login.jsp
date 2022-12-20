<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
<body>
	<h3>login_p94.jsp</h3>
	<%-- 이 문서는 loginform에서 user가 입력한 정보를 받아서 처리하는서브측 페이지다 
	user가 입력한 정보를 받아서 처리하는 서브측 페이지이다.
	user가 입력한 정보 id와 비밀번호를 받아서 
	(원칙적으로는 DB의 회원테이블에 저장된 ) 
	기존에 있던 회원의 id와 비밀번호화 비교하여
	여기에서는 임시로 
	회원 테이블의 회원ID는
	회원 테이블의 회원ID : hongId, 비번은 hpwd 라고 가정하고 진행.
	일치하면 로그인 성공 ! 메세지가 있는 페이지로 이동
	실패하면 로그인 실패! 메시지를 출력!
	--%>
	<% 
	//*ID: <input type="text" name="mid" id="mid" />
	//*PW: <input type="text" name="pwd" id="pwd" />
	
	//1.user가 입력한 정보 id와 비밀번호를 가져오기
	String mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");
	System.out.println(mid);
	System.out.println(pwd);
	
	//2.ID 와 pw 일치여부 확인    기준문자열.equals(비교문자열)
	if(mid.equals("hongId") && pwd.equals("hpwd") && mid != null && pwd != null){
			//loginSuccess_p94.jsp 로 이동
			response.sendRedirect("loginSuccess_p94.jsp");
		}else {
			out.write("실패 : 로그인 실패 ");//브라우저에서 출력
			
		}
	//3.결과에 따른 페이지 이동 또는 출력
	%>
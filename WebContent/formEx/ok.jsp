<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ok</title>
</head>
<body>
	<h3>ok.jsp</h3>
	<h4>이 문서는 form01.jsp에서 user가 입력한 데이터를 받아서  처리하는 서버측 페이지이다.</h4>

<% 
	/*파라미터명 mname의 값을 가져와 변수저장*/
	
	String name1 = request.getParameter("mname");
	String pwd = request.getParameter("mpwd");
%>

		<!-- html 주석문 -->
	*user가 입력한 데이터
	<ul>
		<li>이름: <%=name1 %></li>
		<li>비번: <%=pwd  %></li>
		<li>좋아하는 동물들:
		<%		String[] animals = request.getParameterValues("animals");
		// request.getParameterValues("animals"); 
		// 이름이 animals인 모든 파라미터의 값을 배열로 구한다. 존재하지 않을 경우 null 리턴
				if(animals != null){
					for(int i=0; i<animals.length; i++){
				System.out.println(animals[i]);
				// out 객체는 javax.servlet.jsp.JspWriter 가 new 된 것
				//out 객체의 println()혹은 print()을 이용하여 브라우저화면에 출력
				out.println(animals[i]+"<br/>") ;
				}
			}
		%>
		</li>
	</ul>
	
	<hr/>
	*request.getParameterNames()이용<br>
	=> 웹 브라우저가 전송한 파라미터의 이름 목록을 가져오기 <p/>
	
<% 
	Enumeration<String> paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = paramEnum.nextElement();
		System.out.println(name);
		out.println(name+"<br/>");
}
%>

<hr/>
*request.getParameterNames()이용<br>
	=> 웹 브라우저가 전송한 파라미터의 Map을 가져오기 <br/>
	map 참조변수명.put(Object key명,Object value) =>  Map에 value 저장
	map 참조변수명.get(Object key명) => map 에서 value 가져오기
	Map에서 value 가져오기
<%

// parameter명의 데이터타입은 String,
//파라미터의 value 타입은 String[]
//하나의 파라미터에 여러개의  값이 들어올 수 있으므로 배열처리한다.

// Map<파라미터명, 파라미터안의 값>

	
	Map<String, String[]> paramMap = request.getParameterMap();

	String[] nameParam = paramMap.get("animals");
	for(String name : nameParam){
		System.out.println(name);
		out.println(name+"<br/>");
	}
	%>



</body>
</html>
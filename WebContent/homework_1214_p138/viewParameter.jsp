<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청파라미터 출력</title>
</head>
<body>
	<b>request.getParameter() 메서드 사용</b><br>
	name 파라미터 = <%= request.getParameter("name") %><br>
	address 파라미터 = <%= request.getParameter("address") %>
	<p>
	<b>request.getParameterValues() 메서드 사용</b>
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null){
			for(int i=0; i<values.length; i++){
		 out.println(values[i]);
		}
	}
%>
<!-- <p></p> 태그는 paragraph, 즉 문단의 약자로, 하나의 문단을 만들 때 쓰입니다. -->
<p>
<!-- <b></b> 태그는 글자를 굵게 표시하는 태그로, bold의 약자입니다. -->
<b>request.getParameterNames() 메서드 사용</b>
<% Enumeration<String> paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
				String name = (String)paramEnum.nextElement();
				out.println(name);
	}
	%>
	<p>
	<b>request.getParameterMap() 메서드 사용 </b><br>
	<%
		Map<String, String[]> parameterMap = request.getParameterMap();
		String[] nameParam = (String[])parameterMap.get("name");
		for(int i=0; i<nameParam.length; i++){
		out.println(nameParam[i]);
		}%>
</body>
</html>
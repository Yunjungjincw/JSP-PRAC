<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Enumeration" import="java.util.Map"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h3> homework.jsp</h3>
	<ul>
		<li>선택 과목:<%
			String[] subject = request.getParameterValues("subject");
		// 배열로 받으니까 값을 for 문 돌려서 꺼내줘야함. 그리고 index로 값을 뽑아줘야함.
				if(subject != null){
					for(int i=0; i<subject.length; i++){
						System.out.println(subject[i]);
						out.println(subject[i]+"<br/>");
					}
				}
				System.out.println("--------------------------");
		%></li>
		
<hr/>
<%
	String[] sub = request.getParameterValues("subject");
	if(sub != null){
		for(int i=0; i<sub.length; i++){
			out.println(sub[i]);
		}
	}
%>

<hr/>
<%
	Enumeration<String> paramEnum = request.getParameterNames();
	while(paramEnum.hasMoreElements()){
		String name = paramEnum.nextElement();
		System.out.println(name);
		out.println(name);
	}
%>
<hr/>

<%
Map<String, String[]> paramMap = request.getParameterMap();
	String[] name = paramMap.get("subject");
	if(name != null){
		for(String result : name){
			System.out.println(result);
			out.println(result+"<br/>");
		}
	}
%>
<%
//Enumerator 랑 map 이랑 같이 사용하기 
// Enumerator를 이용해서 이름을 뽑아내고 , 그 이름을 가지고 map 을 돌려서 값을 얻자
//Enumeration<String> key = request.getParameterNames();
///while(key.hasMoreElements()){
	//String keyName = key.nextElement();
//}

//Map<String, String[]> value = request.getParameterMap();
	//String[] value1 = value.get(subject);
	//for(String keyName : value1){
		//System.out.println(keyName);
		//out.println(keyName+"<br/>");
	//}

%>
	</ul>
</body>
</html>
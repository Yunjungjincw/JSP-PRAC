<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>j_output.jsp</title>
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<style>
</style>
<script>
</script>

</head>

<body>
	<h2>output</h2>
	<PRE>
	window.alert(); 경고창
	요소 객체.innerText =>	해당태그 내부의 글자를 가져옴
	요소 객체.innerHTML => 해당태그 내부의 글자와 html.html 태그는 적용 
	console.log();
	document.write() => document에 출력.html 태그는 적용
	</PRE>
	
	<hr/>
	<p id="demo"></p>
	<script>
			document.write("두번째로 출력");
			document.write("document객체의 write()로 출력<br>");
			console.log("콘솔에 출력");
			document.getElementById("demo").innerText= "<u>innerText</u> 속성으로 출력";
			
			alert(document.getElementById("demo").innerText);		//아무것도 없는 alert창 띄어줌
			
			document.getElementById("demo").innerHTML= "<em>innerHTML</em> 속성으로 출력"; //변수처럼 적용 // <em> 중요표시
			
			
			
			
			</script>
</body>
</html>
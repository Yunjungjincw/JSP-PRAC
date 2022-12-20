<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Object</h2>
<hr>
<script>
document.write("<pre>");

const person = {
		firstName: "John", 
		lastName: 'Doe',
		age: 30,
		height: 185.9,
		isLikeDog: true ,
	 	languages	: ["html5","css3", "javascript", "DB"],
		fullName : function (){
			 return this.firstName+" "+this.lastName;
		} 
	};
document.write("firstName=>"+person.firstName+"<br>");
document.write("lastName=>"+person.lastName+"<br>");
document.write("person['age']=>"+person['age']+"<br>");
document.write("person['height']=>"+person['height']+"<br>");
document.write("person['isLikeDog']=>"+person['isLikeDog']+"<br>");
document.write("person['languages']=>"+person['languages']+"<br>");
document.write("person.languages=>"+person.languages+"<br>");
document.write("person.languages[0]=>"+person.languages[0]+"<br>");
document.write("person.languages[1]=>"+person.languages[1]+"<br>");
document.write("person.languages[2]=>"+person.languages[2]+"<br>");
document.write("person.languages[3]=>"+person.languages[3]+"<br>");
document.write("person.languages[person.languages.length-1]=>"+person.languages[person.languages.length-1]+"<br>");
//document.write("[[person.langauges.length-1]]=>"+person.langauges[[person.langauges.length-1]]+"<br>");

//함수호출 => 호출되는 fullName()는 리턴값이 있으므로 변수에 저장
let fName = person.fullName();
document.writeln("함수호출 = > " + fName)



document.write("");
document.write("</pre>");




</script>
	<hr>
	<pre>
		const 변수명 = {
			이름: 문자열, 
			이름: 숫자, 
			이름: 논리 ,
			이름: 배열,
			이름: 함수 
		};
	
	*속성값 가져오는 여러가지 방법
- objectName.property      // person.age
- objectName["property"]   // person["age"]
- objectName[expression]   // x = "age"; person[x]

	*속성의 값이 함수라면    => 함수호출
	-objectName.속성명();				//person.fullName();
	






	</pre>
</body>
</html>
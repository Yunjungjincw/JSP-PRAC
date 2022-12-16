<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>j_Variable(변수)</title>
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<style>
</style>
<script>

</script>

</head>

<body>
	<h2>변수</h2>
	<pre>
	* js 변수 선언 방법 4가지
	x 변수명;
	var 변수명; => 재선언가능. 긴 소스 , 여러 사람과 공동작업시 위험.
	let 변수명; => 재선언 불가 . Identifier "b " has already been declared
	const 변수명;  => 재할당 / 재선언 불가능 
	
	호이스팅
	호이스팅은 코드가 실행하기 전 
	변수선언/함수선언이 해당 스코프의 최상단으로 끌어 올려진 것 같은 현상을 말한다.
	
	
	호이스팅
	인터프리터가 코드실행을 하기 전 변수(함수)선언을 코드의 최상단으로 끌어올리는 것과 같은 현상
	
	코드 실행전 이미 변수(함수) 선언이 저장되어 있기에
	선언문 보다 실행(참조,호출)하는 부분이 있어도
	오류없이 동작되어진다.
	<hr/>
	<script>
	document.write("<pre>");
	
	
	a=10;
	b=90;
	document.writeln("b="+b);
	c=a+b;
	document.writeln("c="+c);
	document.writeln("<hr>")

	
	var a1=10;
	var c1=a1+b1;
	document.writeln("var c1="+c1);
	document.writeln("var b1="+b1);
	b1 = 100;
	var b1;
	//document.writeln("var b1="+b1);
	//document.writeln("var c1="+c1);
	
	//document.writeln("var b1="+b1); //undefined 나올 거고
	//document.writeln("var c1="+c1); //NaN 나올거고
	//b1 = 100;			 // 이게 재할당인가
	//var c1=a1+b1;
	// 아래쪽에 사용할 값 할당
	//document.writeln("var b1="+b1);
	//document.writeln("var c1="+c1);
	
	
	document.writeln("<hr>")
	
	
	//ReferenceError 에러가 왜 안뜨는지
	// 재선언 안됨 // 재할당은 됨
	let a2=10;
	let c2=a2+b2;
	document.writeln("let c2="+c2);
	document.writeln("let b2="+b2);
	b2 = 100;
	let b2;
	//let c2=a2+b2;
	//document.writeln("let b2="+b2);
	document.writeln("<hr>")
	
	
	
	
	// Uncaught SyntaxError: Missing initializer in const declaration
	const a3=10;
	const b3=100;
	document.writeln("const b3="+b3);
	const c3=a3+b3;
	document.writeln("const c3="+c3);
	document.writeln("<hr>")
	
	
	document.writeln("</pre>");
	</script>
	
	<xmp>

	
	
	</pre>
	<hr/>
</body>
</html>
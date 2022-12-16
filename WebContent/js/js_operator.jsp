<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operator</title>
 <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" />
<style>
</style>
<script>
</script>

</head>

<body>
	<h2>연산자 Operator</h2>
	<pre>
	비교연산자
	A==10 A 는 10과 일치. 동일
	A===10 A는 10과 일치. 동일
	A!=10 A는 10과 일치X . 동일 x
	>=
	>
	<=
	</pre>
	<hr/>
	<script>
	document.write("<pre>");
		let a = 100;
		let a1 = "100";
		let b = 100;
		document.writeln("a>b의 결과 값의 크기 계산= "+(a>b));
		document.writeln("a>b의 결과 값만 확인= "+(a!=b));
		document.writeln("a>b의 결과 타입까지 확인= "+(a!==b));
		
		document.writeln("a>b의 결과 값만 확인 = "+(a==b));
		document.writeln("a>b의 결과  타입까지 확인 = "+(a===b));
		
		document.writeln();
	
		document.writeln("a>a1의 결과 값의 크기 계산= "+(a>a1));
		document.writeln("a>a1의 결과 값만 확인= "+(a!=a1));
		document.writeln("a>a1의 결과 타입까지 확인= "+(a!==a1));
		
		document.writeln("a>a1의 결과 값만 확인 = "+(a==a1));
		document.writeln("a>a1의 결과  타입까지 확인 = "+(a===a1));
		


		document.write("<pre>");
	</script>
	<hr/>
</body>
</html>
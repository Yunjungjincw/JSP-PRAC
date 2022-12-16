<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Javascript 선언</title>
		<!-- http://localhost:8088/pro1/j_js01.jsp -->
	 <script src="./js/first.js"></script>
	<script>
			alert('head 태그안의 script-internal 방식');
			
	</script>
	</head> 
<body>
	<div id="i1">이건 internal 방식</div>
	
	<script>

			window.alert(document.getElementById("i1").id);
			
	
			//id가 i1 인 요소 내부 = 'body 태그안의 스크립트 - internal 방식';
			// document.getElementById("i1").innerText='이것은 internal 방식'

	</script>


<hr/>
<span style="display:inline-block; background: olive; width:100px;" onMouseOver="alert('안녕');">span요소1</span>
<div style="display:inline-block; background: green; width:100px;" onMouseOut="alert('안녕');">span요소2</div>
	<form>
		<input type="button" id="btn1" value="클릭(btn1)" onclick="alert('hi!');">
	</form>



	<h2>Javascript 선언 방식 3가지 (p190)</h2>
	<p>web 문서에 동적효과, 유효성검사 등 </p>
	<h2> Javascript 선언방식 3가지</h2>
    <xmp>
    ●internal 방식: HTML문서안의 body 요소, HEAD 요소에 script선언
          -문법
      <head>
       <body>
         <script>
           	코드 작성
            function 함수명 (매개변수리스트){코드}
         </script>
       </body>
        <body>
         <script>
           	코드 작성
            function 함수명 (매개변수리스트){코드}
         </script>
       </body>


    ●external 방식:HTML 문서밖에서 별도의 JS문서
        -문법
      <head>
         <link rel="stylesheet" href="경로/파일명.css">
         <script src="경로/파일명.js"></script>
      </head>

     ●inline방식:특성요소에 Script를 이용
       -문법 
       <태그명 style="속성명:값; css속성명:값;"></태그명>
       예문<태그명 onClick="함수명(매개변수리스트);"></태그명>
     
  </xmp>
  <%-- 
  자바의 클래스에서는 
			 클래스 참조변수명 = new 클래스명();
			 
			 참조변수명.필드명; //해당클래스객체의 필드값 가져오기
			 참조변수명.필드명=값; //해당클래스 객체의 필드값 설정하기
			 
			 그런데 private 필드명이면, 위의 작업이 불가
			 참조변수명.메서드명(); // 해당클래스 객체의 메서드를 호출
			 참조변수명.get필드명()을 사용하여 해당클래스객체의 필드값 가져오기
			 참조변수명.set필드명()을 사용하여 해당클래스 객체의 필드값 설정하기
			 
			 자바스크립트에서는 
			 객체.속성명(필드값); // 해당객체의 필드값 가져오기
			 객체.속성명(필드값)=값; // 해당 클래스 객체의 필드값 설정하기
			 객체.메서드명(); //해당객체의 메서드를 호출
			 
			 
			 document.getElementById("i1").innerText //(여기에서는 ) HTML div요소의 innerText속성값 가져오기
			 document.getElementById("i1").innerText='블러브럴'; // //(여기에서는 ) HTML div요소의 innerText속성값을 블러브럴 설정
			 document.getElementById("i1"); //document 객체의 getElementById() 메서드 호출
			 
			 
			 ----------------------------------------------------------------------
			 
			 //스크립트 한 줄 주석문
			/*스크립트 다중 주석문
			id가 i1인 요소 내부에 text를 출력*/
			
			
			//document객체.속성명 = 값
			//object HTMLDivElement
			//document.getElementById("id");
			//id가 i1 인 요소 내부 = 'body 태그안의 스크립으 - internal 방식';
			//window.alert('body 태그안의 script-internal 방식');
			
			//document.getElementById("i1").id id가 i1인 요소의 id속성의 값을 가져옴
			//window.alert(document.getElementById("i1").id); //[object HTMLDivElement]
			
			//id가 i1인 요소 내부의 text 값을 가져온다.
			//window.alert(document.getElementById("i1").innerText);
			 
			 
			 --%>
</body>
</html>
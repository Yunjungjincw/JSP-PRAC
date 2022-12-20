<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FOR</title>
</head>
<body>
<p id="demo">for문이용 결과 출력예정</p>
<p id="demo1">forEach문이용 결과 출력예정</p>
<p id="demo2">for in문이용 결과 출력예정</p>
<p id="demo3">for of문이용 결과 출력예정</p>
<p id="demo4">for of문이용 결과 출력예정</p>
<p id="demo5">for in문이용 결과 객체 속성명 출력예정</p>
<p id="demo6">for of문이용 결과 객체값 출력예정</p>
<p id="demo7">for of문이용 결과 객체값 출력예정</p>
<hr/>
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
	
	
let text5 = "<ul>--아래는 for in 문을 이용하여 객체의 속성명 출력";
//for(변수 in 객체){}
for(let key in person){
	text5 += "<li>"+ key +"</li>";
}
text5 += "</ul>";
document.getElementById("demo5").innerHTML = text5;
	
	
//----------------------------------------------------
let text6 = "<ul>--아래는 for in 문을 이용하여 객체의 값 출력";
//for(변수 in 객체){}
for(let key in person){
	text6 += "<li>"+ person[key] +"</li>";
}
text6 += "</ul>";
document.getElementById("demo6").innerHTML = text6;

//----------------------------------------------------
// Array, Map과 같은 반복 가능한(Iterable) 
//객체의 value(요소)를 하나씩 반복할 수 있게 해줍니다.
//(Object는 반복 가능한 객체에 해당하지 않습니다!)


/* 
let text7 = "<ul>--아래는 for in 문을 이용하여 배열요소 출력";
//for(변수 in 객체){}
for(let value of person){
	text7 += "<li>"+ value +"</li>";
}
text7 += "</ul>";
document.getElementById("demo7").innerHTML = text7; */
	
//----------------------------------------------------
const fruits = ["Banana", "Orange", "Apple", "Mango"];


//----------------------------------------------------
let text4 = "<ul>--아래는 for in 문을 이용하여 배열요소 출력";
//for(변수 in 객체){}
for(let fruit of fruits){
	text4 += "<li>"+ fruit +"</li>";
}
text4 += "</ul>";
document.getElementById("demo4").innerHTML = text4;




//----------------------------------------------------
let text2 = "<ul>--아래는 for in 문을 이용하여 배열요소 출력";
//for(변수 in 객체){}
for(let fruit in fruits){
	text2 += "<li>"+ fruit +"</li>";
}
text2 += "</ul>";
document.getElementById("demo2").innerHTML = text2;

//----------------------------------------------------
// 배열 fruits에 접근하여 (인덱스 번호에 해당하는 ) 속성명을 차례대로 가져와
//변수 key에 저장이 되면
// 배열명[인덱스번호] => 여기에서는 배열명[index]로 각 요소에 접근하여 출력
let text3 = "<ul>--아래는 for in 문을 이용하여 배열의 요소 출력";
//for(변수 in 객체){}
for(let index in fruits){
	text3 += "<li>"+ fruits[index] +"</li>";
}
text3 += "</ul>";
document.getElementById("demo3").innerHTML = text3;

//----------------------------------------------------
// 배열 fruits에 접근하여 (인덱스 번호에 해당하는 ) 속성명을 차례대로 가져와
//변수 key에 저장한 후 출력
let text1 = "<ul>--아래는 forEach문을 이용하여 배열요소 출력";
fruits.forEach(myFunction);
text1 += "</ul>";
document.getElementById("demo1").innerHTML = text1;

function myFunction(value) {
  text1 += "<li>" + value + "</li>";
} 

//----------------------------------------------------
let fLen = fruits.length;
let text = "<ul>--아래는 for문을 이용하여 배열요소 출력";
for (let i = 0; i < fLen; i++) {
  text += "<li>" + fruits[i] + "</li>";
}
text += "</ul>";
document.getElementById("demo").innerHTML = text;
document.write("<hr/>");


//-------------------------------
const cars = ["Saab", "Volvo", "BMW"];

document.writeln("cars=>"+cars);
document.writeln("cars.reverse()=>"+cars.reverse());
document.writeln("cars.length=>"+cars.length);
document.writeln("cars.sort()=>"+cars.sort());
document.writeln("cars.reverse()=>"+cars.reverse());

document.writeln("<hr/>")

const points = [40, 100, 1, 5, 25, 10];
document.writeln("points=>"+points);//40,100,1,5,25,10
document.writeln("points.reverse()=>"+points.reverse());//~0,25,5,1,100,40
document.writeln("points.length=>"+points.length);//6
document.writeln("points.sort()=>"+points.sort());//1,10,100,25,40,5
document.writeln("points.reverse()=>"+points.reverse());//5,40,25,100,10,1

points.sort(function(a, b){return a - b}); //오름차순정렬
document.writeln("오름차순정렬후 points=>"+points);//

points.sort(function(a, b){return b - a}); //내림차순정렬
document.writeln("내림차순정렬후 points=>"+points);//





document.write("</pre>");
</script>   

<hr/>
	<h2>for관련</h2>
<pre>
*배열선언
const array_name = [item1, item2, ...]; 

for- 코드 블록을 여러 번 반복. for(초기;조건;증감){}
for/in- 객체의 속성을 반복. 
				for(변수 in 객체){}
for/of- ES6에서 새롭게 추가됨
				반복 가능한 객체의 값을 반복. 
				for(변수 of 객체){}
				-Array(배열), Dom컬렉션(HTMLCollection, NodeList), Set, Map등
while- 지정된 조건이 참인 동안 코드 블록을 반복. while(조건){}
do/while- 또한 지정된 조건이 참인 동안 코드 블록을 반복 do{}while(조건)

객체
</pre>	


   
</body>
</html>
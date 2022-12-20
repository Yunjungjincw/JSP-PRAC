<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Date 객체</title>
</head>
<body>
<h2>Date 객체</h2>
<hr>
<script>
document.write("<pre>");

//파라미터가 없는 생성자를 이용한 날짜객체생성
let today = new Date();
document.writeln("new Date()="+today);
document.writeln("<hr/>");


document.writeln("getFullYear()=>"+today.getFullYear());
document.writeln("getMonth()=>"+(today.getMonth()+1));
document.writeln("getDate()=>"+today.getDate());
document.writeln("getDay()=>"+today.getDay());// 요일
document.writeln("getHours()=>"+today.getHours());
document.writeln("getMinutes()=>"+today.getMinutes());
document.writeln("getSeconds()=>"+today.getSeconds());
document.writeln("getMilliseconds()=>"+today.getMilliseconds());
document.writeln("getTime()=>"+today.getTime());

let day = "";
 
switch (today.getDay()) {
case 0:
  day = "Sunday";break;
case 1:
  day = "Monday";break;
case 2:
  day = "Tuesday";break;
case 3:
  day = "Wednesday";break;
case 4:
  day = "Thursday";break;
case 5:
  day = "Friday";break;
case  6:
  day = "Saturday";
}

document.writeln("한글 요일day="+day);
document.writeln("<hr/>");

//파라미터가 있는 생성자를 이용한 날짜객체생성
let theDay = new Date('December 17, 2020 03:24:59');
document.writeln("new Date('December 17, 2020 03:24:59')="+theDay);
document.writeln("<hr/>");

//파라미터가 있는 생성자를 이용한 날짜객체생성
let theDay2 = new Date(99,1);
document.writeln("new Date(99,1)="+theDay2); 
//위에서 생성한 Date객체에 년도를 수정 설정
theDay2.setYear(95);	//95를 1995로 처리
document.writeln("setYear(95)의 결과="+theDay2);

theDay2.setFullYear(92); //92를 0092로 처리.
document.writeln("setFull(92)의 결과="+theDay2);




document.write("</pre>");
</script>
</body>
</html>
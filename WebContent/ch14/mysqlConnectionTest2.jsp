<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL ConnectionTest</title>
</head>
<body>
 <h2>MySQL ConnectionTest</h2>
<%
String url ="jdbc:mysql://127.0.0.1:3306/chap14?useUnicode=true&characterEncoding=utf8";
String user="jspexam";
String password="jsppw";
Connection conn=null;

//1.JDBC Driver등록
try {
	Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
	System.out.println("ClassNotFoundException발생 e="+e+"<br>");
	e.printStackTrace();
}
System.out.println("1.JDBC Driver등록-성공");
out.write("1.JDBC Driver등록-성공"+"<br>");
//2.연결 Connection얻기
//DriverManager.getConnection(연결DB서버url, 접속user명, 비밀번호)

try {
	conn=DriverManager.getConnection(url, user, password);
} catch (SQLException e) {
	System.out.println("SQLException발생"+"<br>");
	e.printStackTrace();
}
System.out.println("2.Connection얻기-성공"+"<br>");
out.write("2.Connection얻기-성공"+"<br>");
//3.객체준비-Statement객체,PreparedStatement객체

//4.쿼리실행

//5.자원반납
try {
	if(conn!=null) {
		conn.close();
	}
} catch (SQLException e) {
	e.printStackTrace();
}
System.out.println("5.자원반납완료"+"<br>");
%>
<h3>5.자원반납완료</h3>

</body>
</html>











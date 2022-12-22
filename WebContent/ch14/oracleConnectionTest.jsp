<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORACLE ConnectionTest</title>
</head>
<body>
 <h2>ORACLE ConnectionTest</h2>
<%
String url ="jdbc:oracle:thin:@127.0.0.1:1521/xe";
String user="scott";
String password="tiger";
Connection conn=null;

//1.JDBC Driver등록
try {
	Class.forName("oracle.jdbc.OracleDriver");
} catch (ClassNotFoundException e) {
	System.out.println("ClassNotFoundException발생 e="+e);
	e.printStackTrace();
}
System.out.println("1.JDBC Driver등록-성공");
out.write("1.JDBC Driver등록-성공"+"<br>");
//2.연결 Connection얻기
//DriverManager.getConnection(연결DB서버url, 접속user명, 비밀번호)

try {
	conn=DriverManager.getConnection(url, user, password);
} catch (SQLException e) {
	System.out.println("SQLException발생");
	e.printStackTrace();
}
System.out.println("2.Connection얻기-성공");
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
System.out.println("5.자원반납완료");
%>
<h2>오라클과 연동 성공!!!!</h2>
</body>
</html>












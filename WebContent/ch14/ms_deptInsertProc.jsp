<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이 문서는 user입력받아 처리하는 서버측 페이지 (deptInsertProc.jsp) 이다
	user가 입력, 선택한 data를 받아 MySQL chap14 jspexam jsppw
	dapt 테이블에 입력 --%>
	
<%    //1.user가 입력,선택한 data를 받기
	String strdeptno = request.getParameter("deptno");	//부서번호
	//request.getParameter(); => 무조건 String type 으로 받음
	String dname = request.getParameter("dname"); //부서명
	String loc = request.getParameter("loc");	//소재지
	
	String nextPage = "";
	//Integer.parseInt(String) : String => int 로 변환
	int deptno= Integer.parseInt(strdeptno);
	
	System.out.println(strdeptno);
	System.out.println(dname);
	System.out.println(loc);
	
	//2. dept 테이블에 입력
	String url ="jdbc:mysql://127.0.0.1:3306/chap14?useUnicode=true&characterEncoding=utf8";
		String user="jspexam";
		String password="jsppw";
		Connection conn=null;
		//Statement  stmt=null;
		PreparedStatement stmt=null;
		
		//1.JDBC Driver등록
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			System.out.println("ClassNotFoundException발생 e="+e);
			e.printStackTrace();
		}
		System.out.println("1.JDBC Driver등록-성공");
		
		//2.연결 Connection얻기
		//DriverManager.getConnection(연결DB서버url, 접속user명, 비밀번호)

		try {
			conn=DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			System.out.println("SQLException발생");
			e.printStackTrace();
		}
		System.out.println("2.Connection얻기-성공");
		
		//3.객체준비-PreparedStatement객체
		//An object that represents a precompiled SQL statement. 
		String sql = 
				"INSERT INTO dept(deptno, dname, loc) "+ 
				" VALUES(?,?,?)";

		try {
			stmt =conn.prepareStatement(sql);
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		//4.쿼리실행
		
		try {
			stmt.setInt(1, deptno);
			stmt.setString(2,dname);
			stmt.setString(3,loc);
			
			int resultCnt = stmt.executeUpdate();
			System.out.println("쿼리문실행결과로 받은 record수="+resultCnt);
			if(resultCnt >= 1){
				out.write("<h3>입력성공</h3>");
			}else{
				out.write("<h3>입력 실패</h3>");
			}
		} catch (SQLException e1) {
			System.out.println("executeUpdate()실행관련 에러 - 관리자에게 문의");
			e1.printStackTrace();
		}
		

		
		//5.자원반납
		 try {
			if(stmt!=null) {
				stmt.close();
			}
			
			if(conn!=null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		System.out.println("5.자원반납완료");

%>
<!-- </body>


</html> -->
<!-- <a href="ms_deptList.jsp">입력성공</a> -->

<!-- JSP -->
 <%
		response.sendRedirect("ms_deptList.jsp");
	%> 
	

<!-- JS -->
	<script>
function openWindow(){
	window.open("ms_deptList.jsp","nw");
}
</script>
<form>
	<input type="button" value="목록조회하기"  onclick="openWindow()">
</form>


 <li>
 	<button type="button" 
         onclick="location.assign('ms_deptList.jsp');">목록 조회</button>
 </li>





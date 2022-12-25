<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*,java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서목록</title>
<style>
#departments {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#departments td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

/* id가 departments 요소의 후손요소중
  짝수tr번째 요소의 배경색 설정*/
#departments tr:nth-child(even){background-color: #f2f2f2;}

/*id가 department요소의 후손요소중 tr에 마우스가 올라가면 배경색 적용  */
#departments tr:hover {background-color: #ddd;}

#departments th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>
 <h2>부서정보</h2>
 <table id="departments">
 	<caption>부서목록</caption>
 	<thead>
 	 <tr>
 	 	<th>EMPNO</th>
 	 	<th>ENAME</th>
 	 	<th>JOB</th>
 	 	<th>MGR</th>
 	 	<th>HIREDATE</th>
 	 	<th>SAL</th>
 	 	<th>COMM</th>
 	 	<th>DEPTNO</th>
 	 </thead>
 	 <tbody>
<%
 	String url = "jdbc:mysql://127.0.0.1:3306/chap14?useUnicode=true&characterEncoding=utf8";
		String user = "jspexam";
		String password = "jsppw";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		 try {
			
			Class.forName("com.mysql.jdbc.Driver");
		 }catch (ClassNotFoundException e) {	
			System.out.println("ClassNotFoundception발생"+e);
		}finally {
			System.out.println("1.JDBC 드라이버 성공 성공"); 
		}
		
		 
		
		//2.연결 Connection 얻기
		try {
		 conn = DriverManager.getConnection(url, user, password);	// 위 정보를 바탕으로
		}catch (SQLException e){		//문제있니?
			System.out.println("SQLException 에러발생");
			e.printStackTrace();
		}finally {
			System.out.println("2.connection 성공");	//문제없어
		}
		
		//3.객체준비-Statement객체,PreparedStatement 객체
	try {
		String sql = 
				"select EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO" 
				+" from emp"; 
			stmt = conn.prepareStatement(sql);
			System.out.println("3.prepareStatement 객체 생성");
	
	

		
		
		//4.쿼리실행 set 데이터타입(?의 순서, 값)
			rs = stmt.executeQuery();
			System.out.println("4.쿼리문실행결과 : ");
			
			while(rs.next()) {
				int empno = rs.getInt("EMPNO");
				String ename= rs.getString("ENAME");
				String job = rs.getString("JOB");
				int mgr = rs.getInt("MGR");
				Date hireDate = rs.getDate("HIREDATE");
				int sal = rs.getInt("SAL");
				int comm = rs.getInt("COMM");
				int deptno = rs.getInt("DEPTNO");
 	 %>
 	 <!-- 테이블의 조회된 레코드수만큼 반복 start -->
 	 	<tr>
 	 	 <td><%=empno %></td>
 	 	 <td><%=ename %></td>
 	 	 <td><%=job %></td>
 	 	 <td><%=mgr %></td>
 	 	 <td><%=hireDate %></td>
 	 	 <td><%=sal %></td>
 	 	 <td><%=comm %></td>
 	 	 <td><%=deptno%></td>
 	 	</tr>

<%
 	}//while문 끝
		
	}catch(SQLException e1) {
		System.out.println("executeUpdate()실행관련 에러");
		e1.printStackTrace();
	}
	//5.자원반납
	//주소지가 있을 경우에만 close 해라.
	try {	//자원반납이 뭐지
		if(rs!=null) {
			rs.close();
		}
		
		if(stmt !=null) {
			stmt.close();
		}
		
		if(conn!=null)
			conn.close();
	}catch (SQLException e) {
		e.printStackTrace();
	}
	System.out.println("5.자원반납완료");
%>
 	 <!-- 테이블의 조회된 레코드수만큼 반복 end-->
 	 </tbody>
 </table>
</body>
</html>












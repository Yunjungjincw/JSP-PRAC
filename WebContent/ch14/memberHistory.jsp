<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.*,java.util.Date"%>
    <%@ page import= "java.io.Reader, java.io.IOException"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>긴 데이터</title>
 <link  rel="stylesheet" href="../CSS/table1.css" />
<style>
</style>
</head>
<body>
	<h2>memberHistory_p398</h2>
	<p>ResultSet에 MEDIUMTEXT 타입 값 읽어오기</p>
	<h2>부서정보</h2>
 <table id="table1">
 	<caption>연혁</caption>
 	<thead>
 	 <tr>
 	 	<th>회원ID</th>
 	 	<th>내용</th>
 	 </thead>
 	 <tbody>
<%
String url ="jdbc:mysql://127.0.0.1:3306/chap14?useUnicode=true&characterEncoding=utf8";
String user="jspexam";
String password="jsppw";
Connection conn=null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String memberid = null;	// memberid 컬럼의 값을 저장하기 위해 선언
		
		
		//p399 47라인 
		String history = null; // history 컬럼의 값을 저장하기 위해 선언
		Reader reader = null; // 
		/*java.io.Reader 클래스는 입력 스트림으로부터 문자 데이터를 읽어들일 수 있는 추상 클래스입니다. 
		입력 스트림으로부터 읽어들인 문자 데이터는 문자 스트림(character stream)으로 취급됩니다.
		Reader 클래스는 입력 스트림의 종류에 상관없이 일관된 인터페이스를 제공하기 위해 설계되었습니다. 
		예를 들어, 파일을 읽기 위해서는 FileReader 객체를 생성하고, 
		네트워크 소켓으로부터 읽기 위해서는 SocketReader 객체를 생성할 수 있습니다. 
		이러한 객체들은 모두 Reader 클래스의 하위 클래스이기 때문에, 일관된 인터페이스를 제공합니다*/
		
		
		
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
				"select memberid,history"
				+ " from member_history"; 
			stmt = conn.prepareStatement(sql);
			System.out.println("3.prepareStatement 객체 생성");
	
	

		
		
		//4.쿼리실행 set 데이터타입(?의 순서, 값)
			rs = stmt.executeQuery();	//p399 36라인
			if(rs.next()) {
				memberid = rs.getString("memberid");

				
				//p399 50라인
				//쿼리실행결과가 null이면 getCharacterStream()는 null리턴한다.
				reader=rs.getCharacterStream("history");//history컬럼값 가져오기
				
				if(reader != null){//p399 52라인
					StringBuilder buff = new StringBuilder();
					char[] ch = new char[512];
						int len = -1;
					//read 메소드는 array에 있는 characters 를 읽는다.
					//read()은 읽은 characters. 수를 리턴하고  stream의 끝(end)에 도달하면, -1을 리턴.
					
						while((len = reader.read(ch))!=-1 ){	//가져올 데이터가 있는 동안.
							//읽어들인 문자열개수만큼.
							//임시기억장소인 buff에 추가
							buff.append(ch,0, len);
						}
					
					//임시기억장소인 StringBuilder타입을  toString()를 이용하여 String 타입으로 변환
						history = buff.toString(); //p399 61라인						
				}//안쪽 if문
				
				/* java.lang.StringBuilder 클래스는 가변 길이의 문자열을 저장하고 수정할 수 있는 기능을 제공합니다. 
				일반적인 java.lang.String 객체는 수정할 수 없기 때문에, 수정이 필요한 경우에는 StringBuilder를 사용하는 것이 좋습니다.
				StringBuilder는 멀티 스레드 환경에서도 안정적으로 사용할 수 있으며, 문자열 연결 작업을 개선할 수 있습니다. 
				일반적인 String 객체는 새로운 객체를 생성할 때마다 새로운 메모리 공간을 할당해야 하기 때문에, 
				여러 번 연결할 경우에는 성능이 저하될 수 있습니다. 그러한 경우에 StringBuilder를 사용하면 성능을 개선할 수 있습니다.*/
				
 	 %>
 	 <!-- 테이블의 조회된 레코드수만큼 반복 start -->
 	 	<tr>
 	 	 <td><%=memberid %></td>
 	 	 <td><%=history %></td>
 	 	</tr>

<%
 	} else {
%>		
	<tr>
 	 	 <td colspan="2">history가 없습니다.</td>
 	 </tr>
 <%
 	}
		
	}catch(SQLException e1) {
		System.out.println("executeUpdate()실행관련 에러");
		e1.printStackTrace();
	} catch (IOException e2){
		e2.printStackTrace();
	} finally{
		
	//try catch에서 exception 발생 여부와 상관없이 무조건 finally블럭을 거치게 된다.
		if(reader != null){	
	try{
			reader.close();
		}catch(IOException e3){
			e3.printStackTrace();
		}
	}
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
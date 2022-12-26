package jdbc;

import javax.servlet.http.HttpServlet;

//p408
//웹 어플리케이션 구동시 JDBC (MySQL용 Driver)로딩하기
// 웹 어플리케이션 시작될 때 자동으로 JDBC 드라이버를 로딩하도록 만들면 된다.
public class MySQLDriverLoader extends HttpServlet {

	public void init() {
		
		try {
			System.out.println("web.xml문서에서 지정한 jdbc.MySQLDriverLoader 클래스의 init()안");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.JDBC 드라이버 성공 성공"); 
		 }catch (ClassNotFoundException e) {	
			System.out.println("ClassNotFoundception발생"+e);
			e.printStackTrace();
		 }
	}
}//class의 끝

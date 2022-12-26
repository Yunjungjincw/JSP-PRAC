package jdbc;

import java.io.IOException;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbcp2.ConnectionFactory;
import org.apache.commons.dbcp2.DriverManagerConnectionFactory;
import org.apache.commons.dbcp2.PoolableConnection;
import org.apache.commons.dbcp2.PoolableConnectionFactory;
import org.apache.commons.dbcp2.PoolingDriver;
import org.apache.commons.pool2.impl.GenericObjectPool;
import org.apache.commons.pool2.impl.GenericObjectPoolConfig;

public class DBCPInit extends HttpServlet{

	@Override
	//get 방식으로 요청시 호출
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doGet호출");
		super.doGet(req, resp);
	}

	@Override
	//post방식으로 요청시 호출
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("doPost호출");
		super.doPost(req, resp);
	}

	@Override
	// 종료시 호출
	public void destroy() {
		System.out.println("destroy 호출");
		super.destroy();
	}

	@Override
	//웹 어플리케이션 시작시 단 한번만 호출
	public void init() throws ServletException {
		System.out.println("init()호출");
		loadJDBCDriver();
		initConnectionPool();
	}
	
	private void loadJDBCDriver(){
		try {
			System.out.println("web.xml문서에서 지정한 jdbc.MySQLDriverLoader 클래스의 init()안");
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("1.JDBC 드라이버 성공 성공"); 
		 }catch (ClassNotFoundException e) {	
			System.out.println("ClassNotFoundception발생"+e);
			e.printStackTrace();
		 }
	}//lodadJDBCDriver
	
	
	//커넥션 풀 설정
	private void initConnectionPool() {
	      try {
	         String jdbcUrl = 
	               "jdbc:mysql://localhost:3306/chap14?" + 
	               "useUnicode=true&characterEncoding=utf8";
	         String username = "jspexam";
	         String pw = "jsppw";

	         ConnectionFactory connFactory = 
	               new DriverManagerConnectionFactory(jdbcUrl, username, pw);

	         PoolableConnectionFactory poolableConnFactory = 
	               new PoolableConnectionFactory(connFactory, null);
	         poolableConnFactory.setValidationQuery("select 1");

	         GenericObjectPoolConfig poolConfig = new GenericObjectPoolConfig();
	         poolConfig.setTimeBetweenEvictionRunsMillis(1000L * 60L * 5L);
	         poolConfig.setTestWhileIdle(true);
	         poolConfig.setMinIdle(4);
	         poolConfig.setMaxTotal(50);

	         GenericObjectPool<PoolableConnection> connectionPool = 
	               new GenericObjectPool<>(poolableConnFactory, poolConfig);
	         poolableConnFactory.setPool(connectionPool);
	         
	         Class.forName("org.apache.commons.dbcp2.PoolingDriver");
	         PoolingDriver driver = 
	               (PoolingDriver) DriverManager.getDriver("jdbc:apache:commons:dbcp:");
	         driver.registerPool("chap14", connectionPool);
	      } catch (Exception e) {
	         throw new RuntimeException(e);
	      }
	   }
}//class

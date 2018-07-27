package db;

import java.sql.*;

public class DBConnection {

	public static Connection getCon() throws SQLException {
		// TODO Auto-generated method stub
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/freaveler";// 사용하려는 데이터베이스명을 포함한 URL 기술 
			String id = "root"; // 사용자 계정
			String pw = "43176634"; // 사용자 계정의 패스워드
			
			con = DriverManager.getConnection(url, id, pw);
		
			
			return con;


			
			
		}catch(Exception e) {
	
			System.out.println(e.getMessage());
			return null;
		}
	
		

	}

}

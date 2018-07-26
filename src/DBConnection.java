import java.sql.*;

public class DBConnection {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* DB 드라이버 작동확인 */
		try {
			
			Class.forName("com.mysql.jdbc.Driver"); 
			
		} catch (ClassNotFoundException ex) { 
			
			System.out.println("JDBC 로딩 실패!"); 
			ex.printStackTrace(); 
			
		} 
		/* DB서버 접속해보기 */ 
		
		try { 
			
			java.sql.Statement st = null; 
			Connection con; 
			con = DriverManager.getConnection("jdbc:mysql://localhost/freaveler", "root", "43176634");
			/* ( DB서버 주소 / ID / 삐밀번호 ) */ 
			
		} catch (SQLException sqex) {
			
			System.out.println("SQLException: " + sqex.getMessage()); 
			System.out.println("SQLState: " + sqex.getSQLState()); 
			
		}

	
	}

}

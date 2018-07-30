<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

//로그인 하기

//정보세팅
request.setCharacterEncoding("utf-8");

String userId = request.getParameter("userId");
String userPw = request.getParameter("userPW");


//DB세팅
String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC";
String user="root";
String pw="43176634";

ResultSet rs; // DB data 담을 수 있는 객체


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pw);
	
	String sql = "select * from userinfo where userId=='"+userId+"'&& userPw=='"+userPw+"';";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1,userId);
	
	rs = pstmt.executeQuery();
	if(rs.next()){
		
		if(rs.getString(1).equals(userPw)){
			
			session.setAttribute("userId",userId);
			
			%>
			
			<script type="text/javascript">
				
				alert(userId+"님, 환영합니다.");
			 
			</script>
			

			<meta http-equiv="refresh" content="0;url=content.jsp">
			
			
			<%
			
		}
		else {
	%>
			
			<script type="text/javascript">
				
				alert("아이디와 비밀번호가 일치하지 않습니다");
			</script>
			
			<meta http-equiv="refresh" content="0;url=content.jsp">
			
			<%
		}
	}
	
	
	
	
	
}catch(SQLException se){
	
	se.printStackTrace();
	out.println(se);
	
	
}catch(Exception e){
	
	out.println(e);
	
}



%>


</body>
</html>
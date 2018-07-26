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

String driverName="com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC";
String id = "root";
String pwd ="43176634";

try{
    //[1] JDBC 드라이버 로드
    Class.forName(driverName);     
}catch(ClassNotFoundException e){
    out.println("Where is your mysql jdbc driver?");
    e.printStackTrace();
    return;
}
out.println("mysql jdbc Driver registered!!");

//[2]데이타베이스 연결 
Connection conn = DriverManager.getConnection(url,id,pwd);
out.println("DB연결성공!!");
 
//[3]데이타베이스 연결 해제
conn.close();

%>

</body>
</html>
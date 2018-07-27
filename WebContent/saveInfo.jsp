
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%


//회원정보 테이블
/*

create table userInfo(
   userId varchar(30) primary key not null,
    userPw varchar(30) not null,
   userName varchar(20) not null,
   userBirth int(6) not null,
    userLike varchar(100) not null);



*/


//회원가입하기


//정보세팅
request.setCharacterEncoding("utf-8");

String userId = request.getParameter("id");
String userPw= request.getParameter("pw");
String userName= request.getParameter("name");
String userBirth= request.getParameter("birth");
String[] Like= request.getParameterValues("like");
String userLike="";

for(int i=0 ; i < Like.length ; i++){
	
	userLike += Like[i]+"/";
	
}

String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC";
String user="root";
String pw="43176634";


try{
	
	Class.forName("com.mysql.jdbc.Driver");
	//out.println("드라이버 로드 완료");
	//mysql 접속
	
	Connection con = DriverManager.getConnection(url,user,pw);
	
	//if(con != null) //out.println("mysql 접속 성공");
	
	
	String sql = "insert into userinfo values('"+userId+"','"+userPw+"','"+userName+"',"+userBirth+",'"+userLike+"');";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	int result = pstmt.executeUpdate();
	
	if(result == 1){
		
	//	out.println("성공");
		
	}else{
		
		//out.println("실패");
		
	}
	
}catch(ClassNotFoundException e){
	
	//out.println("드라이버가 없어요");
	
}catch(SQLException se){
	
	 se.printStackTrace();
	out.println(se);
	
}



%>

<script>

	alert('회원가입이 완료되었습니다.');

</script>
<meta http-equiv="refresh" content="0;url=content.jsp">

</body>
</html>
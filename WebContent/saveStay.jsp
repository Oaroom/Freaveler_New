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



request.setCharacterEncoding("utf-8");


//정보세팅



String stayCountry = request.getParameter("stayCountry");
String stayCity = request.getParameter("stayCity");
String stayEtc = request.getParameter("stayEtc");
String stayName = request.getParameter("stayName");
String stayType = request.getParameter("stayType");
String stayDays = request.getParameter("stayDays");
String stayPeople = request.getParameter("stayPeople");
String stayStars = request.getParameter("stayStars");
String stayPrice = request.getParameter("stayPrice");
String reason = request.getParameter("stayRecom");
String bad = request.getParameter("stayBad");


String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
String user="root";
String pw="43176634";


String userId = (String)session.getAttribute("userId");



try{

Class.forName("com.mysql.jdbc.Driver");
//out.println("드라이버 로드 완료");
//mysql 접속

Connection con = DriverManager.getConnection(url,user,pw);

//if(con != null) //out.println("mysql 접속 성공");


String sql = "insert into stay values(0,'"+userId+"','"+stayName+"','"+stayType+"','"+stayCountry+"','"+stayCity+"','"+stayEtc+"',"+ stayStars+",'"+stayPrice+"','"+stayDays+"',"+stayPeople+",'"+reason+"','"+bad +"');";

PreparedStatement pstmt = con.prepareStatement(sql);

int result = pstmt.executeUpdate();

if(result == 1){
	
%>

<script type="text/javascript">

	alert("당신의 숙소가 공유되었습니다!");
	
</script>

<meta http-equiv="refresh" content="0;url=stay.jsp">

<%


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



</body>
</html>
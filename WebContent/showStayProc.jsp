<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body align="center">


<%


request.setCharacterEncoding("utf-8");
int id = Integer.parseInt(request.getParameter("id"));

String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
String user="root";
String pw="43176634";



Statement stmt = null;
ResultSet rs = null;

				

try{
	
	Class.forName("com.mysql.jdbc.Driver");
	//out.println("드라이버 로드 완료");
	//mysql 접속
	
	Connection con = DriverManager.getConnection(url,user,pw);
	
	stmt= con.createStatement();
	
	String query = "select * from stay where id="+id;
	
	rs = stmt.executeQuery(query);	
	
	rs.next();
	
%>



<form action="mypage.jsp" method="post">

<div id="board">
	
		
		<div id="showStayBox">
		
			<h1>숙소 평가를 확인하세요! </h1>
		
		
			<table id="showRecom" align="center" border >
			
				<tr>
					<th>
					작 성 자
					</th>
					<td colspan="3">
					
					<%=rs.getString(2) %>
					
					</td>
					
				</tr>
				<tr>
					<th>
					위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;치
					</th>
					<td colspan="3">
					
					<%=rs.getString(5) %>의 <%=rs.getString(6) %> <br>
					<%=rs.getString(7) %>
					
					</td>
					
				</tr>
			
				<tr>
					<th>
					숙소이름
					</th>
					
					<td colspan="3">
					<%=rs.getString(3) %>
					</td>
				</tr>
				
				<tr>
					<th>
					숙소종류
					</th>
					
					<td colspan="3">
					
					<%=rs.getString(4) %>
					
					
					
					</td>
				</tr>
				
				<tr>
					<th>
					숙박일수
					</th>
					<td>
					<%=rs.getString(10) %> 박
					</td>
					<th>
					숙박인원
					</th>
					
					<td>
					<%=rs.getString(11) %> 명
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<th>
					가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격
					</th>
					
					<td>
			<%=rs.getString(9) %> 원
				</td>
						<th>
					별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;점
			
					</th>
					
					<td>
					<%=rs.getString(8) %>/ 5점
					</td>
				</tr>
				
				<tr style="height: 30px">
					<td colspan="4">
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					 <b>추천하는 이유</b>
					</td>
				</tr>
				<tr>
					<td colspan="4">
					<%=rs.getString(12) %>
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					 <b>아쉬웠던 점</b>
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					<%=rs.getString(13) %>
					</td>
				</tr>
					
			
			</table>
			
		</div>
		
			<input type="submit" id="plusB" value="담아가기" style=" margin-top:10px; margin-bottom:10px;">	
		
	</div>
</form>


<%



}catch(ClassNotFoundException e){
	
	//out.println("드라이버가 없어요");
	
}catch(SQLException se){
	
	 se.printStackTrace();
	out.println(se);
	
}


 
%>



</body>
</html>
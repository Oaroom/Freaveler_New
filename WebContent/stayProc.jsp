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



	// 데이터베이스 세팅
	

	String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
	String user="root";
	String pw="43176634";



%>

<!-- 
	create table stay(
	     id int auto_increment primary key not null,
	     userid varchar(50) not null,
	     stayName varchar(50) not null,
	     type varchar(30) not null,
	     country varchar(50) not null,
	     city varchar(50) not null,
	     etc varchar(300),
	     star int(3) not null,
	     price varchar(50) not null,
	     days varchar(30) not null,
	     people int(2) not null,
	     reason text not null,
	     bad text);

 -->



<table width="1500px">
		<tr>
			<td id="pageTitle">
				
				&nbsp;&nbsp;Stay

			</td>
			<td id="titleComment">
 			호텔부터 게스트 하우스까지! <b>프리블러</b>들이 직접 경험하고 추천하는 숙박업소!
			</td>
			<td align="right">
				<form action="recom.jsp">
					<input type="submit" value="숙소 추천하기" class="writeB" onclick="writeForm">
				</form>
			</td>
		</tr>
	</table>
	
	
	<hr>
	
	
	
	
		<div id = "stayForm">
		
				<% 
					
				Statement stmt = null;
				ResultSet rs = null;
				
								
				
				try{
					
					Class.forName("com.mysql.jdbc.Driver");
					//out.println("드라이버 로드 완료");
					//mysql 접속
					
					Connection con = DriverManager.getConnection(url,user,pw);
					
					stmt= con.createStatement();
					
					String query = "select * from stay";
					
					rs = stmt.executeQuery(query);	
					
					rs.last();
					rs.previous();
					
				rs.first();
					rs.previous();
					
					while(rs.next()){
						
						
						
							%>
					<div class="stayItem" onclick ="location.href='showStay.jsp?id=<%= rs.getString(1)%>'">
					
						
							<table align="center" >
								
								<tr>
									<th colspan="2">No. <%=rs.getString(1) %></th>
								</tr>
								<tr>
									<td  colspan="2">  <h1 class="stayName"> <%=rs.getString(3) %> &nbsp;  (<%=rs.getString(4) %>) </h1>  </td>
								</tr>
								<tr>
									<td> <%=rs.getString(5) %> 의 <%=rs.getString(6) %> </td>
									<td> <%=rs.getString(8) %>점 / 5점  </td>
								</tr>
								<tr>
									<td> <%=rs.getString(9) %>원  </td>
									<td> <%=rs.getString(10) %>박 </td>
								</tr>
								
							</table>
					
					</div>
					
				
				<%
					
					
					}
					
				
		
					
				}catch(ClassNotFoundException e){
					
					//out.println("드라이버가 없어요");
					
				}catch(SQLException se){
					
					 se.printStackTrace();
					out.println(se);
					
				}
				
		%>
					
				
						
					
	</div>


</body>
</html>
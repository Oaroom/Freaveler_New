<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="freaveler.css">


<style>

	
#groupB{
	
/* 	width:1430px;
	height:150px;
	border:3px solid #dddddd;
	border-radius: 30px;
	
	padding-left:70px;
	
	margin:10px; */
	
}
	
	
	
</style>

</head>
<body>


<% 



	// 데이터베이스 세팅
	

	String url="jdbc:mysql://localhost:3306/freaveler?serverTimezone=UTC&useUnicode=true&characterEncoding=utf8";
	String user="root";
	String pw="43176634";



%>




<table width="1500px">
		<tr>
			<td id="pageTitle">
				
				&nbsp;&nbsp;Course
			
	
			</td>
			<td id="titleComment">
 			전세계를 자유롭게 여행하는 <b>프리블러</b>들의 생생한 후기를 확인하세요!
			</td>
			<td align="right">
				<form action="write.jsp">
					<input type="submit" value="일정 작성하기" class="writeB" onclick="writeForm">
				</form>
			</td>
		</tr>
	</table>
	

	<hr>
	

	<div id ="groupB">
	
	 
	
	
	<div class="courseB">
	  국내
	</div>
	
	<div class="courseB">
	  아시아
	</div>
	
	<div class="courseB">
	  동남아
	</div>
	
	<div class="courseB">
	  유럽
	</div>
	
	<div class="courseB">
	  미주
	</div>
	<div class="courseB">
	  오세아니아
	</div>
	<div class="courseB">
	  일본
	</div>
	<div class="courseB">
	  태국
	</div>
	<div class="courseB">
	  미국
	</div>
	<div class="courseB">
	  영국
	</div>
	<div class="courseB">
	  독일
	</div>
	<div class="courseB">
	  프랑스
	</div>
	
	
	</div>
	
	


	
<div id="contentbar">

<table width="1500px"  style="aling:center; text-align: center" id="wframe">
		
		<tr>
			<th>
			
				>> 여행기록 보기
			
			</th>
		</tr>
	
		<tr>
		
			<td>
				<div id="coureFrame">
				
				
				<% 
					
				Statement stmt = null;
				ResultSet rs = null;
				
								
				
				try{
					
					Class.forName("com.mysql.jdbc.Driver");
					//out.println("드라이버 로드 완료");
					//mysql 접속
					
					Connection con = DriverManager.getConnection(url,user,pw);
					
					stmt= con.createStatement();
					
					String query = "select * from course order by id desc";
					
					rs = stmt.executeQuery(query);	
					
					rs.last();
					rs.previous();
					
					if(rs.getRow()==0){
						
						
						%>
						
						<h1 id="none"> 아직 작성된 여행기가 없습니다 ㅜ,ㅜ </h1>
						
						<%
						
						
					}else{
					
					rs.first();
					rs.previous();
					
					while(rs.next()){
						
						
						
							%>
					<div class="Courseitem" onclick ="location.href='show.jsp?id=<%= rs.getString(1)%>'">
					
						
							<table align="center">
								<tr>
									<td class="country">
										<%= rs.getString(7)  %>
									</td>
								</tr>
								<tr>
									<td class="itemTitle">
									<%= rs.getString(3) %> 
									</td>
								</tr>
								<tr>
									<td>
										 
									</td>
								</tr>
								<tr>
									<td  class="number">
									No.<%= rs.getString(1) %> 
									</td>
								</tr>
							
								
							</table>
					
					</div>
					
				
				<%
					
					
					}
					
					}
					
					
				}catch(ClassNotFoundException e){
					
					//out.println("드라이버가 없어요");
					
				}catch(SQLException se){
					
					 se.printStackTrace();
					out.println(se);
					
				}
				
		%>
					
				
				
				</div>
				
			</td>
			
		
		</tr>
		
	
	</table>

	</div>




</body>
</html>
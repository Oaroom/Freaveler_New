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
	
	String query = "select * from course where id="+id;
	
	rs = stmt.executeQuery(query);	
	
	rs.next();
	
%>



<form action="mypage.jsp" method="post">

<div id="board">
	
		<table id="boardTable" align="center" >
		
			<tr>
				<th>
				 작성자
				</th>
				<td>
						<%=rs.getString(2) %>
				</td>
			</tr>
			<tr>
				<th>
				 제목
				</th>
				<td>
						<%=rs.getString(3) %>
				</td>
			</tr>
			
			<tr>
				<th>
				
				여행날짜
				
				</th>
				<td>
					<%=rs.getString(4) %> ~ <%=rs.getString(5) %>
					
				</td>
			</tr>
			<tr>
				<th>
				
				분류
				
				</th>
				<td>
					<%=rs.getString(6) %>
				</td>
			</tr>
			<tr>
				<th>
				
				여행지
				
				</th>
				<td>
					<%=rs.getString(7) %> 의 <%=rs.getString(8) %>
				</td>
			</tr>
	
		</table>
	
		
		
		
		
		
		<div id="courseBox">
		
		
		
		<%
		
		String day;
		
		if(rs.getString(10) == null || rs.getString(10).equals("")){
			
			day = "0";	
			
		}else{
			
			day = rs.getString(10);
			
		}
		
		
		String course[]= rs.getString(9).split("/");
		String days[] =day.split("/");
		
		
			int count=0;
			int i=0;
		
			while(true){
				
				if(count >= course.length){break;}
				
					
					%>
					
					<table class='showCourse'>
							<tr style='height: 50px;'>
								
								<th>
									장소명
								</th>
								<td>
								<%=	course[count] %>
								</td>
								<th>
									시간
								</th>
								<td>
								<%=	course[count+1] %>
								</td>
								<th>
									입장료
								</th>
								<td>
								<%=	course[count+2] %>
								</td>
								<th>
									별점
								</th>
								<td>
								<%=	course[count+3] %>
								</td>
							</tr>
							<tr>
								<td colspan='8' id="showText">
									<%=	course[count+4] %>
								</td>
							</tr>
					</table>
	
					
					
					
					<%
					
					i++;
					
					
					for(int j = 0 ; j < days.length ; j++){
						
						if(i == Integer.parseInt(days[j])){
							%>
							 <div class='end'> <input type='hidden' name=end"+count+"> 오늘 하루는 여기까지! 수고했어요 :-) </div>
							<%
						}
						
						
					}
					
					
					
					
					
					
					
				count = count+5;
				
				
			}
		%>
		
			
			
			<input type="submit" id="plusB" value="담아가기" style=" margin-top:10px; margin-bottom:10px;">			
		</div>
		
		
		
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
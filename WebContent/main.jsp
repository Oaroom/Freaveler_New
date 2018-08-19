<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>


<link rel="stylesheet" type="text/css" href="freaveler.css?after">



<style>


.mainCard{


display:inline-block;
float:left;

width:350px;
height:250px;
margin-top:10px;
margin:10px;
border:1px solid #aaaaaa;
border-radius: 10px;

 position:relative;
 
 
  text-shadow: -1px 0 #555555, 0 1px #555555, 1px 0 #555555, 0 -1px #555555;
  -moz-text-shadow: -1px 0 #555555, 0 1px #555555, 1px 0 #555555, 0 -1px #555555;
  -webkit-text-shadow: -1px 0 #555555, 0 1px #555555, 1px 0 #555555, 0 -1px #555555;
 
 overflow: hidden;
 
}


.subCard{


position:absolute;

top:150px; left:-1px;

width:350px;
height:110px;
border:1px solid #aaaaaa;
border-radius: 10px;

position:absolute;
 

 overflow: hidden;
 opacity: 0.8;
 
 color:#fdfdfd;
 
 -webkit-transition-duration:1s, 1s;
 -moz-transition-duration:1s, 1s;
 transition-duration: 1s,1s;
 border-bottom-left-radius: 10px;
 border-bottom-right-radius:  10px;


}



.subCard:hover{

    top:50px; left:-1px;
    height:200px;
    color:#ffffff;
    background-color: #444444;



}




</style>



</head>
<body>

<% 


request.setCharacterEncoding("utf-8");

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
	
	String query = "select * from course order by id desc";
	
	rs = stmt.executeQuery(query);	
	
	


%>

<table width="1500px" align="center">
	<tr>
		
		<td rowspan="2" style="width:800px; height:400px">
		
					
			<div class="cycle-slideshow" 
			    data-cycle-fx=scrollHorz
			    data-cycle-timeout=2000
			    >
			    <!-- empty element for pager links -->
			    <div class="cycle-pager"></div>
			
			    <img src="http://malsup.github.io/images/p2.jpg">
			    <img src="http://malsup.github.io/images/p3.jpg">
			    <img src="http://malsup.github.io/images/p4.jpg">
			</div>
		
		</td>
		<td rowspan="2">
		
		<div id="recom">
		
			<h4> 오늘의 추천여행 </h4>
			
			
			<table align="center" width="360px" height="325px">
				<tr>
					<td>
					<jsp:include page="main_item.jsp"></jsp:include>
					</td>
					<td>
					<jsp:include page="main_item.jsp"></jsp:include>
					</td>
				</tr>
				
				<tr>
					<td>
					<jsp:include page="main_item.jsp"></jsp:include>
					</td>
					<td>
					<jsp:include page="main_item.jsp"></jsp:include>
					</td>
				</tr>
			
			</table>
			
		</div>
		
		</td>
		<td  width="260px" height="110px">
		
			<div id="loginbar">
			
			<%
			
			String userId = (String)session.getAttribute("userId");
			
			if(userId==null){ %>
			<form action="login.jsp">
			
			<table align="center" >
				<tr>
					<td >
					<input type="text" name="userId" placeholder="아이디">
					</td>
					
					<td rowspan="2">
						<input type="submit" value="LOGIN" style="height:70px" id="loginB">
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" name="userPw" placeholder="패스워드" >
					</td>
				</tr>
				
				<tr>
					<td id="singup" colspan="2">
					
						<a href="signUp.jsp">
					
							회원가입하기
						</a>
						<a href="signUp.jsp">
					
							아이디/비밀번호 찾기
						</a>
					</td>
					
				</tr>
			</table>
			
			</form>
		<%	}else{ 
			
			%>
			
			<div id="loginInfo">
			
				<b><%=userId %></b>님 <br>
				
				
				<form action="logout.jsp" method="post">
					<input type="submit" value="로그아웃" id="logoutB">
				</form>
		
			</div>
			<%
			
		} %>
		 </div>
		 
		</td>
	</tr>
	
	<tr>
		<td>
		 <!-- 광고콘텐츠 -->
		</td>
		<td>
		 <!-- 광고콘텐츠 -->
		</td>
	</tr>
</table>

	
	
<table id="new">
	<tr>
		<th colspan="4">
			
			>> 최신 여행기록
		
		</th>
	</tr>
	
	<tr>
	<td>
	
		<%
		
		rs.last();
		rs.previous();
		
		if(rs.getRow()==0){
			
			
			%>
			
			<h1 id="none"> 아직 작성된 여행기가 없습니다 ㅜ,ㅜ </h1>
			
			<%
			
			
		}else{
		
		rs.first();
		rs.previous();
		
		for(int i = 0 ; i < 4 ; i++){
		
				if(rs.next() == false) break;
		
		%>
		
			
			<div class="mainCard">
			
			<%= rs.getString(3) %>
			
				<div class="subCard">
				
					랄랄라
				
				</div>
			
			</div>
	<%
	
	}
		%>
	</tr>
	
</table>



<%

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
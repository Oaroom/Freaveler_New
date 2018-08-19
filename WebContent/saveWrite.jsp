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


//코스 테이블
/*

create table course(
   id int auto_increment primary key not null,
     userid varchar(50) not null,
    title varchar(50),
    start varchar(50),
     end varchar(50),
    type varchar(30), 
    place1 varchar(50),
    place2 varchar(50),
    content text,
     days text);

*/



	request.setCharacterEncoding("utf-8");


//정보세팅



	String cTitle = request.getParameter("cTitle");
	String start = request.getParameter("startD");
	String end =request.getParameter("endD");
	String type = request.getParameter("type");
	String place1 = request.getParameter("place1");
	String place2 = request.getParameter("place2");
	

	// 총 몇개의 일정이 있는지 카운트
	int count=0;

 	while(request.getParameter("placeName"+count) != null){
		
		count++;
		
	}
	 
 
 	// 몇일 분량이며, 어디까지가 하루의 일정인지 구분.
 	
 	String days = "";
 	
	for(int i = 0 ; i <= count ; i++){
		
		
		
		
		if(request.getParameter("end"+i) != null ){
			
			days+=	i +"/";
			
		}
	
		
	}
 	
	
	
	//일정을 순서대로 담을 2차원 배열 선언
	//name, price, star, review
	String title[] = {"Name","Time","Money","Star","Review"};
	String place[][] = new String[count][5];
	

	String content="";
	
	
	for(int i = 0 ; i < count ; i++){
		
		for(int j = 0 ; j < 5 ; j++){
			
			
			//out.println(request.getParameter("place"+title[j]+i));
			
			content += request.getParameter("place"+title[j]+i)+"/";
		}
		
	}
	
	
	
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
	
	
	String sql = "insert into course values(0,'"+userId+"','"+cTitle+"','"+start+"','"+end+"','"+type+"','"+ place1+"','"+place2+"','"+content+"','"+days+"');";
	
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	int result = pstmt.executeUpdate();
	
	if(result == 1){
		
	%>
	
	<script type="text/javascript">
	
		alert("당신의 여행이 공유되었습니다!");
		
	</script>
	
	<meta http-equiv="refresh" content="0;url=course.jsp">
	
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
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


String userId = (String)session.getAttribute("userId");


%>


<!-- 
	create table mypage(
	     id int auto_increment primary key not null,
	     userid varchar(50) not null,
	     course varchar(50),
	     stay varchar(50),
	     city varchar(50));

 -->


<div id="board">
	
	<br>

	<div id="myinfo"> 
		<%= userId %> 님 환영합니다.! <br>
		마음에 드는 여행기와 숙소정보를 담으세요!
	</div>
<br>

</div>

	
	
</body>
</html>
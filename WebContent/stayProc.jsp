<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 
	create table stay(
	     id int auto_increment primary key not null,
	     userid varchar(50) not null,
	     stayName varchar(50),
	     country varchar(50),
	     city varchar(50),
	     star int(3),
	     price varchar(50),
	     days varchar(30),
	     people int(2));

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
	
		<div class="stayItem">
			 숙소 추천
		</div>
		
		
		<div class="stayItem">
			 숙소 추천
		</div>
					
					
	</div>


</body>
</html>
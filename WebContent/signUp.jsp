<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--  <jsp:forward page="index.jsp">
	 <jsp:param value="signUpForm.jsp" name="CONTENTPAGE"/>
 </jsp:forward> --%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="freaveler.css">
</head>
<body align="center" bgcolor="#fafafa">



<div id="signUpBar">

	<a href="content.jsp">HOME</a> 
	<a href="course.jsp">COURSE</a> 
	<a href="#">STAY</a> 
	<a href="#">FOOD</a> 

</div>

<img src="img/freaveler_logo3.png" id="logoimage">

<div id="divSignUp">




	<form action="saveInfo.jsp">
		
		<table id="formSignUp" align="center" >
		
			<tr>
				<td><input type="text" name="id" placeholder="아이디" required></td>
			</tr>
			<tr>
				<td><input type="text" name="pw" placeholder="비밀번호" required></td>
			</tr>	
			<tr>
				<td><input type="text"  name="name"placeholder="이름" required></td>
			</tr>
			<tr>
				<td><input type="text" name="birth" placeholder="생년월일 ex)000807" required></td>
			</tr>
			<tr>
				<td>
				<br>
					* 좋아하는 국가 <label id="like"> <br>
					여행지 추천에 사용되는 자료입니다</label> <br>
					<input type="checkbox"  name="like" value="아시아">아시아
					<input type="checkbox"  name="like" value="동남아">동남아
					<input type="checkbox"  name="like" value="유럽">유럽
					<input type="checkbox"  name="like" value="미주">미주
					<input type="checkbox"  name="like" value="남태평양">남태평양<br>
					<input type="checkbox"  name="like" value="대한민국">대한민국
					
				</td>
			</tr>
			
		</table>
		
		 <input type="submit" value="가입하기" class="writeB" align="center"/>
		
	</form>
	
</div>

</body>
</html>
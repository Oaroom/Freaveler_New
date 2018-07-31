<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

<table width="1500px"  style="aling:center; text-align: center">
		
		<tr>
			<th colspan="4">
			
				>> 여행기록 보기
			
			</th>
		</tr>
	
		<tr>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
			
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
		</tr>
		
		<tr>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
			
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
			<td>
				<jsp:include page="course_item.jsp"></jsp:include>
			</td>
		
		</tr>
		
	
	</table>

	</div>




</body>
</html>
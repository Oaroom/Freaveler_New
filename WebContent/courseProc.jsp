<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	

	


	
	<div id="contentbar">

<table width="1500px"  style="aling:center; text-align: center">
	
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
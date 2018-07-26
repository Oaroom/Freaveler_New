<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://malsup.github.com/jquery.cycle2.js"></script>


<link rel="stylesheet" type="text/css" href="freaveler.css">

</head>
<body>



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
			<table align="center" >
				<tr>
					<td >
					<input type="text" placeholder="아이디">
					</td>
					
					<td rowspan="2">
						<input type="submit" value="LOGIN" style="height:70px" id="loginB">
					</td>
				</tr>
				<tr>
					<td>
						<input type="text" placeholder="패스워드" >
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
		 </div>
		 
		</td>
	</tr>
	
	<tr>
		<td>
		</td>
		<td>
		
		</td>
	</tr>
</table>

	

</body>
</html>
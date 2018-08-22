<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    	String contentPage = request.getParameter("CONTENTPAGE");
    
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="freaveler.css">
 

<style>


 </style>
 
</head>
<body>

<div id="topMenu">

	<table>
		<tr>
			<td>
				프리블러란?
			</td>
			<td>
				버그 신고
			</td>
			<td>
				협찬 문의
			</td>
			<td>
				
			</td>
		</tr>
	</table>

</div>



<table width="1500px" align="center">
	
	<tr>
		<td>
			<jsp:include page="top.jsp"></jsp:include>	 
		</td>		
	</tr>
	
	<tr>
		<td>
			<jsp:include page="<%=contentPage %>"></jsp:include>
			
		</td>
	</tr>
	
	
	<tr>
		<td>
			 <jsp:include page="bottom.jsp"></jsp:include>	 
		</td>	
	</tr>
	
	
</table>

</body>
</html>
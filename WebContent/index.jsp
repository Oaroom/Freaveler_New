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
 

</head>
<body style="margin-left:300px;">


<table width="1500px" ailgn="center">
	
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
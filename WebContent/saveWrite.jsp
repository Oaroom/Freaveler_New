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

	request.setCharacterEncoding("utf-8");

	
	// 총 몇개의 일정이 있는지 카운트
	int count=1;

 	while(request.getParameter("placeName"+count) != null){
		
		count++;
		
	}
	 
 
 	// 몇 일분량의 일정인지 체크
 	
 	
	
	
	//일정을 순서대로 담을 2차원 배열 선언
	//name, price, star, review
	String title[] = {"Name","Money","Star","Review"};
	String place[][] = new String[count][4];
	
	
	

	
	
	
	for(int i = 1 ; i < count ; i++){
		
		for(int j = 0 ; j < 4 ; j++){
			
			
			out.println(request.getParameter("place"+title[j]+i));
			
		}
		
		
	}
	
	
	
	
	
	
	
	%>
</body>
</html>
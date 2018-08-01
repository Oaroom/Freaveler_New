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
	int count=0;

	while(request.getParameter("placeName"+count+1) != null){
		
		count++;
		
	}
	
	out.println(count);
	
	
	/*
	
		post로 넘겨지는 name 값에  개수를 세서 id 값을 붙임
		받아오는 과정에서 문제 발생
		>> 오류해결 해애함

		다음날 일차 추가하는 기능
		>>> DB연결 까지 
	
	*/
	
	/*
	
	
	
	//일정을 순서대로 담을 2차원 배열 선언
	//name, price, star, review
	String title[] = {"Name","Money","Star","Review"};
	String place[][] = new String[count][4];
	
	
	
	out.println("~~!!!!~");
	
	
	
	for(int i = 0 ; i < count ; i++){
		
		out.println("~~~");
		
	}
	
	for(int j = 0 ; j < 4 ; j++){
		
		
		
		out.println(request.getParameter("place"+title[j]+0+1));
		
	}
	*/
	
	
	
	
	
	%>
</body>
</html>
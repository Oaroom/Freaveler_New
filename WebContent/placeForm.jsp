<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">

#placeForm{

	font-family: '맑은고딕';
	width:700px;
	
	
}

#placeForm th{


	font-weight: normal;
}

img{

width:50px; height: 50px;
margin-right: 10px; 
vertical-align: top;
}

input{

	width:150px;
}


#placeStar{

	width:50px;
}

#placeReview{
	
	width:650px;
	min-height: 200px;

}
</style>


</head>
<body>

<table id="placeForm">

	<tr style="height: 50px;">
		<td rowspan="4" style="vertical-align: top">
			<img src="img/place.png"/ >
		</td>
		<th>
			장소명
		</th>
		<td>
			<input type="text" name="placeName" id="placeName" placeholder="오사카성"/>
		</td>
		<th>
			입장료
		</th>
		<td>
			<input type="text" name="placeMoney" id="placeMoney"  placeholder="3,000"/>
		</td>
		<th>
			별점
		</th>
		<td>
			<input type="number" name="placeStar" id="placeStar"  placeholder="5.0"/>
		</td>
	</tr>
	
	<tr>
		
		<td colspan="7">
			<input type="text" name="placeReview" id="placeReview" placeholder="당신의 여행을 공유해보세요"/>
		</td>
	</tr>
	
</table>


</body>
</html>
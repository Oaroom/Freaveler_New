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
	width:750px;
	margin:10px;
	margin-bottom: 20px;
	
	
}

#placeForm th{


	font-weight: normal;
}

#placeForm img{

width:60px; height: 60px;
margin-right: 10px; 
vertical-align: top;
}


#placeName{

	width:80px;
	height: 20px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;
}

#placeTime{

	width:150px;
	height: 20px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;
}

#placeMoney{

	width:80px;
	height: 20px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;
}

#placeStar{

	width:50px;
	height: 20px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;
}

#placeReview{
	
	
	width:650px;
	height: 100px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;

	vertical-align: top;

}

</style>


</head>
<body>


	<table id='placeForm'><tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/stay.png'/></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='헬로호텔'/></td><th>시간</th><td><input type='time' name='placeTime"+id+"' id='placeTime'/></td><th>비용</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='352,000원'/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0'/></td></tr><tr><td colspan='9'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='잠자리는 편안했나요?'/></td></tr></table>";
	


</body>
</html>
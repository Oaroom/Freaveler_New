<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">


var count;

window.onload=function(){
	
	count = 0;

}
	
//클릭했을때 요소 추가하는 함수 
function addInput(check) {
  
	
  
  switch (check) {
		case "place":   display(0); break;
		case "food" :	display(1); break;
		case "stay" :	display(2); break;
		
		default:
			break;
	}

}
 
function display(check) {
  
 
    document.getElementById('parah').innerHTML+=createInput(++count,check);
    
  
}
 

function createInput(id,check) {

	
	
	switch (check) {
	case 0: return "  <table id='placeForm'> <tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/place.png'/ ></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='오사카성'/></td><th>입장료</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='3,000원'/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0'/></td></tr><tr><td colspan='7'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='이곳에서 무엇을 했나요?'/></td></tr></table>";

		break;

	case 1: return "  <table id='placeForm'> <tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/food.png'/ ></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='이치란라멘'/></td><th>가격</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='15,000원'/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0'/></td></tr><tr><td colspan='7'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='음식은 어땠나요?'/></td></tr></table>";

		break;
		
	case 2: return "  <table id='placeForm'> <tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/stay.png'/ ></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='헬로호텔'/></td><th>비용</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='352,000원'/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0'/></td></tr><tr><td colspan='7'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='잠자리는 편안했나요?'/></td></tr></table>";

		break;

	default:
		break;
	}
	  	
	  	
	   
	 }

</script>


<style type="text/css">

#placeForm{

	font-family: '맑은고딕';
	width:700px;
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
	
	
	width:600px;
	height: 100px;
	
	padding:10px;
	
	border:1px solid #dadada;
	border-radius: 10px;

	font-size: 12pt;

	vertical-align: top;

}




</style>

</head>
<body align="center">


<%

	int day = 1;

%>

<form action="saveWrite.jsp" method="post">
<div id="board">
	
		<table id="boardTable" align="center" >
			<tr>
				<th>
				 제목
				</th>
				<td>
					<input type="text" id="Wtitle" placeholder="제목">
				</td>
			</tr>
			
			<tr>
				<th>
				
				여행날짜
				
				</th>
				<td>
					<input type="date" value="출발날짜" placeholder="출발날짜">에서  <input type="date" placeholder="도착날짜">까지
					
				</td>
			</tr>
			
			<tr>
				<th>
				
				여행지
				
				</th>
				<td>
					<input type="text"  placeholder="일본">의 	<input type="text" placeholder="오사카"> 
				</td>
			</tr>
	
		</table>
		
		
		<div id="courseBox">
		
		
			<h1><%=day %>일차</h1>
			
			<div class="dayBox">
				<table id="dayButtonBox">
					<tr>
						<th>
						
						</th>
						<td>
			
							<input type="button" id="placeB" value="방문 명소" onclick="addInput('place');">
						</td>
						<td>
							<input type="button" id="foodB" value="식사" onclick="addInput('food');">
						</td>
						<td>
							<input type="button" id="stayB" value="숙소" onclick="addInput('stay');">
						</td>
					</tr>
					<tr>
						<td colspan="4">
						</td>
					</tr>
				</table>
				
				<div id="parah"></div>
				
			</div> <!-- end of daybox -->
			
			<input type="button" id="plusB" value="다음날!"/>
					
		</div>
		
			<input type="submit" class="writeB" style=" margin-top:10px; margin-bottom:10px;">
		
	</div>
</form>



</body>
</html>
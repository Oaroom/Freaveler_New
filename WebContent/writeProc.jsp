<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%

	int day = 1;

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript">


var count;
var type;

window.onload=function(){
	
	count = 0;
	

}
	

	
//클릭했을때 요소 추가하는 함수 
function addInput(check) {
  
	
  
  switch (check) {
		case "place":   display(0); break;
		case "food" :	display(1); break;
		case "stay" :	display(2); break;	
		case "end" :	display(3); break;
		
		default:
			break;
	}

}
 
function display(check) {
  
    document.getElementById('parah').innerHTML+=createInput(count,check);
    
  
}
 

function createInput(id,check) {

	
	
	switch (check) {
	case 0: ++count; return "<input type='hidden' name='place"+count+"'><table id='placeForm' border='0'><tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/place.png'/></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='오사카성' required /></td><th>시간</th><td><input type='time' name='placeTime"+id+"' id='placeTime' required/></td><th>입장료</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='352,000원'required/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0' required/></td></tr><tr><td colspan='9'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='이곳에서 무엇을 하고 왔나요?' required /></td></tr></table>";
	
		break;

	case 1: ++count; return "<input type='hidden' name='food"+count+"'><table id='placeForm'><tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/food.png'/></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='이치란라멘' required /></td><th>시간</th><td><input type='time' name='placeTime"+id+"' id='placeTime' required/></td><th>가격</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='352,000원'required/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0' required/></td></tr><tr><td colspan='9'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='음식의 맛은 어땠나요?' required/></td></tr></table>";
		break;
		
	case 2: ++count; return  "<input type='hidden' name='stay"+count+"'><table id='placeForm'><tr style='height: 50px;'><td rowspan='4' style='vertical-align: top'><img src='img/stay.png'/></td><th>장소명</th><td><input type='text' name='placeName"+id+"' id='placeName' placeholder='헬로호텔' required/></td><th>시간</th><td><input type='time' name='placeTime"+id+"' id='placeTime' required/></td><th>비용</th><td><input type='text' name='placeMoney"+id+"' id='placeMoney' placeholder='352,000원'required/></td><th>별점</th><td><input type='number' name='placeStar"+id+"' id='placeStar' placeholder='5.0' required/></td></tr><tr><td colspan='9'><input type='text' name='placeReview"+id+"' id='placeReview' placeholder='잠자리는 편안했나요?' required/></td></tr></table>";

		break;
	case 3: return " <div class='end'> <input type='hidden' name=end"+count+">오늘 하루는 여기까지! 수고했어요 :-) </div>";

	break;

	default:
		break;
	}
	  	
	  	
	   
	 }


//클릭했을때 날짜 추가되는 함수
function plus(){
	
		
	   document.getElementById('plusDaybox').innerHTML+="<h1> 어렵군 </h1> <div class='dayBox'> <table id='dayButtonBox'><tr><th></th><td><input type='button' id='placeB' value='방문 명소' onclick='addInput('place');'></td><td><input type='button' id='foodB' value='식사' onclick='addInput('food');'></td><td><input type='button' id='stayB' value='숙소' onclick='addInput('stay');'></td></tr><tr><td colspan='4'></td></tr></table><div id='parah'></div>  </div>";
	   
	
	
}
	
</script>


</head>
<body align="center">

<%

	String userId = (String)session.getAttribute("userId");

	if(userId == null){
		
			%>
			
			<script type="text/javascript">
				alert("회원 전용 서비스 입니다. 로그인해주세요!");
				
			</script>
			<meta http-equiv="refresh" content="0;url=content.jsp">
			<% 	
	}
%>



<form action="saveWrite.jsp" method="post">

<div id="board">
	
		<table id="boardTable" align="center" >
			<tr>
				<th>
				 제목
				</th>
				<td>
					<input type="text" name="cTitle" id="cTitle" placeholder="제목">
				</td>
			</tr>
			
			<tr>
				<th>
				
				여행날짜
				
				</th>
				<td>
					<input type="date" name="startD" value="출발날짜" placeholder="출발날짜">에서  <input type="date" name="endD" placeholder="도착날짜">까지
					
				</td>
			</tr>
			
			<tr>
				<th>
				
				분류
				
				</th>
				<td>
					<select name="type">
						<option value="">선택</option>
				 		<option value="국내">국내</option>
					  	<option value="아시아">아시아</option>
					  	<option value="동남아" >동남아</option>
					  	<option value="유럽" >유럽</option>
					  	<option value="미주">미주</option>
					  	<option value="남태평양" >남태평양</option>
					  	<option value="아프리카" >아프리카</option>
					</select>
			
				</td>
			</tr>
			
			
			
			<tr>
				<th>
				
				여행지
				
				</th>
				<td>
					
					<input type="text" name="place1" placeholder="일본">의 	<input type="text" name="place2"placeholder="오사카"> 
				
				</td>
			</tr>
	
		</table>
		
		
		<div id="courseBox">
		
		
			<h1> 나의 여행을 나눠보세요 </h1> 
			<h3 style="text-align: left"> 우측의 세 개의 버튼을 통해서 일정을 짤 수 있습니다. </h3>
			<h3 style="text-align: left"> 하루 일정이 끝나면 '하루끝' 버튼으로 표시하세요!</h3> </h3>
			
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
						<td>
							<input type="button" id="stayB" value="하루끝" onclick="addInput('end');">
						</td>
					</tr>
					<tr>
						<td colspan="5">
						</td>
					</tr>
				</table>
				
				<div id="parah"></div>
				
			</div> <!-- end of daybox -->
			
			<input type="submit" id="plusB" value="여행 나누기" style=" margin-top:10px; margin-bottom:10px;">			
		</div>
		
		
		
	</div>
</form>



</body>
</html>
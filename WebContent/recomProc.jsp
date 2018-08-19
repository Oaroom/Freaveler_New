<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>




<style>
	
	#stayName{
	
		width:500px;
	
	}
	

</style>

</head>
<body align="center">




<form action="saveWrite.jsp" method="post">

<div id="board">
	
		
		
		<div id="recomBox">
		
		
			<h1> 당신의 숙소는 어땠나요? </h1> 
			<h3> 당신이 머물렀던 숙소를 평가해주세요. 자세할 수록 프리블러들에게 도움이 됩니다!</h3>
			
			<br>
			<br>
			
			
			
			
			
			
			
			
			
			
			<table id="recomTable" align="center" >
			
				<tr>
					<th>
					숙소이름
					</th>
					
					<td colspan="3">
					<input type="text" id="stayName" name="stayName" placeholder="파라다이스 호텔" required/><br>
					</td>
				</tr>
				
				<tr>
					<th>
					숙박일수
					</th>
					<td>
					<input type="number" id="stayDays" name="stayDays" placeholder="3" required/>박 <br>
					</td>
					<th>
					숙박인원
					</th>
					
					<td>
					<input type="number" id="stayPeople" name="stayPeople" placeholder="4" required/>명 <br>
					</td>
				</tr>
				<tr>
					
				</tr>
				<tr>
					<th>
					가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격
					</th>
					
					<td>
			<input type="text" id="stayPrice" name="stayPrice" placeholder="168,000" required/>원<br>
					</td>
						<th>
					별&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;점
			
					</th>
					
					<td>
					<input type="number" id="stayStars" name="stayStars" placeholder="3.0" required/>점<br>
			
					</td>
				</tr>
				
				<tr style="height: 30px">
					<td colspan="4">
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					 <b>추천하는 이유</b>
					</td>
				</tr>
				<tr>
					<td colspan="4">
					<input type="text" id="stayRecom" name="stayRecom" placeholder="깔끔하고 아늑한게 아주 만족스러워요" required /> <br>
			
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					 <b>아쉬웠던 점</b>
					</td>
				</tr>
				
				<tr>
					<td colspan="4">
					<input type="text" id="stayBad" name="stayBad" placeholder="방이 조금 좁았어요"/> <br> 
			
					</td>
				</tr>
					
			
			</table>
			
			<input type="submit" id="plusB" value="숙소 추천하기" style=" margin-top:50px; margin-bottom:10px;">			
	
			</div>
		
		
		
	</div>
</form>



</body>
</html>
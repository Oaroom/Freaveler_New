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


<form action="saveStay.jsp" method="post">

<div id="board">
	
		
		
		<div id="recomBox">
		
		
			<h1> 당신의 숙소는 어땠나요? </h1> 
			<h3> 당신이 머물렀던 숙소를 평가해주세요. 자세할 수록 프리블러들에게 도움이 됩니다!</h3>
			
			<br>
			<br>
			
			
			
			
			
			
			
			
			
		<form action="saveStay.jsp" method="post">
			<table id="recomTable" align="center"  >
			
			
				<tr>
					<th>
					위&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;치
					</th>
					<td colspan="3">
					
					<input type="text" id="stayCountry" name="stayCountry" placeholder="대한민국" required/>의 <input type="text" id="stayCity" name="stayCity" placeholder="서울" required/><br>
					<input type="text" id="stayEtc" name="stayEtc" placeholder="추가 정보를 기입해주세요  :-) 필수는 아니에요! ex) 신림역 2번 출구 근처" />
					
					</td>
					
				</tr>
			
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
					숙소종류
					</th>
					
					<td colspan="3">
					
					
					<select name="stayType">
							<option value="">선택</option>
					 		<option value="호텔">호텔</option>
						  	<option value="게스트하우스">게스트하우스</option>
						  	<option value="에어비엔비" >에어비엔비</option>
						  	<option value="기타" >기타</option>
					</select>
					
					
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
		
		</form>
		
	</div>
</form>



</body>
</html>
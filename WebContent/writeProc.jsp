<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<div id="board">
	
		<table id="boardTable">
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
				<th style="vertical-align: top">
				내용
				</th>
				<td>
					<input type="text" id="Wcontent" placeholder="당신의 여행을 나눠보세요">
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2">
					<input type="submit" class="writeB" style="margin-left:250px; margin-top:10px; margin-bottom:10px;">
				</td>
			</tr>
		
		
		</table>
	</div>



</body>
</html>
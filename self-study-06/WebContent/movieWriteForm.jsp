<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	#label{
		text-align:center;
		font-weight:bold;
	}
</style>
</head>
<body>
	<h1>정보 등록</h1>
	<form action="movieWrite.jsp" method="post">
		<table>
			<tr>
				<td id="label">제목</td>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<td id="label">가격</td>
				<td><input type="text" name="price">원</td>
			</tr>
			<tr>
				<td id="label">감독</td>
				<td><input type="text" name="director"></td>
			</tr>
			<tr>
				<td id="label">출연배우</td>
				<td><input type="text" name="actor"></td>
			</tr>
			<tr>
				<td id="label">시놉시스</td>
				<td><textarea name="synopsis" cols="60" rows="20"></textarea></td>
			</tr>
			<tr>
				<td id="label">장르</td>
				<td>
				<select name="genre">
					<option value="로맨스">로맨스</option>
					<option value="스릴러">스릴러</option>
					<option value="미스터리">미스터리</option>
					<option value="액션">액션</option>
					<option value="코미디">코미디</option>
					<option value="애니메이션">애니메이션</option>
				</select>
				</td>
			</tr>
		</table>
		
		<center>
		<input type="submit" value="확인"> 
		<input type="reset"value="취소">
		</center>
	</form>
</body>
</html>
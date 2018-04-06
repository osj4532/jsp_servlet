<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="movie" class="com.mission.javabeans.MovieBean" />
<jsp:setProperty property="*" name="movie" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>입력 완료된 정보</h2>
	<table>
		<tr>
			<td>제목</td>
			<td><jsp:getProperty property="title" name="movie" /></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><jsp:getProperty property="price" name="movie" /></td>
		</tr>
		<tr>
			<td>감독</td>
			<td><jsp:getProperty property="director" name="movie" /></td>
		</tr>
		<tr>
			<td>출연배우</td>
			<td><jsp:getProperty property="actor" name="movie" /></td>
		</tr>
		<tr>
			<td>시놉시스</td>
			<td><textarea cols="60" rows="20"><jsp:getProperty
						property="synopsis" name="movie" /></textarea></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><jsp:getProperty property="genre" name="movie" /></td>
		</tr>
	</table>
</body>
</html>
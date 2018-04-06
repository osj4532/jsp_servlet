<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 리스트</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>리스트</h1>
		<table>
			<tr>
				<td colspan="6" style="text-align: right; border: white;"><a
					href="moviewrite.do">정보등록</a></td>
			</tr>
			<tr>
				<th>제목</th>
				<th>감독</th>
				<th>배우</th>
				<th>가격</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>

			<c:forEach var="movie" items="${movielist }">
				<tr>
					<td>${movie.title }</td>
					<td>${movie.director }</td>
					<td>${movie.actor }</td>
					<td>${movie.price }원</td>
					<td><a href="movieupdate.do?code=${movie.code }">정보 수정</a></td>
					<td><a href="moviedelete.do?code=${movie.code }">정보 삭제</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</body>
</html>
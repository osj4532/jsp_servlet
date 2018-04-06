<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 수정</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>정보 수정</h1>
		<form method="post" enctype="multipart/form-data">
			<input type="hidden" name="code" value="${movie.code }">
			<input type="hidden" name="poster" value="${movie.poster }">
			<table>
				<tr>
					<td><c:choose>
							<c:when test="${empty movie.poster }">
								<img src="images/noimage.gif">
							</c:when>
							<c:otherwise>
								<img src="images/${movie.poster }">
							</c:otherwise>
						</c:choose>
					</td>
					<td>
						<table>
							<tr>
								<th>제 목</th>
								<td><input type="text" name="title" size="80" value="${movie.title }"></td>
							</tr>
							<tr>
								<th>가 격</th>
								<td><input type="text" name="price" size="80" value="${movie.price }"></td>
							</tr>
							<tr>
								<th>감 독</th>
								<td><input type="text" name="director" size="80" value="${movie.director }"></td>
							</tr>
							<tr>
								<th>배 우</th>
								<td><input type="text" name="actor" size="80" value="${movie.actor }"></td>
							</tr>
							<tr>
								<th>시놉시스</th>
								<td><textarea cols="82" rows="10" name="synopsis">${movie.synopsis }</textarea></td>
							</tr>
							<tr>
								<th>포스터</th>
								<td><input type="file" name="poster"></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input type="submit" value="수정">
			<input type="button" value="목록" onclick="location.href='movielist.do'">
		</form>
	</div>
</body>
</html>
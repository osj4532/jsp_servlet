<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>영화 등록</title>
<link rel="stylesheet" type="text/css" href="css/movie.css">
</head>
<body>
	<div id="wrap" align="center">
		<h1>영화 정보 등록</h1>
		<form method="post" enctype="multipart/form-data" name="frm">
			<table>
				<tr>
					<th>제 목</th>
					<td><input type="text" name="title" size="135"></td>
				</tr>
				<tr>
					<th>가 격</th>
					<td><input type="text" name="price" size="135"></td>
				</tr>
				<tr>
					<th>감 독</th>
					<td><input type="text" name="director" size="135"></td>
				</tr>
				<tr>
					<th>배 우</th>
					<td><input type="text" name="actor" size="135"></td>
				</tr>
				<tr>
					<th>시놉시스</th>
					<td><textarea cols="137" rows="10" name="synopsis"></textarea></td>
				</tr>
				<tr>
					<th>포스터</th>
					<td><input type="file" name="poster"></td>
				</tr>
			</table>
			<input type="submit" value="확인">
			<input type="reset" value="취소">
			<input type="button" value="목록" onclick="location.href='movielist.do'">
		</form>
	</div>
</body>
</html>
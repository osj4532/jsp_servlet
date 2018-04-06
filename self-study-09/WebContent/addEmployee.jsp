<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="add.do" method="post">
	<table align="center">
		<tr>
			<td colspan="2">사원등록</td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="userid" size="20"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="20"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" size="20"></td>
		</tr>
		<tr>
			<td>권한</td>
			<td>
				<select name="lev">
					<option value="A">관리자</option>
					<option value="B" selected="selected">일반회원</option>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="등록">
				<input type="reset" value="취소">
				<input type="button" value = "메인페이지로 이동" onclick="location.href='login.do'">
				<input type="button" value="사원 목록 보기" onclick="location.href='show.do'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
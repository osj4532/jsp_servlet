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
<table align="center" border="1 solid black">
	<tr>
		<td colspan="2"> 사원 정보<br>${message }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${addUser.userid}</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${addUser.pwd }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${addUser.name }</td>
	</tr>
	<tr>
		<td>권한</td>
		<td>${addUser.lev }</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="메인 페이지로 이동" onclick="location.href='login.do'">
		</td>
	</tr>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	td{
		text-align:center;
	}
</style>
</head>
<body>
<table align="center" border="1 solid black">
	<tr>
		<td colspan="2"><h4>사원 정보</h4><br>${message }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${loginUser.userid }</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${loginUser.pwd }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${loginUser.name }</td>
	</tr>
	<tr>
		<td>권한</td>
		<td>
			<c:if test="${loginUser.lev == A}">
				관리자
			</c:if>
			<c:if test="${loginUser.lev == B}">
				일반회원
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="메인 페이지로 이동" onclick="location.href='main.jsp'">
		</td>
	</tr>
</table>
</body>
</html>
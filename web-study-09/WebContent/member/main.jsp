<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${empty loginUser}">
	<jsp:forward page="login.do"/>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 완료</title>
<script type="text/javascript">
	
</script>
</head>
<body>
<h2>회원 전용 페이지</h2>
<form action="login.do">
	<table>
		<tr>
			<td>
				안녕하세요. ${loginUser.name }(${loginUser.userid })님
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="로그아웃">&nbsp;&nbsp;
				<input type="button" value="회원정보변경" onclick="location.href='/web-study-09/memberUpdate.do?userid=${loginUser.userid}'">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
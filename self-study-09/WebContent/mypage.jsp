<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="mypage.do" method="post">
	<table align="center">
		<tr>
			<td colspan="2">마이페이지</td>
		</tr>
		<tr>
			<td>아아디</td>
			<td><input type="text" name="userid" size="20" value="${loginUser.userid }" readonly></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="20" value="${loginUser.pwd }"></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" size="20" value="${loginUser.name }" readonly></td>
		</tr>
		<tr>
			<td>레벨</td>
			<td>
				<select name="lev">
					<c:if test="${result == 2 }">
						<option value="A" selected="selected">관리자</option>
						<option value="B">일반회원</option>
					</c:if>
					<c:if test="${result == 3 }">
						<option value="A">관리자</option>
						<option value="B" selected="selected">일반회원</option>
					</c:if>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정">&nbsp;
				<input type="reset" value="취소">
			</td>
		</tr>
	</table>
</form>
</body>
</html>
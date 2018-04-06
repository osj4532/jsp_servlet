<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
td {
	border: 1px solid black;
	width: 200px;
	text-align: center;
	align: center;
}

.login:hover {
	background-color: pink;
}
</style>
</head>
<body>
	<table align="center">
		<tr>
			<c:if test="${empty loginUser }">
				<td></td>
				<td></td>
				<td class="login"><a href="login.do"
					style="text-decoration: none;">로그인</a></td>
				<td style="color: red; width: 250px;">사원 등록<br>
				<span>(관리자로 로그인 후 사용 가능)</span></td>
				<td style="color: red;">마이페이지<br>
				<span>(로그인 후 사용 가능)</span></td>
			</c:if>

			<c:if test="${!empty loginUser }">
				<td>${loginUser.name }님반갑습니다.</td>
				<td>레벨 : ${loginUser.lev }</td>
				<td class="login"><a href="logout.do" style="text-decoration: none;">로그아웃</a></td>
				<c:if test="${result == 2 }">
					<!-- 관리자 -->
					<td class="login"><a href="add.do" style="text-decoration: none;">사원
							등록</a></td>
				</c:if>

				<c:if test="${result == 3 }">
					<!-- 일반 회원 -->
					<td style="color: red; width: 250px;">사원 등록<br>
					<span>(관리자로 로그인 후 사용 가능)</span></td>
				</c:if>
				<td class="login"><a href="mypage.do" style="text-decoration: none;">마이페이지</a></td>
			</c:if>
		</tr>
	</table>
</body>
</html>
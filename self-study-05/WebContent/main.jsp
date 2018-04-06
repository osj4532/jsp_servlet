<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Cookie[] ck = null;
		ck = request.getCookies();

		if (ck != null) {
			for (Cookie cookie : ck) {
				if (cookie.getName().equals("username")) {
					out.print(cookie.getValue());
				}
			}
	%>
	님 안녕하세요!
	<br> 저희 홈페이지에 방문해 주셔서 감사합니다.
	<br> 즐거운 시간 되세요....
	<br>
	<form method="post" action="logout.jsp">
		<input type="submit" value="로그아웃">
	</form>
	<%
		} else {
	%>
		<h2> 로그인에 실패했습니다.</h2>
		<p><a href="loginForm.jsp">되돌아가기</a></p>
	<%
		}
	%>
</body>
</html>
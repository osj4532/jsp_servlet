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
		int sel = Integer.parseInt(request.getParameter("sel"));
		if (sel == 1) {
			response.sendRedirect("http://www.naver.com");
		} else if (sel == 2) {
			response.sendRedirect("http://www.daum.net");
		} else if (sel == 3) {
			response.sendRedirect("http://www.nate.com");
		} else if (sel == 4) {
			response.sendRedirect("http://www.google.com");
		}
	%>
</body>
</html>
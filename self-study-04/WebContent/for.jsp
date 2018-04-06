<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	int endnum = Integer.parseInt(request.getParameter("endnum"));
	int sum = 0;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1부터 <%=endnum %>까지 자연수 합 구하기</h1>
	<%
		for (int i = 1; i <= endnum; i++) {
	%>
	<%=i%>
	<%
		sum = sum + i;
			if (i == endnum) {
				out.print(" = ");
			} else {
				out.print("+");
			}
		}
	%>
	<%=sum%>
</body>
</html>
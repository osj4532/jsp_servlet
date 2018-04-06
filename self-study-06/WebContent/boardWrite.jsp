<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="board" class="com.mission.javabeans.BoardBean"></jsp:useBean>
<<jsp:setProperty property="*" name="board" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>입력 완료된 정보</h1>
	
	<table>
		<tr>
			<td>작성자</td>
			<td><jsp:getProperty property="name" name="board"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pass" name="board"/></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td><jsp:getProperty property="email" name="board"/></td>
		</tr>
		<tr>
			<td>글제목</td>
			<td><jsp:getProperty property="title" name="board"/></td>
		</tr>
		<tr>
			<td>글내용</td>
			<td><jsp:getProperty property="content" name="board"/></td>
		</tr>
	</table>
</body>
</html>
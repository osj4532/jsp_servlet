<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="member" class="com.saeyan.javabeans.MemberBean"/>
◎ 자바 빈 객체 생성 후 저장된 정보 출력하기 <br><br>
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>
<hr>

◎ 자바 빈 객체 생성 후 변경된 정보 출력하기 <br><br>
<%
	member.setName("전수빈");
	member.setUserid("pinksung");
%>
이름 : <%=member.getName() %><br>
아이디 : <%=member.getUserid() %>
</body>
</html>
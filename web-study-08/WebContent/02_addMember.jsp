<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	Connection conn = null;
	PreparedStatement pstmt=null;
	
	String url="jdbc:oracle:thin:@localhost:1521:testDB";
	String uid="scott";
	String pass="tiger";
	
	String sql="insert into member values(?,?,?,?,?,?)";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String userid = request.getParameter("userid");
	String pwd = request.getParameter("pwd");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	String admin = request.getParameter("admin");
	
	try{
		//(1단계) JDBC 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//(2단계) 데이터베이스 연결 객체인 connection 생성
		conn = DriverManager.getConnection(url , uid, pass);
		//(3단계) PreparedStatement 객체 생성하기
		pstmt = conn.prepareStatement(sql);
		//(4단계) 바인딩 변수를 채운다.
		pstmt.setString(1,name);
		pstmt.setString(2,uid);
		pstmt.setString(3,pwd);
		pstmt.setString(4,email);
		pstmt.setString(5,phone);
		pstmt.setInt(6,Integer.parseInt(admin));
		//(5단계) SQL문을 실행하여 결과 처리
		pstmt.executeUpdate();
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			if(conn!=null) conn.close();
			if(pstmt!=null) pstmt.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
%>
<h3>회원가입 성공</h3>
<a href="01_allMember.jsp">회원 전체 목록 보기</a>
</body>
</html>
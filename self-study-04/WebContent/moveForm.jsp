<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>검색 엔진 정보 페이지</h1>
	<h3>검색 엔진을 선택하세요.</h3>
	<form action="moveWeb.jsp" id="frm">
		<select name="sel" id="sel">
			<option value="1" selected="selected">네이버</option>
			<option value="2">다음</option>
			<option value="3">네이트</option>
			<option value="4">구글</option>
		</select>
		<input type="submit" value="확인">
	</form>
</body>
</html>
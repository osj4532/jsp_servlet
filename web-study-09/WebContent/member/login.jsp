<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 페이지</title>
<script type="text/javascript">
	function loginCheck() {
		if (document.frm.userid.value.length == 0) {
			alert("아이디를 입력해주세요.");
			frm.userid.focus();
			return false;
		}
		if (document.frm.pwd.value == "") {
			alert("비밀 번호를 입력해주세요.");
			frm.pwd.focus();
			return false;
		}
		return true;
	}
</script>
</head>
<body>
	<h2>로그인</h2>
	<form action="login.do" method="post" name="frm">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="userid" value="${userid}"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인"
					onclick="return loginCheck()">&nbsp;&nbsp; <input
					type="reset" value="취소"> &nbsp;&nbsp; <input type="button"
					value="회원가입" onclick="location.href='join.do'"></td>
			</tr>
			<tr>
				<td colspan="2">${message}</td>
			</tr>
		</table>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>
	label{
		width:160px;
		display:inline-block;
		vertical-align:top;
	}
	
	#button{
		text-align:center;
	}
</style>

<script type="text/javascript" src="check.js"></script>

</head>
<body>
	
	<form method="get" action="JoinServlet"  name="frm">
		<label for="name">이름</label>
		<input type="text" name="name" id="name" size="15"><br>
		<label for="jomin1">주민등록번호</label>
		<input type="text" name="jomin1" id="jomin1" size="15">-
		<input type="password" name="jomin2" id="jomin2" size="15"><br>
		<label for="id">아이디</label>
		<input type="text" name="id" id="id" size="15"><br>
		<label for="pwd">비밀번호</label>
		<input type="password" name="pwd" id="pwd" size="15"><br>
		<label for="pwdchk">비밀번호 확인</label>
		<input type="password" name="pwdchk" id="pwdchk" size="15"><br>
		<label for="mail1">이메일</label>
		<input type="text" name="mail1" id="mail1" size="15">@
		<input type="text" name="mail2" id="mail2" size="15">
		<select name="selectmail" id="selectmail" onchange="mailsel(this.form)">
			<option value="" selected="selected">직접입력</option>
			<option value="naver.com">naver.com</option>
			<option value="nate.com">nate.com</option>
			<option value="daum.net">daum.net</option>
			<option value="google.com">google.com</option>
			<option value="icloud.com">icloud.com</option>
		</select><br>
		<label for="zip">우편번호</label>
		<input type="text" name="zip"id="zip" size="15"><br>
		<label for="addr1">주소</label>
		<input type="text" name="addr1" id="addr1" size="15">
		<input type="text" name="addr2" id="addr2" size="15"><br>
		<label for="phone">핸드폰번호</label>
		<input type="text" name="phone" id="phone" size="15"><br>
		<label for="job" style="align='top';">직업</label>
		<select	name="job" id="job" size="3">
			<option value="학생" selected="selected">학생</option>
			<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
			<option value="군인">군인</option>
			<option value="서비스업">서비스업</option>
			<option value="교육">교육</option>
		</select><br>
		<label for="chk_mail">메일/SMS 정보 수신</label>
		<input type="radio" name="chk_mail" checked="checked">수신
		<input type="radio" name="chk_mail">수신거부<br>
		<label for="interest">관심분야</label>
		<input type="checkbox" name="interest" value="생두">생두&nbsp;
		<input type="checkbox" name="interest" value="원두">원두&nbsp;
		<input type="checkbox" name="interest" value="로스팅">로스팅&nbsp;
		<input type="checkbox" name="interest" value="핸드드립">핸드드립&nbsp;
		<input type="checkbox" name="interest" value="에스프레소">에스프레소&nbsp;
		<input type="checkbox" name="interest" value="창업">창업&nbsp;<br><br>
		
		<div id="button">
			<input type="submit" value="회원가입" onclick="return check()">
			<input type="button" value="취소">
		</div>
	</form>
	
</body>
</html>
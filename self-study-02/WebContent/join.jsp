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
		<label for="name">�̸�</label>
		<input type="text" name="name" id="name" size="15"><br>
		<label for="jomin1">�ֹε�Ϲ�ȣ</label>
		<input type="text" name="jomin1" id="jomin1" size="15">-
		<input type="password" name="jomin2" id="jomin2" size="15"><br>
		<label for="id">���̵�</label>
		<input type="text" name="id" id="id" size="15"><br>
		<label for="pwd">��й�ȣ</label>
		<input type="password" name="pwd" id="pwd" size="15"><br>
		<label for="pwdchk">��й�ȣ Ȯ��</label>
		<input type="password" name="pwdchk" id="pwdchk" size="15"><br>
		<label for="mail1">�̸���</label>
		<input type="text" name="mail1" id="mail1" size="15">@
		<input type="text" name="mail2" id="mail2" size="15">
		<select name="selectmail" id="selectmail" onchange="mailsel(this.form)">
			<option value="" selected="selected">�����Է�</option>
			<option value="naver.com">naver.com</option>
			<option value="nate.com">nate.com</option>
			<option value="daum.net">daum.net</option>
			<option value="google.com">google.com</option>
			<option value="icloud.com">icloud.com</option>
		</select><br>
		<label for="zip">�����ȣ</label>
		<input type="text" name="zip"id="zip" size="15"><br>
		<label for="addr1">�ּ�</label>
		<input type="text" name="addr1" id="addr1" size="15">
		<input type="text" name="addr2" id="addr2" size="15"><br>
		<label for="phone">�ڵ�����ȣ</label>
		<input type="text" name="phone" id="phone" size="15"><br>
		<label for="job" style="align='top';">����</label>
		<select	name="job" id="job" size="3">
			<option value="�л�" selected="selected">�л�</option>
			<option value="��ǻ��/���ͳ�">��ǻ��/���ͳ�</option>
			<option value="���">���</option>
			<option value="������">������</option>
			<option value="����">����</option>
			<option value="���񽺾�">���񽺾�</option>
			<option value="����">����</option>
		</select><br>
		<label for="chk_mail">����/SMS ���� ����</label>
		<input type="radio" name="chk_mail" checked="checked">����
		<input type="radio" name="chk_mail">���Űź�<br>
		<label for="interest">���ɺо�</label>
		<input type="checkbox" name="interest" value="����">����&nbsp;
		<input type="checkbox" name="interest" value="����">����&nbsp;
		<input type="checkbox" name="interest" value="�ν���">�ν���&nbsp;
		<input type="checkbox" name="interest" value="�ڵ�帳">�ڵ�帳&nbsp;
		<input type="checkbox" name="interest" value="����������">����������&nbsp;
		<input type="checkbox" name="interest" value="â��">â��&nbsp;<br><br>
		
		<div id="button">
			<input type="submit" value="ȸ������" onclick="return check()">
			<input type="button" value="���">
		</div>
	</form>
	
</body>
</html>
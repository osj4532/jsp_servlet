function check(){
	
	var sel = document.getElementById("selectmail");
	var val = sel.options[sel.selectedIndex].value;
	
	if(document.frm.name.value.length == 0){
		alert("이름을 입력해주세요.");
		frm.name.focus();
		return false;
	}else if(document.frm.jomin1.value.length == 0){
		alert("주민번호 앞자리를 입력해주세요.");
		frm.jomin1.focus();
		return false;
	}else if(isNaN(document.frm.jomin1.value)){
		alert("잘못된 주민번호입니다. 숫자로 입력해주세요.");
		frm.jomin1.focus();
		return false;
	}else if(document.frm.jomin1.value.length != 6){
		alert("잘못된 주민번호입니다. 6자리로 입력해주세요.");
		frm.jomin1.focus();
		return false;
	}else if(document.frm.jomin2.value.length == 0){
		alert("주민번호 뒷자리를 입력해주세요.");
		frm.jomin2.focus();
		return false;
	}else if(isNaN(document.frm.jomin2.value)){
		alert("잘못된 주민번호입니다. 숫자로 입력해주세요.");
		frm.jomin2.focus();
		return false;
	}else if(document.frm.jomin2.value.length != 7){
		alert("잘못된 주민번호입니다. 7자리를 입력해주세요.");
		frm.jomin2.focus();
		return false;
	}else if(document.frm.id.value.length == 0){
		alert("아이디를 입력해주세요.");
		frm.id.focus();
		return false;
	}else if(document.frm.pwd.value.length == 0){
		alert("비밀번호를 입력해주세요.");
		frm.pwd.focus();
		return false;
	}else if(document.frm.pwdchk.value.length == 0){
		alert("비밀번호를 확인해주세요.");
		frm.pwdchk.focus();
		return false;
	}else if(document.frm.pwd.value != document.frm.pwdchk.value){
		alert("비밀번호가 다릅니다. 다시 확인 후 입력해주세요.");
		frm.pwdchk.focus();
		return false;
	}else if(document.frm.mail1.value == ""){
		alert("이메일을 입력해주세요.");
		frm.mail1.focus();
		return false;
	}else if(val == 0){
		if(document.frm.mail2.value == ""){
			alert("이메일을 입력해주세요.");
			frm.mail2.focus();
			return false;
		}
	}else if(document.frm.zip.value == ""){
		alert("우편번호 입력해주세요.");
		frm.zip.focus();
		return false;
	}else if(document.frm.addr1.value == ""){
		alert("주소를 입력해주세요.");
		frm.addr1.focus();
		return false;
	}else if(document.frm.addr2.value == ""){
		alert("남은 주소를 입력해주세요.");
		frm.addr2.focus();
		return false;
	}else if(document.frm.phone.value == ""){
		alert("핸드폰 번호를 입력해주세요.");
		frm.phone.focus();
		return false;
	}
}

function mailsel(num){
	var ind = num.selectmail.selectedIndex;
	
	switch(ind){
	case 0:
		num.mail2.value='';
		num.mail2.disabled = false;
		break;
	case 1:
		num.mail2.value='naver.com';
		num.mail2.disabled = true;
		break;
	case 2:
		num.mail2.value='nate.com';
		num.mail2.disabled = true;
		break;
	case 3: 
		num.mail2.value='daum.net';
		num.mail2.disabled = true;
		break;
	case 4: 
		num.mail2.value='google.com';
		num.mail2.disabled = true;
		break;
	case 5: 
		num.mail2.value='icloud.com';
		num.mail2.disabled = true;
		break;
	}
}
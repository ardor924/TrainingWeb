function inputChk(){
	
	/* 아이디검사 */
	if(document.joinForm.id.value.length == 0){
		alert("아이디를 입력해주세요!");
		joinForm.id.focus();
		return;
	}
	
	/* 아이디검사 */
	if(document.joinForm.id.value.length < 3){
		alert("아이디는 최소 3글자 이상이어야 합니다!");
		joinForm.id.focus();
		return;
	}
	
	/* 비번검사 */
	if(document.joinForm.pw.value.length == 0 ){
		alert("비밀번호를 입력하세요!");
		joinForm.pw.focus();
		return;
	}
	
	/* 비번검사 */
	if(document.joinForm.pw.value !=  document.joinForm.pwConfirm.value ){
		alert("비밀번호가 틀려요!");
		joinForm.pwConfirm.focus();
		return;
	}
	
	/* 이름공백 */
	if(document.joinForm.name.value == 0 ){
		alert("이름을 입력하세요");
		joinForm.name.focus();
		return;
	}
	
	
	/* 이메일공백 */
	if(document.joinForm.email.value == 0 ){
		alert("이메일을 입력하세요");
		joinForm.email.focus();
		return;
	}
	
	/* 이메일 검사 */
	var emailVaild = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	if(emailVaild.test(joinForm.email.value) == false){
		alert("올바르지 않은 이메일 형식입니다.");
		joinForm.email.focus();
	return false;
	}
	
	/* 전화번호 공백 */
	if(document.joinForm.tel.value == 0 ){
		alert("전화번호를 입력하세요");
		joinForm.tel.focus();
		return;
	}
	
	/* 전화번호 검사*/
	var telVaild = /^01([0|1|6|7|8|9])-?([0-9]{3,4})-?([0-9]{4})$/;
	if(telVaild.test(joinForm.tel.value) == false){
		alert("올바른 전화번호가 아닙니다.");
		joinForm.tel.focus();
	return false;
	}

	
	document.joinForm.submit();

	
	
}
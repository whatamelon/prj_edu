<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>회원가입</title>

    <!-- Bootstrap core CSS -->
    <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
	<link href="resources/css/simple-line-icons.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="/resources/css/createaccount.css" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/get.css" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	a {    
	
    text-decoration: none;}
    
     nav{
 	 	background-color:#A566FF !important;
 	 }
</style>
</head>
<body>

    <!-- 헤더1 : 네비게이션 / 로그인 / 회원가입 -->
	<div class="container">
		<a class="navbar-brand" style="color:#8041D9; font-size:70px;">Edu_Moya</a>
		<a class="navbar-brand" style="color:#000000;  font-size:50px; ">회원가입</a>
	</div>
   

	<!-- 회원가입 시작 -->
	
	<div class="container">

  <form action="/main.do" method="post" id="submitForm">
  
  <input type="text" name="id" id="id" maxlength="10" placeholder="아이디(10자 이하로 입력해주세요.)" required/><br>
  
  <input type="text" name="pwd" id="pwd_ck" maxlength="20" placeholder="비밀번호(8자리~20자 사이)" required/><br>
  
  <input type="text" name="pwdChk" id="pwdChk_id" maxlength="20" placeholder="비밀번호 확인" required/><br>
 
  <input type="text" name="name" id="name" placeholder="이름(한글로 입력해주세요.)" required/><br>
  
  <h3>회원사진 등록 : </h3>
  <h6>회원가입 후 마이페이지에서 업로드 할 수 있습니다.<br>
평가글을 작성하고 싶으시다면 이미지 업로드를 해주세요.</h6>
  <h6>이미지 규정 : 고등학생 - 학생증<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   성인 - 이전수능 수험표</h6>
  
  <input type="text" name="nickname" id="name" placeholder="닉네임(10자 이하로 입력해주세요.)" required/><br>
  
  <input type="text" name="birthdate" id="birthdate" placeholder="생년월일 ex)19990101" required/><br>
  
  <button type="button" onclick="check()" value=회원가입 class="button">확인</button>
   
  </form>
</div>
	
	
	<!-- 회원가입 끝 -->


    <!-- Bootstrap core JavaScript -->
    <script src="/resource/vendor/jquery/jquery.min.js"></script>
    <script src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

<script>

function check(){ 

	 var pwd = document.getElementById('pwd_ck');
	 var pwdChk = document.getElementById('pwdChk_id');
	 var stu_num=document.getElementById('stu_num');
	 var name=document.getElementById('name');
	 var birth=document.getElementById('birth');
	 var bar_num=document.getElementById('bar_num');
	 
	 if(pwd.value.length<8) { 
		 alert('비밀번호는 8자 이상 20자 이하입니다.'); 
		 pwd.focus(); 
		 return false; 
	 }
	 if(pwdChk.value.length < 8) {
		 alert('비밀번호 확인은 8자 이상 20자 이하입니다.'); 
		 pwdChk.focus();
		 return false;
	 }
	 
	 if(pwd.value != pwdChk.value){ 
		 alert('비밀번호가 다릅니다..'); 
		 pwdChk.focus();
		 return false;
		 }

	 if(name.value.lengh<2){ 
		 alert('이름은 2자 이상입니다.'); 
		 name.focus(); 
		 return false; 
		 } 
	
	 if(birthdate.value.length<8){ 
		 alert('생일은 8자 입니다.'); 
		 birth.focus(); 
		 return false; 
		 } 
	 if(!Number(birthdate.value)){ 
		 alert('생일은 숫자를 입력해야합니다'); 
		 return false; 
		 } 
	 
	 $('#submitForm').submit();
}

	 
 </script>
</html>
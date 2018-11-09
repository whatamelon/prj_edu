<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>아이디찾기</title>

    <!-- Bootstrap core CSS -->
    <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="/resource/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="/resource/css/landing-page.min.css" rel="stylesheet">
    <link href="/resources/css/findid.css" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
	a { 
    text-decoration: none;}
    
</style>

</head>
<body>

    <!-- 헤더1 : 네비게이션 / 로그인 / 회원가입 -->
	<div class="container">
		<a class="navbar-brand" style="color:#8041D9; font-size:70px;">Edu_Moya</a>
		<a class="navbar-brand" style="color:#000000;  font-size:50px; ">아이디 찾기</a>
	</div>


	<!-- 아이디 찾기 시작 -->
	
	<div class="container">

  <form action="/user/findid2.do" method="post" id="submitForm">
  
  <input style="font-size:20px; font-weight:bold;" type="text" name="name" id="" maxlength="10" placeholder="이름" required/><br>

  
  <input style="font-size:20px; font-weight:bold;" type="text" name="birth" id="birth" placeholder="생년월일 ex)19990101" required/><br>
  
  <br>
	<br>
	
	
  <button style="font-size:20px; font-weight:bold;" type="button" onclick="check()" value=값입력 class="button">아이디 찾기</button>

  </form>
	<!-- 아이디 찾기 끝 -->
	
    </div>


    <!-- Bootstrap core JavaScript -->
    <script src="/resource/vendor/jquery/jquery.min.js"></script>
    <script src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

  <script>
  
  function check(){ 
	  
	  var birth=document.getElementById('birth');
	  
	 if(birth.value.length<8){ 
		 alert('생일은 8자 입니다.'); 
		 birth.focus(); 
		 return false; 
		 } 
	 
	 if(!Number(birth.value)){ 
		 alert('생일은 숫자를 입력해야합니다'); 
		 return false; 
		 } 
	 $('#submitForm').submit();
	  }
  
  </script>


</html>
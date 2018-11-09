<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>로그인</title>

    <!-- Bootstrap core CSS -->
    <link href="/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="/resource/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
    <link href="/resource/vendor/simple-line-icons/css/simple-line-icons.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="/resource/css/landing-page.min.css" rel="stylesheet">
    <link href="/resources/css/login.css" rel="stylesheet">

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
		<a class="navbar-brand" style="color:#000000;  font-size:50px; ">로그인</a>
	</div>
   

	
		<!-- 로그인-->
	<div class="site__container">

    <div class="grid__container">

      <form action="/user/index1.do" method="post" id="submitForm" class="form form--login">

        <div class="form__field">
          <label class="fontawesome-user" for="login__username"><span class="hidden">아이디</span></label>
          <input id="id" type="text" name="id_login" class="form__input" placeholder="아이디" required>
        </div>

        <div class="form__field">
          <label class="fontawesome-lock" for="login__password"><span class="hidden">Password</span></label>
          <input id="pwd" type="password" name="pwd_login" class="form__input" placeholder="비밀번호" required>
        </div>

        <div class="form__field">
          <input type="submit" value="로그인">
        </div>

      </form>

    </div>

  </div>


    <!-- Bootstrap core JavaScript -->
    <script src="/resource/vendor/jquery/jquery.min.js"></script>
    <script src="/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

  <script>

function check(){ 

	 var stuNum = document.getElementById('id');
	 var pwd = document.getElementById('pwd_login');
	 
	 $('#submitForm').submit();
  
}
  
  </script>
  
</html>
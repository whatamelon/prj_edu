<%@page import="poly.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% UserDTO uDTO = (UserDTO)session.getAttribute("uDTO");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--  ------------------------------헤드 시작-------------------------------- -->

 <head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="/resources/img/apple-icon.png">
  <link rel="icon" type="image/png" href="/resources/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  
  <title>
    Now UI Dashboard by Creative Tim
  </title>
  
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  
  <!--     Fonts and icons     -->
  
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  
  <!-- CSS Files -->
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
  <link href="/resources/css/bootstrap.min.css" rel="stylesheet" />
  <link href="/resources/css/now-ui-dashboard.css?v=1.2.0" rel="stylesheet" />
  <link href="/resources/css/sidebarandpanel.css" rel="stylesheet" />
  <link href="/resources/css/vendorprefixes.css" rel="stylesheet" />
  
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/resources/demo/demo.css" rel="stylesheet" />
  
 <style>
 
 	.row{
 		height:120px;
 	}
 	
 	.button{
 		 font-size: 20px;
  		font-weight: 600;
 		 color: white;
		 padding: 10px 20px 10px 20px;
  		margin: 30px 0px 10px 120px;
  		display: inline-block;
 		 text-decoration: none;
 		 width: 150px;
		  height: 70px; 
  		border-radius: 5px; 
		  background-color: #A566FF;
 		 box-shadow: 0 3px rgba(128,65,217,.30);
  		transition: all 0.1s linear 0s; 
  		position: relative;
	}

	.button:hover {
  		background-color:#8041D9;
 		 -webkit-box-shadow: none; 
 		 -moz-box-shadow: none; 
 		 box-shadow: none;
  
	}
 	
 
 
 </style>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        
        <a href="http://www.creative-tim.com" class="simple-text logo-normal" style="font-size:35px;">
         Edu_Moya
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
         
          <li>
            <a href="#">
              <i class="now-ui-icons education_atom"></i>
              <p style="font-size:15pt;">홈</p>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="now-ui-icons location_map-big"></i>
              <p style="font-size:15pt;">국어 게시판</p>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="now-ui-icons media-2_sound-wave"></i>
              <p style="font-size:15pt;">수학 게시판</p>
            </a>
          </li>
          <li>
            <a href= "#">
              <i class="now-ui-icons text_caps-small"></i>
              <p style="font-size:15pt;">영어 게시판</p>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="now-ui-icons design-2_ruler-pencil"></i>
              <p style="font-size:15pt;">공부템 게시판</p>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="now-ui-icons users_single-02" ></i>
              <p style="font-size:15pt;">독서실 게시판</p>
            </a>
          </li>
          
        </ul>
      </div>
    </div>
    
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg fixed-top navbar-transparent  bg-primary  navbar-absolute" style="padding-top:18px;">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
             <p style="font-size:15pt;">회원정보수정</p>
             <i class="now-ui-icons sport user_run-big"></i>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
          
          
          <span style="width:90px;"><a href="/user/login.do" style="font-size:15px; text-decoration:none;">회원가입</a></span>
          
          <span style="width:110px;"><a href="/user/login.do" style="font-size:15px; text-decoration:none;">아이디 찾기</a></span>
            
          <span style="width:200px;"><a href="/user/login.do" style="font-size:15px; text-decoration:none;">비밀번호 찾기</a></span>
             
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      
      <!-- 게시판 시작 -->
      
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content" style="margin-bottom: 465px;">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                <div class="table-responsive">
                  	<div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h5 class="title">회원정보 수정</h5>
              </div>
              <div class="card-body">
                <form action="/user/adminuserTable.do" id="submitForm" method="POST">
                  <div class="row">
                    <div class="col-md-5 pr-1">
                      <div class="form-group">
                      	<input type="hidden" name="usr_seq_no" value="<%=uDTO.getUsr_seq_no() %>">
                        <label style="font-size:1.2571em;">아이디</label>
                        <input type="text" name="usr_id" id="id" class="form-control" value="<%=uDTO.getUsr_id() %>" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label style="font-size:1.2571em;">비밀번호</label>
                        <input type="text" name="password" id="password" class="form-control" value="<%=uDTO.getPassword() %>" />
                      </div>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-md-6 pr-1">
                      <div class="form-group">
                        <label style="font-size:1.2571em;">비밀번호확인</label>
                        <input type="text" name="pwdChk" id="pwdChk" class="form-control" value="<%=uDTO.getPassword() %>" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 pr-1">
                      <div class="form-group">
                        <label style="font-size:1.2571em;">이름</label>
                        <input type="text" name="usr_name" id="name" class="form-control" value="<%=uDTO.getUsr_name() %>" />
                      </div>
                    </div>
                    <div class="col-md-4 px-1">
                      <div class="form-group">
                        <label style="font-size:1.2571em;">닉네임</label>
                        <input type="text" name="usr_nickname" id="nickname" class="form-control" value="<%=uDTO.getUsr_nickname() %>" />
                      </div>
                    </div>
                    <div class="col-md-4 pl-1">
                      <div class="form-group">
                        <label style="font-size:1.2571em;">생년월일</label>
                        <input type="text" name="usr_birthdate" id="birthdate"class="form-control" value="<%=uDTO.getUsr_birthdate() %>" />
                      </div>
                    </div>
                  </div>
                  <div class="row">
                  	<div class="col-md-12">
                  	<button type="button" onclick="javascript:check(); return false;" value=회원정보수정 class="button">확인</button>
                  	</div>
                  </div>
                </form>
              </div>
            </div>
          </div>
                </div>
              </div>
            </div>
          </div>
    </div>
  </div>
  </div>
  </div>
  </body>
    
              
       
   <!--   Core JS Files   -->
  <script src="/resources/js/core/jquery.min.js"></script>
  <script src="/resources/js/core/popper.min.js"></script>
  <script src="/resources/js/core/bootstrap.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="/resources/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="/resources/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="/resources/js/now-ui-dashboard.min.js?v=1.2.0" type="text/javascript"></script>
  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="/resources/demo/demo.js"></script>
 
</body>

<script>

function check(){ 

	 var pwd = document.getElementById('password');
	 var pwdChk = document.getElementById('pwdChk');
	 var name=document.getElementById('name');
	 var birth=document.getElementById('birthdate');
	 
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
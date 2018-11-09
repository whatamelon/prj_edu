<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
          <li class="active ">
            <a href="#">
              <i class="now-ui-icons location_map-big"></i>
              <p style="font-size:15pt; color:#A566FF;">국어 게시판</p>
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
             <p style="font-size:15pt;">국어게시판</p>
             <i class="now-ui-icons sport user_run-big"></i>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
          
          <span style="width:70px;"><a href="/user/login.jsp" style="font-size:15px; text-decoration:none;">로그인</a></span>
          
          <span style="width:90px;"><a href="/user/login.jsp" style="font-size:15px; text-decoration:none;">회원가입</a></span>
          
          <span style="width:110px;"><a href="/user/login.jsp" style="font-size:15px; text-decoration:none;">아이디 찾기</a></span>
            
          <span style="width:200px;"><a href="/user/login.jsp" style="font-size:15px; text-decoration:none;">비밀번호 찾기</a></span>
             
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
              <div class="card-header">
                <h4 class="card-title"> Simple Table</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th  class="text-center">
                        	선생님
                      </th>
                      <th  class="text-center">
                        	세부과목
                      </th>
                      <th  class="text-center">
                        	제목
                      </th>
                      <th  class="text-center">
                        	작성자
                      </th>
                      <th  class="text-center">
                        	작성일자
                      </th>
                    </thead>
                    <tbody>
                      <tr>
                        <td  class="text-center">
                          Dakota Rice
                        </td>
                        <td  class="text-center">
                          Niger
                        </td>
                        <td  class="text-center">
                          Oud-Turnhout
                        </td>
                        <td  class="text-center">
                          $36,738
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Minerva Hooper
                        </td>
                        <td  class="text-center">
                          Curaçao
                        </td>
                        <td  class="text-center">
                          Sinaai-Waas
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Sage Rodriguez
                        </td>
                        <td  class="text-center">
                          Netherlands
                        </td>
                        <td  class="text-center">
                          Baileux
                        </td>
                        <td  class="text-center">
                          $56,142
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Philip Chaney
                        </td>
                        <td  class="text-center">
                          Korea, South
                        </td>
                        <td  class="text-center">
                          Overland Park
                        </td>
                        <td  class="text-center">
                          $38,735
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Doris Greene
                        </td>
                        <td  class="text-center">
                          Malawi
                        </td>
                        <td  class="text-center">
                          Feldkirchen in Kärnten
                        </td>
                        <td  class="text-center">
                          $63,542
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Mason Porter
                        </td>
                        <td  class="text-center">
                          Chile
                        </td>
                        <td  class="text-center">
                          Gloucester
                        </td>
                        <td  class="text-center">
                          $78,615
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                      <tr>
                        <td  class="text-center">
                          Jon Porter
                        </td>
                        <td  class="text-center">
                          Portugal
                        </td>
                        <td  class="text-center">
                          Gloucester
                        </td>
                        <td  class="text-center">
                          $98,615
                        </td>
                        <td  class="text-center">
                          $23,789
                        </td>
                      </tr>
                    </tbody>
                  </table>
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
</html>
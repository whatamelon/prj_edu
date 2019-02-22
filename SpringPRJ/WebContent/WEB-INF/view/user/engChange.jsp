<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="poly.util.CmmUtil"%>
<%@ page import="poly.dto.NoticeDTO"%>
<%@page import="poly.dto.UserDTO"%>
    <%
    	UserDTO uDTO=(UserDTO)session.getAttribute("uDTO");
    %>
    <%
   NoticeDTO nDTO = (NoticeDTO) request.getAttribute("nDTO");
   //공지글 정보를 못불러왔다면, 객체 생성
   if (nDTO == null) {
      nDTO = new NoticeDTO();

   }

   int access = 1; //(작성자 : 2 / 다른 사용자: 1) 

   if (CmmUtil.nvl((String) session.getAttribute("session_id")).equals(CmmUtil.nvl(nDTO.getReg_usr_seq_no()))) {
      access = 2;
   }
%>
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
  	textarea.form-control {
  		max-height : 400px;
  		height:400px;
  	
  	}
  
  
  </style>
  <script type="text/javascript">
   //전송시 유효성 체크
   function doSubmit(f) {
      if (f.title.value == "") {
         alert("제목을 입력하시기 바랍니다.");
         f.title.focus();
         return false;
      }

      if (calBytes(f.title.value) > 200) {
         alert("최대 200Bytes까지 입력 가능합니다.");
         f.title.focus();
         return false;
      }



      if (f.contents.value == "") {
         alert("내용을 입력하시기 바랍니다.");
         f.contents.focus();
         return false;
      }

      if (calBytes(f.contents.value) > 4000) {
         alert("최대 4000Bytes까지 입력 가능합니다.");
         f.contents.focus();
         return false;
      }

   }

   //글자 길이 바이트 단위로 체크하기(바이트값 전달)
   function calBytes(str) {

      var tcount = 0;
      var tmpStr = new String(str);
      var strCnt = tmpStr.length;

      var onechar;
      for (i = 0; i < strCnt; i++) {
         onechar = tmpStr.charAt(i);

         if (escape(onechar).length > 4) {
            tcount += 2;
         } else {
            tcount += 1;
         }
      }

      return tcount;
   }

</script>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo">
        
        <a href="/user/index1.do" class="simple-text logo-normal" style="font-size:35px;">
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
              <p style="font-size:15pt; ">국어 게시판</p>
            </a>
          </li>
          <li>
            <a href="#">
              <i class="now-ui-icons media-2_sound-wave"></i>
              <p style="font-size:15pt;">수학 게시판</p>
            </a>
          </li>
          <li  class="active ">
            <a href= "#">
              <i class="now-ui-icons text_caps-small"></i>
              <p style="font-size:15pt; color:#A566FF;">영어 게시판</p>
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
              <p style="font-size:15pt; ">독서실 게시판</p>
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
             <p style="font-size:20pt;">영어게시판</p>
             <i class="now-ui-icons sport user_run-big"></i>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
          
          <span style="width:150px;"><a href="/user/userInfoCheck.do" style="font-size:15px; text-decoration:none;">회원정보 수정</a></span>
          
          <span style="width:90px;"><a href="/user/createaccount.do" style="font-size:15px; text-decoration:none;">회원가입</a></span>
          
          <span style="width:110px;"><a href="/user/findid.do" style="font-size:15px; text-decoration:none;">아이디 찾기</a></span>
            
          <span style="width:200px;"><a href="/user/findpw.do" style="font-size:15px; text-decoration:none;">비밀번호 찾기</a></span>
             
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
                <h4 class="card-title">평가 글수정하기</h4>
              	</div>
							<div class="card-body">
								<div class="table-responsive">
								<form action="/user/engChangeProc.do" method="post" encType="multiplart/form-data" onsubmit="return doSubmit(f);">
									<input type="hidden" name="post_seq_no" value="<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>" />
									<table class="table table-bordered">
										<tbody>
												<tr>
													<td colspan="2">
													<label style="font-size:1.2571em;">제목</label>
													<input type="text" placeholder="제목을 입력해주세요. " name="title" class="form-control"  value="<%=CmmUtil.nvl(nDTO.getTitle()) %>" />
													</td>
												</tr>
												<tr>
													<td colspan="2">
													<label style="font-size:1.2571em;">선생님 이름</label>
													<input type="text" placeholder="선생님 이름을 입력해주세요. " name="teacher" class="form-control"  value="<%=CmmUtil.nvl(nDTO.getTeacher()) %>" />
													</td>
												</tr>
												<tr>
													<td>
													<label style="font-size:1.2571em;">과목선택</label>
													<div class="container">
															 <select  name="subject" style="width:50%; height:30px; border:1px solid #E3E3E3; border-radius:30px; color:#9A9A9A;">
																<option value="" disabled selected>과목을 선택해주세요.</option>
																<option>영어</option>
																<option>수학</option>
																<option>영어</option>
															</select> 
													</td>
													<td>
													<label style="font-size:1.2571em;">세부과목선택</label>
													<div class="container">
															<div class="dropdown" id="mydropdown">
																<select id="subjectSelect" name="spec_sub" style="width:50%; height:30px; border:1px solid #E3E3E3; border-radius:30px; color:#9A9A9A;">
																<option value="" disabled selected>세부과목을 선택해주세요.</option>
																	<optgroup label="영어">
																		<option value="독해">독해</option>
																		<option  value="어법">어법</option>
																	</optgroup>
																</select>
															</div>
													</td>
												</tr>
												<tr>
													<td colspan="2">
													<textarea cols="10" placeholder="내용을 입력해주세요. " name="contents" class="form-control" value="<%=CmmUtil.nvl(nDTO.getContents()) %>">
													</textarea>
													</td>
												</tr>
												<tr>
													<td colspan="2">
													<input type="button" value="등록" onclick="sendData()" class="pull-right" style="background-color:white; 
																border-right-width:1px; border-top-width:1px; border-left-width:1px; border-bottom-width:1px; 
																border-color:#E3E3E3;border-radius:20px; color:#9A9A9A; " />
													<input type="button" value="글 목록으로 갑니당." class="pull-left"onclick="javascript:location.href='list.jsp'" style="background-color:white; 
																border-right-width:1px; border-top-width:1px; border-left-width:1px; border-bottom-width:1px; 
																border-color:#E3E3E3;border-radius:20px; color:#9A9A9A;"   />
													<center><button type="submit" >수정</button></center>
													</td>
												</tr>
										</tbody>
									</table>
									</form>
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
 <script>
 	$(function(){
 		$('#subjectSelect').change(function(){
 		
 		$('#subjectSelect').val()
 			
 		})
 		
 	})
	</script>
</body>
</html>
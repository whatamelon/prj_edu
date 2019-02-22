<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="poly.dto.UserDTO"%>
<%@ page import="poly.dto.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
    <%
    	UserDTO uDTO=(UserDTO)session.getAttribute("uDTO");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--  ------------------------------헤드 시작-------------------------------- -->

<head>
<script type="text/javascript">
 
<%-- //로그인 여부 체크   
 function doOnload(){
   var usr_id = "<%=uDTO.getUsr_id()%>";   
if (usr_id==""){
      alert("로그인된 사용자만 글을 쓸 수 있습니다.");
      top.location.href="/user/noticeList.do";
      
   }
   
} --%>
//전송시 유효성 체크
function doSubmit(f){
   if(f.title.value == ""){
      alert("제목을 입력하시기 바랍니다.");
      f.title.focus();
      return false;
   }
   
   if(calBytes(f.title.value) > 200){
      alert("최대 200Bytes까지 입력 가능합니다.");
      f.title.focus();
      return false;
   }   
   
   
   if(f.contents.value == ""){
      alert("내용을 입력하시기 바랍니다.");
      f.contents.focus();
      return false;
   }   
   
   if(calBytes(f.contents.value) > 4000){
      alert("최대 4000Bytes까지 입력 가능합니다.");
      f.contents.focus();
      return false;
   }      
   
   
}

//글자 길이 바이트 단위로 체크하기(바이트값 전달)
function calBytes(str){
   
   var tcount = 0;
   var tmpStr = new String(str);
   var strCnt = tmpStr.length;

   var onechar;
   for (i=0;i<strCnt;i++){
      onechar = tmpStr.charAt(i);
      
      if (escape(onechar).length > 4){
         tcount += 2;
      }else{
         tcount += 1;
      }
   }
   
   return tcount;
}

</script>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="/resources/img/apple-icon.png">
<link rel="icon" type="image/png" href="/resources/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Now UI Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />

<!--     Fonts and icons     -->

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">

<!-- CSS Files -->
<link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css"
	rel="stylesheet">
<link href="/resources/css/bootstrap.min.css" rel="stylesheet" />
<link href="/resources/css/now-ui-dashboard.css?v=1.2.0"
	rel="stylesheet" />
<link href="/resources/css/sidebarandpanel.css" rel="stylesheet" />
<link href="/resources/css/vendorprefixes.css" rel="stylesheet" />

<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="/resources/demo/demo.css" rel="stylesheet" />

<style>
textarea.form-control {
	max-height: 400px;
	height: 400px;
}
</style>
</head>

<body class="" onload="doOnload();">
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
              <p style="font-size:15pt; ">국어 게시판</p>
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
          <li class="active ">
            <a href="#">
              <i class="now-ui-icons users_single-02" ></i>
              <p style="font-size:15pt; color:#A566FF;">독서실 게시판</p>
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
             <p style="font-size:20pt;">독서실게시판</p>
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
                <h4 class="card-title">평가 글쓰기</h4>
              	</div>
							<div class="card-body">
								<div class="table-responsive">
								<form action="/user/roomInsert.do" method="post" encType="multiplart/form-data" name="f" method="post" onsubmit="return doSubmit(this);">
									<table class="table table-bordered">
										<tbody>
												<tr>
													<td colspan="2">
													<label style="font-size:1.2571em;">제목</label>
													<input type="text" placeholder="제목을 입력해주세요. " name="title" class="form-control" />
													</td>
												</tr>
												<tr>
												<td>
													<input type="text" id="sample3_postcode" placeholder="우편번호" class="form-control" style="width:400px;">
													<input type="button" onclick="sample3_execDaumPostcode()"	value="우편번호 찾기" style="background-color:white; 
																border-right-width:1px; border-top-width:1px; border-left-width:1px; border-bottom-width:1px; 
																border-color:#E3E3E3;border-radius:20px; color:#9A9A9A;
																margin-top:10px; margin-bottom:10px; width:200px; ">
													<br>
													<div id="wrap"style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
														<img
															src="//t1.daumcdn.net/localimg/localimages/07/postcode/320/close.png"
															id="btnFoldWrap"
															style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
															onclick="foldDaumPostcode()" alt="접기 버튼">
													</div>
													<input type="text" id="sample3_address" name="city" placeholder="주소" class="form-control" style="width:400px;">
													<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
													<script>
														// 우편번호 찾기 찾기 화면을 넣을 element
														var element_wrap = document
																.getElementById('wrap');

														function foldDaumPostcode() {
															// iframe을 넣은 element를 안보이게 한다.
															element_wrap.style.display = 'none';
														}

														function sample3_execDaumPostcode() {
															// 현재 scroll 위치를 저장해놓는다.
															var currentScroll = Math
																	.max(
																			document.body.scrollTop,
																			document.documentElement.scrollTop);
															new daum.Postcode(
																	{
																		oncomplete : function(
																				data) {
																			// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

																			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
																			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
																			var fullAddr = data.address; // 최종 주소 변수
																			var extraAddr = ''; // 조합형 주소 변수

																			// 기본 주소가 도로명 타입일때 조합한다.
																			if (data.addressType === 'R') {
																				//법정동명이 있을 경우 추가한다.
																				if (data.bname !== '') {
																					extraAddr += data.bname;
																				}
																				// 건물명이 있을 경우 추가한다.
																				if (data.buildingName !== '') {
																					extraAddr += (extraAddr !== '' ? ', '
																							+ data.buildingName
																							: data.buildingName);
																				}
																				// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
																				fullAddr += (extraAddr !== '' ? ' ('
																						+ extraAddr
																						+ ')'
																						: '');
																			}

																			// 우편번호와 주소 정보를 해당 필드에 넣는다.
																			document
																					.getElementById('sample3_postcode').value = data.zonecode; //5자리 새우편번호 사용
																			document
																					.getElementById('sample3_address').value = fullAddr;

																			// iframe을 넣은 element를 안보이게 한다.
																			// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
																			element_wrap.style.display = 'none';

																			// 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
																			document.body.scrollTop = currentScroll;
																		},
																		// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
																		onresize : function(
																				size) {
																			element_wrap.style.height = size.height
																					+ 'px';
																		},
																		width : '100%',
																		height : '100%'
																	})
																	.embed(element_wrap);

															// iframe을 넣은 element를 보이게 한다.
															element_wrap.style.display = 'block';
														}
													</script>
													</td>
												</tr>
												<tr>
													<td colspan="2">
													<label style="font-size:1.2571em;">닉네임</label>
													<input type="text" placeholder="닉네임을 입력해주세요. " name="usr_nickname" class="form-control" />
													</td>
												</tr>
												<tr>
													<td colspan="2"><textarea cols="10" placeholder="내용을 입력해주세요. " name="contents" class="form-control"></textarea></td>
												</tr>
												<tr>
													<td colspan="2">
													<input type="submit" value="등록" onclick="sendData()" class="pull-right" style="background-color:white; 
																border-right-width:1px; border-top-width:1px; border-left-width:1px; border-bottom-width:1px; 
																border-color:#E3E3E3;border-radius:20px; color:#9A9A9A; " />
													<input type="button" value="글 목록으로 갑니당." class="pull-left"onclick="javascript:location.href='list.jsp'" style="background-color:white; 
																border-right-width:1px; border-top-width:1px; border-left-width:1px; border-bottom-width:1px; 
																border-color:#E3E3E3;border-radius:20px; color:#9A9A9A;"   />
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
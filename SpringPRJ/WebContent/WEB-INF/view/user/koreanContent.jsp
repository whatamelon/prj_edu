<%@page import="poly.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil" %>
<%@ page import="poly.dto.NoticeDTO" %>
    <% UserDTO uDTO = (UserDTO)session.getAttribute("uDTO");%>
    <%
   NoticeDTO nDTO = (NoticeDTO) request.getAttribute("nDTO");
    
  //공지글 정보를 못불러왔다면, 객체 생성
   if (nDTO == null) {
      nDTO = new NoticeDTO();

   }
   
   //본인이 작성한 글만 수정 가능하도록 하기(1:작성자 아님 / 2: 본인이 작성한 글 / 3: 로그인안함)
   int edit = 1;

   //로그인 안했다면....
   if ("".equals(uDTO.getUsr_id())){
      edit = 3;
      
   //본인이 작성한 글이면 2가 되도록 변경
   }else if (uDTO.getUsr_seq_no().equals(CmmUtil.nvl(nDTO.getUsr_seq_no()))){
      edit = 2;
   }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--  ------------------------------헤드 시작-------------------------------- -->

 <head>
 <script type="text/javascript">

//수정하기

  function doEdit(){
   <%if (uDTO.getUsr_seq_no().equals(nDTO.getUsr_seq_no())) {%>
   	$('#doEdit').submit();
   	
   <%} else { %>
   		alert("로그인해주세요.")
  	<%}%>
	}

//삭제하기
function doDelete(){
   if ("<%=edit%>"==2){
      if(confirm("작성한 글을 삭제하시겠습니까?")){
         location.href="/user/koreanDelete.do?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>";
      }
      
   }else if ("<%=edit%>"==3){
      alert("로그인 하시길 바랍니다.");
      
   }else {
      alert("본인이 작성한 글만 삭제 가능합니다.");
      
   }
} 
//목록으로 이동
function doList(){
   location.href="/user/koreanTable.do";
      
}
//좋아요등록
function doReg(){
   location.href="/user/koreanlikeInsert.do?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>";
      
}
</script> 
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
	max-height: 400px;
	height: 400px;
}
</style>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">


$(function() {
	$(".like").click(function() {
		if ($(this).val() == 'Like') {
			$.ajax({
				url : "/user/koreanContentLike.do?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>&usr_seq_no=<%=CmmUtil.nvl(uDTO.getUsr_seq_no())%>",
				data : {
					'like_flag' : 'L'
				},
				success : function(url) {
					alert(url);
					location.href=url + '?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>' + '&like_flag=L';
				},
				error : function(data) {
				}
			})
		} else if ($(this).val() == 'Dislike') {
			$.ajax({
				url : "/user/koreanContentLike.do?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>&usr_seq_no=<%=CmmUtil.nvl(uDTO.getUsr_seq_no())%>",
				data : {
					'like_flag' : 'D'
				},
				success : function(data) {
					alert(url);
					location.href=url + '?post_seq_no=<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>' + '&like_flag=D';
				},
				error : function(data) {
				}
			})
		}
	})
})
</script>
</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar">
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
             <p style="font-size:20pt;">국어게시판</p>
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
                <h4 class="card-title">평가글보기</h4>
              	</div>
							<div class="card-body">
								<div class="table-responsive">
								 <form action ="/user/koreanChange.do" id="doEdit" method="post" >
      								<input type="hidden" name="post_seq_no" value="<%=CmmUtil.nvl(nDTO.getPost_seq_no())%>" />
									<table class="table table-bordered">
										<tbody>
												<tr>
													<td colspan="3">
													<label style="font-size:1.2571em;">제목</label>
													<input type="text"  name="title" class="form-control" placeholder="<%=CmmUtil.nvl(nDTO.getTitle())%>" 
													style="background-color:transparent; font-size:20px;" readonly />
													</td>
												</tr>
												<tr>
													<td>
													<label style="font-size:1.2571em;">선생님 이름</label>
													<input type="text"  name="title" class="form-control" placeholder="<%=CmmUtil.nvl(nDTO.getTeacher())%>" 
													style="background-color:transparent; font-size:20px;" readonly />
													</td>
													<td>
													<label style="font-size:1.2571em;">과목</label>
													<input type="text"  name="title" class="form-control" placeholder="<%=CmmUtil.nvl(nDTO.getSubject())%>" 
													style="background-color:transparent; font-size:20px;" readonly />
													</td>
													<td>
													<label style="font-size:1.2571em;">세부과목</label>
													<input type="text"  name="title" class="form-control" placeholder="<%=CmmUtil.nvl(nDTO.getSpec_sub())%>" 
													style="background-color:transparent; font-size:20px;" readonly />
													</td>
												</tr>
												<tr>
													<td colspan="3"><textarea cols="10" placeholder="<%=CmmUtil.nvl(nDTO.getContents())/* .replaceAll("\r\n", "<br/>") */ %> "
													 name="contents" class="form-control" style="background-color:transparent; font-size:15px;"></textarea>
													</td>
												</tr>
												<tr>
													<td colspan="3" style="text-align: center;">
														<input type="button" placeholder="<%=CmmUtil.nvl(nDTO.getLike_no())%>"   style="width:75px;height:35px;color: white;border-color: white;background-color: #A566FF;" />
														<input type="button" class="like" id="like" name="like_flag" value="Like"  style="width:75px;height:35px;color: white;border-color: white;background-color: #A566FF;" />
														<input type="button" class="like" id="dislike" name="like_flag" value="Dislike" style="width:75px;height:35px;color: white;border-color: white;background-color: #A566FF;"  />
														<input type="button" placeholder="<%=CmmUtil.nvl(nDTO.getDislike_no())%>"   style="width:75px;height:35px;color: white;border-color: white;background-color: #A566FF;" />
													</td>
												</tr>
												<tr>
													<td colspan="3" style="text-align:right;">
													<a href="javascript:doEdit();" style="color: #A566FF;">[수정]</a>
													<a href="javascript:doDelete();" style="color: #A566FF;">[삭제]</a>
      												<a href="javascript:doList();" style="color: #A566FF;">[목록]</a>
      												<a href="javascript:doReg();" style="color: #A566FF;">[등록]</a>
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
 
</body>
</html>
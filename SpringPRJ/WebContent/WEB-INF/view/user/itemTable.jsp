<%@page import="poly.dto.MemberDTO"%>
<%@page import="poly.dto.PagingDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ page import="poly.util.CmmUtil"%>
<%@ page import="poly.dto.NoticeDTO"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.HashMap"%>
<%@page import="poly.dto.UserDTO"%>
<%
   /* MemberDTO mDTO = (MemberDTO) request.getAttribute("mDTO"); */
   /* session.setAttribute("id", mDTO.getMember_id() ); //세션 강제 적용, 로그인된 상태로 보여주기 위함 */

   List<NoticeDTO> rList = (List<NoticeDTO>) request.getAttribute("rList");

   PagingDTO paging = (PagingDTO) request.getAttribute("paging");

   //게시판 조회 결과 보여주기
   if (rList == null) {
      rList = new ArrayList<NoticeDTO>();

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
  
  <script type="text/javascript">
   //상세보기 이동
   function doDetail(seq) {
      location.href = "/user/itemContent.do?post_seq_no=" + seq;
   }

   function goPage(page) {
      var pageCount =
<%=paging.getPage_count()%>
   ;
      location.href = "/user/itemTable.do?pageCount=" + pageCount
            + "&pageNum=" + page;
   }
</script>
<style>
.hoverBoy:hover {
	background-color : rgba(155, 193, 255, 0.5);
	cursor : pointer;
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
          <li>
            <a href= "#">
              <i class="now-ui-icons text_caps-small"></i>
              <p style="font-size:15pt;">영어 게시판</p>
            </a>
          </li>
          <li class="active ">
            <a href="#">
              <i class="now-ui-icons design-2_ruler-pencil"></i>
              <p style="font-size:15pt; color:#A566FF;">공부템 게시판</p>
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
             <p style="font-size:20pt;">공부템게시판</p>
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
                <h4 class="card-title"> 평가글게시판</h4>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                     <thead class="text-primary">
                     						<th scope="cols" width="50" align="center"></th>
                    						<th scope="cols" width="100" align="center">글 번호</th>
                                            <th scope="cols" width="100" align="center">제목</th>
                                            <th scope="cols" width="100" align="center">닉네임</th> 
                                            <th scope="cols" width="100" align="center">등록일</th>
                                        </thead>
                     <tbody>
                                           <%
                           for (int i = 0; i < rList.size(); i++) {
                              NoticeDTO rDTO = rList.get(i);

                              if (rDTO == null) {
                                 rDTO = new NoticeDTO();
                              }
                        %>
                        <tbody class="hoverBoy">
                           <tr>
                              <th scope="row" align="center">
                              <td ><%=CmmUtil.nvl(rDTO.getPost_seq_no())%></td>
                              <td ><a href="javascript:doDetail('<%=CmmUtil.nvl(rDTO.getPost_seq_no())%>');"><%=CmmUtil.nvl(rDTO.getTitle())%></a></td>
                              <td ><%=CmmUtil.nvl(rDTO.getUsr_nickname())%></td>
                              <td ><%=CmmUtil.nvl(rDTO.getReg_dt())%></td>
                           </tr>
                        </tbody>
                        <%}%>
                  </table>
                </div>
              </div>
              <div class="mid"  style="text-align:center;">
               <%=fnPaging(paging.getPage_count(), 10, paging.getPage_num(), paging.getTotal_count())%>
               <a href="/user/itemWrite.do">[글쓰기]</a>
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
<!-- 페이징 -->
<%!//페이지num, 전체Data count만 전달받아 출력.
   private String fnPaging(int pageNum, int totalCount) {

      int pageCount = 10; // 페이지별 출력 row 수
      int blockCount = 10; // 화면에 출력할 block 수
      return fnPaging(pageCount, blockCount, pageNum, totalCount);
   }

   //pageCount, blockCount, pageNum, totalCount 를 전달받아 출력.
   private String fnPaging(int pageCount, int blockCount, int pageNum, int totalCount) {

      String pagingStr = "";

      // 전체 페이지수
      int totalPageCount = totalCount / pageCount; // 전체 페이지 수
      if (totalCount % pageCount > 0)
         totalPageCount++; // 전체 페이지수+1 (나머지가 있을 경우.)

      // 전체 블럭수
      int totalBlockCount = totalPageCount / blockCount; // 전체 블럭수
      if (totalBlockCount % blockCount > 0)
         totalBlockCount++; // 전체 블럭수+1 (나머지가 있을 경우.)

      // 현재 블럭의 시작 페이지
      int startPage = pageNum / blockCount * blockCount + 1;
      if (pageNum % blockCount == 0)
         startPage -= blockCount;

      // 현재 블럭의 마지막 페이지.
      int endPage = startPage + blockCount - 1;
      if (endPage > totalPageCount)
         endPage = totalPageCount;

      //만약 현재 블럭의 시작 페이지가 1보다 크다면. 이전 블럭 . 처음 블럭 버튼 생성.
      if (startPage > 1) {
         //pagingStr = "[<<1][<"+(startPage-1)+"]";
         pagingStr = "<input type=button value=<< onclick='goPage(1);'>";
         pagingStr += "<input type=button value=<  onclick='goPage(" + (startPage - 1) + ");'>";
      }

      for (int i = startPage; i <= endPage; i++) {

         if (i == pageNum)
            pagingStr += "[현재]";
         //else pagingStr += "["+i+"]";
         else
            pagingStr += "<input type=button value=" + i + " onclick='goPage(" + i + ");'>";
      }

      //만약 현재 블럭의 마지막 페이지가 전체 마지막 페이지보다 작다면. 다음블럭, 마지막 블럭 버튼 생성. 
      if (endPage < totalPageCount) {
         //pagingStr += "[>"+(endPage+1)+"][>>"+totalPageCount+"]";
         pagingStr += "<input type=button value='>'  onclick='goPage(" + (endPage + 1) + ");'>";
         pagingStr += "<input type=button value='>>' onclick='goPage(" + totalPageCount + ");'>";
      }

      return pagingStr;
   }%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>재능몬에 오신 여러분들을 환영합니다.</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&amp;display=swap" rel="stylesheet">
  <style> 
@import url('https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=devanagari,latin-ext');
 @font-face { font-family: 'Eoe_Zno_L'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_eight@1.0/Eoe_Zno_L.woff') format('woff'); font-weight: normal; font-style: normal; }
 
 	.title-text{
	  font-family: "Abril Fatface", sans-serif;
    color:#000;
	}
    
    .title-text:hover{ 
      color:#000;
      text-decoration: none;
    }
     .page-link{
   color:#ff1744 !important;
   }
    .page-link:focus {
    box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125), 0 0 0 0.2rem rgba(255, 187, 175, 0.5) !important;
}
    
primary.dropdown-toggle {
    color: #fff ;
    background-color: #c4001d !important;
    border-color: #c4001d !important;
}

.border-primary {
      border-color: #ff1744 !important;
    }

    .table-primary,
    .table-primary>th,
    .table-primary>td {
      background-color: #ffcec4 !important;
    }

.btn-primary {
    color: #fff !important;
    background-color: #ff1744 !important;
    border-color: #ff1744 !important;
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075) !important;
}

.text-primary {
    color: #ff1744 !important;
}

.btn-primary:focus, .btn-primary.focus {
    box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.15), 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 0 0.2rem rgba(255, 187, 175, 0.5) !important;
}

.btn-primary:hover {
    color: #fff;
    background-color: #c4001d !important;
    border-color: #c4001d !important;
}

.btn-primary.dropdown-toggle:focus {
    box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125), 0 0 0 0.2rem rgba(255, 187, 175, 0.5) !important;
}

.dropdown-item:focus {
    background-color: #ffcec4;
}


.form-control.my-form:focus {
     outline: 0 none;
    color: #495057;
    background-color: #fff;
    border-color: #ced4da !important;
    box-shadow:none; 
     }

.form-control:focus{
outline: 0 none;
    color: #495057;
    background-color: #fff;
    border-color: #ff1744 !important;
    box-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125), 0 0 0 0.2rem rgba(255, 187, 175, 0.5) !important;
}


   .btn-light {
    color: #212529;
    background-color: #fff !important;
    border-color: #fff !important;
    box-shadow: none !important;
}

body{
    font-family: 'Poppins', sans-serif;
   font-size: 16px;
   line-height: 24px;
   font-weight: 400;
   color: #212112;
   background-size: 7%;
   background-color: #fff;
   overflow-x: hidden;
    transition: all 200ms linear;
}


  .a{
     font-family: 'Eoe_Zno_L';
    }
::selection {
   color: #fff;
   background-color: #ff1744;
}
::-moz-selection {
   color: #fff;
   background-color: #ff1744;
}
.start-header {
   opacity: 1;
   transform: translateY(0);
   padding: 10px 0;
   box-shadow: 0 4px 2px -2px rgb(33,33,33,0.15);
   -webkit-transition : all 0.3s ease-out;
   transition : all 0.3s ease-out;
}
.start-header.scroll-on {
   box-shadow: 0 5px 10px 0 rgb(33,33,33,0.15);
   padding: 5px 0;
   -webkit-transition : all 0.3s ease-out;
   transition : all 0.3s ease-out;
}
.start-header.scroll-on .navbar-brand img{
   height: 28px;
   -webkit-transition : all 0.3s ease-out;
   transition : all 0.3s ease-out;
}
.navigation-wrap{
   position: sticky;
   width: 100%;
   top: 0;
   left: 0;
   z-index: 1000;
   -webkit-transition : all 0.3s ease-out;
   transition : all 0.3s ease-out;
}
.navbar{
   padding: 0;
   font-family: 'Eoe_Zno_L'; 
}
.navbar-brand img{
   height: 52px;
   width: auto;
   display: block;
   -webkit-transition : all 0.3s ease-out;
   transition : all 0.3s ease-out;
}
.navbar-toggler {
   float: right;
   border: none;
   padding-right: 0;
}
.navbar-toggler:active,
.navbar-toggler:focus {
   outline: none;
}
.navbar-light .navbar-toggler-icon {
   width: 24px;
   height: 17px;
   background-image: none;
   position: relative;
   border-bottom: 1px solid #000;
    transition: all 300ms linear;
}
.navbar-light .navbar-toggler-icon:after, 
.navbar-light .navbar-toggler-icon:before{
   width: 24px;
   position: absolute;
   height: 1px;
   background-color: #000;
   top: 0;
   left: 0;
   content: '';
   z-index: 2;
    transition: all 300ms linear;
}
.navbar-light .navbar-toggler-icon:after{
   top: 8px;
}
.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:after {
   transform: rotate(45deg);
}
.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon:before {
   transform: translateY(8px) rotate(-45deg);
}
.navbar-toggler[aria-expanded="true"] .navbar-toggler-icon {
   border-color: transparent !important;
}
.nav-link{
   color: #212121 !important;
   font-weight: 500;
    transition: all 200ms linear;
}
.nav-item:hover .nav-link{
   color: #ff4242 !important;
}
.nav-item.active .nav-link{
   color: #777 !important;
}
.nav-link {
   position: relative;
   padding: 5px 0 !important;
   display: inline-block;
}
.nav-item:after{
   position: absolute;
   bottom: -5px;
   left: 0;
   width: 100%;
   height: 2px;
   content: '';
   background-color: #ff1744;
   opacity: 0;
    transition: all 200ms linear;
}
.nav-item:hover:after{
   bottom: 0;
   opacity: 1;
}
.nav-item.active:hover:after{
   opacity: 0;
}
.nav-item{
   position: relative;
    transition: all 200ms linear;
}

.bg-light {
   background-color: #fff !important;
    transition: all 200ms linear;
}
.section {
    position: relative;
   width: 100%;
   display: block;
}
.full-height {
    height: 100vh;
}
.over-hide {
    overflow: hidden;
}
.absolute-center {
   position: absolute;
   top: 50%;
   left: 0;
   width: 100%;
  margin-top: 40px;
   transform: translateY(-50%);
   z-index: 20;


body.hero-anime p{
   opacity: 0;
   transform: translateY(40px);
    transition-delay: 1700ms;
}
#switch,
#circle {
   cursor: pointer;
   -webkit-transition: all 300ms linear;
   transition: all 300ms linear; 
} 
#switch {
   width: 60px;
   height: 8px;
   border: 2px solid #ff1744;
   border-radius: 27px;
   background: #ff1744;
   position: relative;
   display: block;
   margin: 0 auto;
   text-align: center;
   opacity: 1;
   transform: translate(0);
    transition: all 300ms linear;
    transition-delay: 1900ms;
}
body.hero-anime #switch{
   opacity: 0;
   transform: translateY(40px);
    transition-delay: 1900ms;
}
#circle {
   position: absolute;
   top: -11px;
   left: -13px;
   width: 26px;
   height: 26px;
   border-radius: 50%;
   background: #000;
}
.switched {
   border-color: #000 !important;
   background: #ff1744 !important;
}
.switched #circle {
   left: 43px;
   box-shadow: 0 4px 4px rgba(26,53,71,0.25), 0 0 0 1px rgba(26,53,71,0.07);
   background: #fff;
}
.nav-item .dropdown-menu {
    transform: translate3d(0, 10px, 0);
    visibility: hidden;
    opacity: 0;
   max-height: 0;
    display: block;
   padding: 0;
   margin: 0;
    transition: all 200ms linear;
}
.nav-item.show .dropdown-menu {
    opacity: 1;
    visibility: visible;
   max-height: 999px;
    transform: translate3d(0, 0px, 0);
}
.dropdown-menu {
   padding: 10px!important;
   margin: 0;
   font-size: 13px;
   letter-spacing: 1px;
   color: #212121;
   background-color: #fcfaff;
   border: none;
   border-radius: 3px;
   box-shadow: 0 5px 10px 0 rgb(33,33,33,0.15);
    transition: all 200ms linear;
}
.dropdown-toggle::after {
   display: none;
}

.dropdown-item {
   padding: 3px 15px;
   color: #212121;
   border-radius: 2px;
    transition: all 200ms linear;
}
.dropdown-item:hover, 
.dropdown-item:focus {
   color: #fff;
   background-color: rgb(255, 23, 68,0.6);
}




@media (max-width: 767px) { 
   h1{
      font-size: 38px;
   }
   .nav-item:after{
      display: none;
   }
   .nav-item::before {
      position: absolute;
      display: block;
      top: 15px;
      left: 0;
      width: 11px;
      height: 1px;
      content: "";
      border: none;
      background-color: #000;
      vertical-align: 0;
   }
   .dropdown-toggle::after {
      position: absolute;
      display: block;
      top: 10px;
      left: -23px;
      width: 1px;
      height: 11px;
      content: "";
      border: none;
      background-color: #000;
      vertical-align: 0;
      transition: all 200ms linear;
   }
   .dropdown-toggle[aria-expanded="true"]::after{
      transform: rotate(90deg);
      opacity: 0;
   }
   .dropdown-menu {
      padding: 0 !important;
      background-color: transparent;
      box-shadow: none;
      transition: all 200ms linear;
   }
   .dropdown-toggle[aria-expanded="true"] + .dropdown-menu {
      margin-top: 10px !important;
      margin-bottom: 20px !important;
   }
   
  

   
  </style>
</head>

<body class="hero-anime">
   <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
   %>
  <div class="container">
    <div class="row">
      <div class="col-12" href="home.do">
        <h1 style="text-align:center; margin: 70px 0;" >
          <a class="title-text" href="home.do"> talentmon </a>
        </h1>
      </div>
    </div>
  </div>
  <div class="navigation-wrap bg-light start-header start-style">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="navbar navbar-expand-md navbar-light">
            
           <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav py-md-0 align-items-start">
            
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">디자인</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=100&pg=1">포토샵</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=101&pg=1">일러스트레이터</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=102&pg=1">제품디자인</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=103&pg=1">건축</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=104&pg=1">UX/UI디자인</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=105&pg=1">편집디자인</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=106&pg=1">캘리그라피</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=107&pg=1">기타</a>
                  </div>
                </li>
                
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">IT-프로그래밍</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=200&pg=1">웹개발</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=201&pg=1">앱개발</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=202&pg=1">보안</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=203&pg=1">데이터베이스</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=204&pg=1">알고리즘</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=205&pg=1">게임</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=206&pg=1">기타</a>
                  </div>
                </li>
                
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">콘텐츠제작</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=300&pg=1">영상촬영-편집</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=301&pg=1">사진촬영</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=302&pg=1">애니메이션</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=303&pg=1">유튜브제작</a>
                     <a class="dropdown-item"  href="mainContent.do?categoryNum=304&pg=1">음악</a>
                      <a class="dropdown-item"  href="mainContent.do?categoryNum=305&pg=1">더빙-녹음</a>
                       <a class="dropdown-item"  href="mainContent.do?categoryNum=306&pg=1">기타</a>
                  </div>
                </li>
                
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">번역,통역</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=400&pg=1">번역</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=401&pg=1">통역</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=402&pg=1">영상번역</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=403&pg=1">기타</a>
                  </div>
                </li>
                
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">문서</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="mainContent.do?categoryNum=500&pg=1">MS-Office</a>
                    <a class="dropdown-item" href="mainContent.do?categoryNum=501&pg=1">논문</a>
                    <a class="dropdown-item" href="mainContent.do?categoryNum=502&pg=1">자소서</a>
                    <a class="dropdown-item" href="mainContent.do?categoryNum=503&pg=1">타이핑</a>
                    <a class="dropdown-item" href="mainContent.do?categoryNum=504&pg=1">글작성</a>
                    <a class="dropdown-item" href="mainContent.do?categoryNum=505&pg=1">기타</a>
                  </div>
                </li>
                
                <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                  <a class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">레슨,실무교육</a>
                  <div class="dropdown-menu">
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=600&pg=1">프로그래밍</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=601&pg=1">그래픽디자인</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=602&pg=1">데이터분석</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=603&pg=1">유튜브-영상&사진</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=604&pg=1">외국어</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=605&pg=1">프레젠테이션</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=606&pg=1">취미-라이프</a>
                    <a class="dropdown-item"  href="mainContent.do?categoryNum=607&pg=1">기타</a>
                  </div>
                </li>
                
              </ul>
            </div>
            
        
              <%
                     if (userID == null) {
                  %>
            
              <div class="btn-group ml-4 " style="" >
                <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">접속하기</button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="login.do">로그인</a>
                  <a class="dropdown-item" href="join.do">회원가입</a>
              
                </div>
              </div>
                 <%
                     } else {
                  %>
              
                <div class="btn-group ml-4 " style="" >
                <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">마이페이지</button>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="mypage.do">내정보</a>
                  <a class="dropdown-item" href="expertRegister.do">전문가등록</a>
                  <a class="dropdown-item" href="logoutAction">로그아웃</a>
                </div>
              </div>
              
                <%
                     }
                  %>

          </nav>
        </div>
      </div>
    </div>
  </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="function.js"></script>
</body>

</html>
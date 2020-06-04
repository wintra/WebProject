<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page import ="java.io.PrintWriter" %>  
<!DOCTYPE html>
<html>
  <style>
    .box1 {
      height: 40;
      text-align: center;
      position: relative
    }

    .box2 {
      height: 40;
      position: absolute;
    }
  </style>
 
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <style> .centered { width: 1000px; position: absolute; left: 50%; margin-left: -200px; } </style>
</head>

<body>
<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
%>
  <div class="container">
    <div class="row mt-2">
      <div class="" style=""><i class="fa fa-4x fa-camera-retro"></i></div>
      <div class="col-md-10">
        <h1 class="m-1" style=""><a href="home.do">Main</a></h1>
      </div>
      <div class="col-md-1" style="">
        <ul class="nav" style="">
        <% 
			if (userID == null ) {
		%>
          <div class="box1">
          <li class="nav-item dropdown" style="" >
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">접속하기</a>
            <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
              <a class="dropdown-item" href="login.do">로그인</a>
              <a class="dropdown-item" href="join.do">회원가입</a>
            </div>
          </li>
          </div>
          <% }else{ %>
          <div class="box2">
          <li class="nav-item dropdown" style="">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">마이페이지</a>
            <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
              <a class="dropdown-item" href="mypageAction.do">내정보</a>
              <a class="dropdown-item" href="logoutAction.do">로그아웃</a>
            </div>
          </li>
          </div>
          <% } %>
        </ul>
      </div>
    </div>
  </div>
  <hr>
  <div class="py-1">
    <div class="container">
    </div>
    <div class="py-1">
      <div class="container">
        <div class="row" style="">
          <div class="col-offset-1 col-md-9" style="">
            <ul class="nav" style="">
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">디자인</a>
                <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                  <a class="dropdown-item" href="#">포토샵<br></a><a class="dropdown-item" href="#">일러스트레이터</a><a class="dropdown-item" href="#">제품디자인</a><a class="dropdown-item" href="#">건축</a><a class="dropdown-item" href="#">UX/UI디자인</a><a class="dropdown-item" href="#">편집디자인</a><a class="dropdown-item" href="#">캘리그라피</a><a class="dropdown-item" href="#">기타<br></a></div>
              </li>
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">IT-프로그래밍</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">웹개발</a><a class="dropdown-item" href="#">앱개발</a><a class="dropdown-item" href="#">보안</a><a class="dropdown-item" href="#">데이터베이스</a><a class="dropdown-item" href="#">알고리즘</a><a class="dropdown-item" href="#">게임</a><a class="dropdown-item" href="#">기타 </a></div>
              </li>
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">콘텐츠&nbsp;제작</a>
                <div class="dropdown-menu"><a class="dropdown-item" href="#">영상촬영-편집</a><a class="dropdown-item" href="#">사진촬영</a><a class="dropdown-item" href="#">애니메이션</a><a class="dropdown-item" href="#">유튜브제작</a><a class="dropdown-item" href="#">음악</a><a class="dropdown-item" href="#">더빙-녹음</a><a class="dropdown-item" href="#">기타</a></div>
              </li>
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">번역,통역</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">번역<br></a><a class="dropdown-item" href="#">통역</a><a class="dropdown-item" href="#">영상번역</a><a class="dropdown-item" href="#">기타<br></a></div>
              </li>
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">문서</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">MS-office</a><a class="dropdown-item" href="#">논문</a><a class="dropdown-item" href="#">자소서</a><a class="dropdown-item" href="#">타이핑</a><a class="dropdown-item" href="#">글작성</a><a class="dropdown-item" href="#">기타</a></div>
              </li>
              <li class="nav-item dropdown text-capitalize" style="">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">레슨.실무교육</a>
                <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                  <a class="dropdown-item" href="#">프로그래밍</a><a class="dropdown-item" href="#">그래픽디자인</a><a class="dropdown-item" href="#">데이터분석</a><a class="dropdown-item" href="#">유튜브-영상&amp;사진</a><a class="dropdown-item" href="#">외국어</a><a class="dropdown-item" href="#">프레젠테이션</a><a class="dropdown-item" href="#">취미-라이프<br></a><a class="dropdown-item" href="#">기타<br></a></div>
              </li>
            </ul>
          </div>
          <div class="" style="">
            <form class="form-inline">
              <div class="input-group">
                <input type="text" class="form-control" id="inlineFormInputGroup" placeholder="Search" style="">
                <div class="input-group-append"><button class="btn btn-primary" type="button"><i class="fa fa-search"></i></button></div>
              </div>
            </form>
          </div>
        </div>
      </div>
      <br>
      <br>
      <div class="py-auto" style="">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="carousel slide" data-ride="carousel" id="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-bubble-dark.svg">
                    <div class="carousel-caption">
                      <h5 class="m-0">Carousel</h5>
                      <p>with controls</p>
                    </div>
                  </div>
                  <div class="carousel-item active"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-bubble-light.svg">
                    <div class="carousel-caption">
                      <h5 class="m-0">Carousel</h5>
                      <p>with controls</p>
                    </div>
                  </div>
                  <div class="carousel-item active"> <img class="d-block img-fluid w-100" src="https://static.pingendo.com/cover-moon.svg">
                    <div class="carousel-caption">
                      <h5 class="m-0">Carousel</h5>
                      <p>with controls</p>
                    </div>
                  </div>
                </div> <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev"> <span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span> </a> <a class="carousel-control-next" href="#carousel" role="button" data-slide="next"> <span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span> </a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
      <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
    </div>
  </div>
</body>

</html>
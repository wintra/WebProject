<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <style>
    .centered {
      width: 1000px;
      position: absolute;
      left: 50%;
      margin-left: -200px;
    }
  </style>
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
  <style>
    input:focus,
    textarea:focus {
      outline: none;
    }
  </style>
  <link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>
  <div class="mt-5">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
          <i class="fa fa-5x fa-camera-retro"></i>
        </div>
        <div class="col-md-8">
          <a href="home.do" style="text-decoration: none;">
            <h1 class="display-3" style="">
              <b>LOGO</b>
            </h1>
          </a>
        </div>
        <div>
          <ul class="nav" style="">
            <div class="box1">
              <div class="col-md-2">
                <div class="btn-group ml-4 mt-4" style="">
                  <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">접속하기</button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="login.do">Login</a> <a class="dropdown-item" href="join.do">Sign in</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="box2">
              <div class="col-md-2">
                <div class="btn-group ml-4 mt-4" style="">
                  <button class="btn dropdown-toggle btn-primary" data-toggle="dropdown">마이페이지</button>
                  <div class="dropdown-menu">
                    <a class="dropdown-item" href="mypage.do">내정보</a> <a class="dropdown-item" href="logoutAction.do">Logout</a>
                  </div>
                </div>
              </div>
            </div>
          </ul>
        </div>
      </div>
      <div class="row">
        <div class="col-md-9 border-bottom" style="">
          <div class="col-offset-1 col-md-12">
            <ul class="nav mt-2" style="">
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">디자인</a>
                <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                  <a class="dropdown-item" href="maincontant.html">포토샵<br></a><a class="dropdown-item" href="#">일러스트레이터</a><a class="dropdown-item" href="#">제품디자인</a><a class="dropdown-item" href="#">건축</a><a class="dropdown-item" href="#">UX/UI디자인</a><a class="dropdown-item" href="#">편집디자인</a><a class="dropdown-item" href="#">캘리그라피</a><a class="dropdown-item" href="#">기타<br></a>
                </div>
              </li>
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">IT-프로그래밍</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">웹개발</a><a class="dropdown-item" href="#">앱개발</a><a class="dropdown-item" href="#">보안</a><a class="dropdown-item" href="#">데이터베이스</a><a class="dropdown-item" href="#">알고리즘</a><a class="dropdown-item" href="#">게임</a><a class="dropdown-item" href="#">기타 </a>
                </div>
              </li>
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">콘텐츠&nbsp;제작</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">영상촬영-편집</a><a class="dropdown-item" href="#">사진촬영</a><a class="dropdown-item" href="#">애니메이션</a><a class="dropdown-item" href="#">유튜브제작</a><a class="dropdown-item" href="#">음악</a><a class="dropdown-item" href="#">더빙-녹음</a><a class="dropdown-item" href="#">기타</a>
                </div>
              </li>
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">번역,통역</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">번역<br></a><a class="dropdown-item" href="#">통역</a><a class="dropdown-item" href="#">영상번역</a><a class="dropdown-item" href="#">기타<br></a>
                </div>
              </li>
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">문서</a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">MS-office</a><a class="dropdown-item" href="#">논문</a><a class="dropdown-item" href="#">자소서</a><a class="dropdown-item" href="#">타이핑</a><a class="dropdown-item" href="#">글작성</a><a class="dropdown-item" href="#">기타</a>
                </div>
              </li>
              <li class="nav-item dropdown text-capitalize" style=""><a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">레슨.실무교육</a>
                <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                  <a class="dropdown-item" href="#">프로그래밍</a><a class="dropdown-item" href="#">그래픽디자인</a><a class="dropdown-item" href="#">데이터분석</a><a class="dropdown-item" href="#">유튜브-영상&amp;사진</a><a class="dropdown-item" href="#">외국어</a><a class="dropdown-item" href="#">프레젠테이션</a><a class="dropdown-item" href="#">취미-라이프<br></a><a class="dropdown-item" href="#">기타<br></a>
                </div>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-md-3 border-bottom" style="">
          <form class="form-inline">
            <div class="input-group">
              <input type="text" class="form-control mt-2" id="inlineFormInputGroup" placeholder="Search">
              <div class="input-group-append">
                <button class="btn btn-primary mt-2" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <header class="Nav">
    <nav id="NavBar"></nav>
  </header>
  <div class="py-1">
    <div class="container">
    </div>
  </div>
  <div class="" style="" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="row">
                        <div class="col-md-8" style="">
                          <p>디자인 &gt; 포토샵</p>
                          <div class="row">
                            <div class="col-md-12 d-flex justify-content-center">
                              <div class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12 mt-3">
                              <ul class="nav nav-tabs">
                                <li class="nav-item"> <a href="" class="nav-link active" data-toggle="tab" data-target="#tabone">서비스 설명</a> </li>
                                <li class="nav-item"> <a class="nav-link" data-toggle="tab" data-target="#tabtwo" href="">가격 정보</a> </li>
                                <li class="nav-item"> <a href="" class="nav-link" data-toggle="tab" data-target="#tabthree">수정/재진행</a> </li>
                                <li class="nav-item"> <a href="" class="nav-link" data-toggle="tab" data-target="#tabfour">취소/환불 규정</a> </li>
                                <li class="nav-item"> <a href="" class="nav-link" data-toggle="tab" data-target="#tabfive">서비스 평가</a> </li>
                              </ul>
                              <div class="tab-content mt-2">
                                <div class="tab-pane fade active show" id="tabone" role="tabpanel">
                                  <textarea cols="100" name="tabone" rows="40" style="width:100%; border:0; resize:none;"></textarea>
                                </div>
                                <div class="tab-pane fade" id="tabtwo" role="tabpanel">
                                  <textarea cols="100" name="tabtwo" rows="40" style="width:100%; border:0; resize:none;"></textarea>
                                </div>
                                <div class="tab-pane fade" id="tabthree" role="tabpanel">
                                  <textarea cols="100" name="tabthree" rows="40" style="width:100%; border:0; resize:none;"></textarea>
                                </div>
                                <div class="tab-pane fade" id="tabfour" role="tabpanel">
                                  <textarea cols="100" name="tabfour" rows="40" style="width:100%; border:0; resize:none;"></textarea>
                                </div>
                                <div class="tab-pane fade" id="tabfive" role="tabpanel">
                                  <textarea cols="100" name="tabfive" rows="40" style="width:100%; border:0; resize:none;"></textarea>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row"></div>
                        </div>
                        <div class="col-md-4" style="">
                          <div class="row">
                            <div class="col-md-12" style="">
                              <h4 class="" style=""><b>1달 안에 포토샵 완성</b></h4>
                              <div class="row">
                                <div class="col-md-12 py-2">
                                  <div class="table-responsive mt-2">
                                    <table class="table">
                                      <thead>
                                        <tr>
                                          <th class="border-right border-top-0 border-primary table-primary">가격</th>
                                          <th class="border-top-0 border-left border-primary"><input type="text" name="price" size="20" style="width:100%; border:0;"></th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td class="border-right border-primary">기간</td>
                                          <td class="border-left border-bottom border-primary"><input type="text" name="price" size="20" style="width:100%; border:0;"></td>
                                        </tr>
                                        <tr>
                                          <td class="border-right border-primary">진행 방법</td>
                                          <td class="border-left border-primary"><select id="select" name="select" style="width:100px; height:20px; border-style: none;">
                                              <option value="offline">오프라인</option>
                                              <option value="online">온라인</option>
                                            </select></td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                              <div class="row">
                                <div class="col-md-12 pt-3" style="">
                                  <div class="row">
                                  </div>
                                  <div class="row">
                                    <div class="col-md-12"><img class="img-fluid d-block rounded-circle" src="https://static.pingendo.com/img-placeholder-3.svg" style="	transform:  scale(0.8);"></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12" style="">
                              <div class="row">
                                <div class="col-md-12 h-75">
                                  <div class="table-responsive justify-content-center align-items-center border">
                                    <table class="table">
                                      <thead>
                                        <tr></tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td style="">강사명</td>
                                          <td>홍길동</td>
                                        </tr>
                                        <tr>
                                          <td>연락처</td>
                                          <td>hong@gmil.com</td>
                                        </tr>
                                        <tr>
                                          <td>소개</td>
                                          <td><textarea cols="30" name="tabone" rows="5" style="width:100%; border:0; resize:none;"></textarea></td>
                                        </tr>
                                        <tr>
                                          <td>경력</td>
                                          <td><textarea cols="30" name="tabone" rows="5" style="width:100%; border:0; resize:none;"></textarea></td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </div>
                                  <div class="row">
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div><a class="btn btn-primary btn-block" href="#" style="">구매하기</a>
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
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-9">
          <p class="lead">Sign up to our newsletter for the latest news</p>
          <form class="form-inline">
            <div class="form-group"> <input type="email" class="form-control" placeholder="Your e-mail here"> </div> <button type="submit" class="btn btn-primary ml-3">Subscribe</button>
          </form>
        </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-facebook text-muted fa-2x"></i>
          </a> </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-twitter text-muted fa-2x"></i>
          </a> </div>
        <div class="col-4 col-md-1 align-self-center"> <a href="#">
            <i class="fa fa-fw fa-instagram text-muted fa-2x"></i>
          </a> </div>
      </div>
      <div class="row">
        <div class="col-md-12 mt-3 text-center">
          <p>© Copyright 2018 Pingendo - All rights reserved.</p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>
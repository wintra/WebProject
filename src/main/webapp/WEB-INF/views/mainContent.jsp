<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
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
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}
</style>
<link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
	%>
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
						<%
							if (userID == null) {
						%>
						<div class="box1">
							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">접속하기</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="login.do">Login</a> <a
											class="dropdown-item" href="join.do">Sign in</a>
									</div>
								</div>
							</div>
						</div>
						<%
							} else {
						%>
						<div class="box2">
							<div class="col-md-2">
								<div class="btn-group ml-4 mt-4" style="">
									<button class="btn dropdown-toggle btn-primary"
										data-toggle="dropdown">마이페이지</button>
									<div class="dropdown-menu">
										<a class="dropdown-item" href="mypage.do">내정보</a> <a
											class="dropdown-item" href="logoutAction.do">Logout</a>
									</div>
								</div>
							</div>
						</div>
						<%
							}
						%>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col-md-9 border-bottom" style="">
					<div class="col-offset-1 col-md-12">
						<ul class="nav mt-2" style="">
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">디자인</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="maincontant.html">포토샵<br></a><a
										class="dropdown-item" href="#">일러스트레이터</a><a
										class="dropdown-item" href="#">제품디자인</a><a
										class="dropdown-item" href="#">건축</a><a class="dropdown-item"
										href="#">UX/UI디자인</a><a class="dropdown-item" href="#">편집디자인</a><a
										class="dropdown-item" href="#">캘리그라피</a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">IT-프로그래밍</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">웹개발</a><a
										class="dropdown-item" href="#">앱개발</a><a class="dropdown-item"
										href="#">보안</a><a class="dropdown-item" href="#">데이터베이스</a><a
										class="dropdown-item" href="#">알고리즘</a><a
										class="dropdown-item" href="#">게임</a><a class="dropdown-item"
										href="#">기타 </a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">콘텐츠&nbsp;제작</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">영상촬영-편집</a><a
										class="dropdown-item" href="#">사진촬영</a><a
										class="dropdown-item" href="#">애니메이션</a><a
										class="dropdown-item" href="#">유튜브제작</a><a
										class="dropdown-item" href="#">음악</a><a class="dropdown-item"
										href="#">더빙-녹음</a><a class="dropdown-item" href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">번역,통역</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">번역<br></a><a
										class="dropdown-item" href="#">통역</a><a class="dropdown-item"
										href="#">영상번역</a><a class="dropdown-item" href="#">기타<br></a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">문서</a>
								<div class="dropdown-menu">
									<a class="dropdown-item" href="#">MS-office</a><a
										class="dropdown-item" href="#">논문</a><a class="dropdown-item"
										href="#">자소서</a><a class="dropdown-item" href="#">타이핑</a><a
										class="dropdown-item" href="#">글작성</a><a class="dropdown-item"
										href="#">기타</a>
								</div></li>
							<li class="nav-item dropdown text-capitalize" style=""><a
								class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
								role="button" aria-haspopup="true" aria-expanded="false">레슨.실무교육</a>
								<div class="dropdown-menu" x-placement="bottom-start"
									style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
									<a class="dropdown-item" href="#">프로그래밍</a><a
										class="dropdown-item" href="#">그래픽디자인</a><a
										class="dropdown-item" href="#">데이터분석</a><a
										class="dropdown-item" href="#">유튜브-영상&amp;사진</a><a
										class="dropdown-item" href="#">외국어</a><a class="dropdown-item"
										href="#">프레젠테이션</a><a class="dropdown-item" href="#">취미-라이프<br></a><a
										class="dropdown-item" href="#">기타<br></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-md-3 border-bottom" style="">
					<form class="form-inline">
						<div class="input-group">
							<input type="text" class="form-control mt-2"
								id="inlineFormInputGroup" placeholder="Search">
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
  <div class="mt-3">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-12">
              <div class="row">
                <div class="col-md-3">
                  <ul class="list-group list-group-flush">
                    <a href="#" class="list-group-item list-group-item-action" id="accordion1" data-toggle="collapse" data-target="#collapse1" aria-controls="collapse1" aria-expanded="false">디자인</a>
                    <div id="collapse1" class="collapse " aria-labelledby="accordion1" data-parent="#accordion1" style="">
                      <a href="maincontant.html" class="list-group-item list-group-item-action accordion-list"> 포토샵</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 일러스트레이터</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 제품디자인</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 건축</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> UX/UI디자인</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 편집디자인</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 캘리그라피</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                    <a href="#" class="list-group-item list-group-item-action" id="accordion2" data-toggle="collapse" data-target="#collapse2" aria-controls="collapse2" aria-expanded="false">IT/프로그래밍</a>
                    <div id="collapse2" class="collapse" aria-labelledby="accordion2" data-parent="#accordion2" style="">
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 웹개발</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 앱개발</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 보안</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 데이터베이스</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 알고리즘</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 게임</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                    <a href="#" class="list-group-item list-group-item-action" id="accordion3" data-toggle="collapse" data-target="#collapse3" aria-controls="collapse3" aria-expanded="false">콘텐츠 제작</a>
                    <div id="collapse3" class="collapse" aria-labelledby="accordion3" data-parent="#accordion3" style="">
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 영상촬영/편집</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 사진촬용</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 애니메이션</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 유튜브제작</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 음악</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 더빙/녹음</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                    <a  href="#" class="list-group-item list-group-item-action" data-toggle="collapse" aria-expanded="false" aria-controls="collapse4" data-target="#collapse4" id="accordion4">번역/통역</a>
                    <div id="collapse4" class="collapse" aria-labelledby="accordion4" data-parent="#accordion4" style="">
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 번역</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 통역</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 영상번역</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                    <a href="#" class="list-group-item list-group-item-action " id="accordion5" data-toggle="collapse" data-target="#collapse5" aria-controls="collapse5" aria-expanded="false">문서</a>
                    <div id="collapse5" class="collapse" aria-labelledby="accordion5" data-parent="#accordion5" style="">
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> MS-Office</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 논문</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 자소서</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 타이핑</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 글작성</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                    <a href="#" class="list-group-item list-group-item-action" id="accordion6" data-toggle="collapse" data-target="#collapse6" aria-controls="collapse6" aria-expanded="false">레슨/실무교육</a>
                    <div id="collapse6" class="collapse" aria-labelledby="accordion6" data-parent="#accordion6" style="">
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 프로그래밍</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 그래픽디자인</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 데이터분석</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 유튜브/영상/사진</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 외국어</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 프레젠테이션</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 취미/라이프</a>
                      <a href="#" class="list-group-item list-group-item-action accordion-list"> 기타</a>
                    </div>
                  </ul>
                </div>
                <div class="col-md-9">
                  <div class="row">
                    <div class="col-md-12">
                      <h5 class="">디자인 &gt; 포토샵</h5>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 py-4">
                      <a href="context.do"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4 py-4">
                      <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4 py-4">
                      <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4 py-4">
               <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4 py-4">
                     <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4 py-4">
                  <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-4">
                <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4">
                 <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                    <div class="col-md-4">
                    <a href="#"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
                        <div class="card-body">
                          <h4 class="card-title">Card title</h4>
                          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        </div>
						</a>
                    </div>
                  </div>
                  <div class="row"></div>
                  <div class="row">
                    <div class="col-md-12 justify-content-center d-flex mt-4 pt-3">
                      <ul class="pagination">
                        <li class="page-item"> <a class="page-link" href="#">Prev</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">1</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">2</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">3</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">4</a> </li>
                        <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
                      </ul>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <pingendo onclick="window.open('https://pingendo.com/', '_blank')" style="cursor:pointer;position: fixed;bottom: 20px;right:20px;padding:4px;background-color: #00b0eb;border-radius: 8px; width:220px;display:flex;flex-direction:row;align-items:center;justify-content:center;font-size:14px;color:white">Made with Pingendo Free&nbsp;&nbsp;<img src="https://pingendo.com/site-assets/Pingendo_logo_big.png" class="d-block" alt="Pingendo logo" height="16"></pingendo>
</body>

</html>
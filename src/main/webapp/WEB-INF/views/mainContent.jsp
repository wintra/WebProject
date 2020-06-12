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

.p-0 {
    margin-top: 150px;
    
}
.mt-5{
   background: #ffffff;
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    z-index: 1030;
    margin: 0 !important;

}

.mt-3, .my-3 {
    margin-top: 160px!important;
}

</style>
<style>
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}
.center {
  margin: 0;
  position: absolute;
  top: 70%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);

}


</style>
<link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>

   <jsp:include page="header.jsp"></jsp:include>
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
                      <a href="content.do"  class="card" style="text-decoration: none; color:#3A3A3A;"> <img class="card-img-top" src="https://static.pingendo.com/cover-moon.svg" alt="Card image cap">
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
                  <div class="row"></div>
                    <div class="row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
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
                    <div class="col-md-4"><a class="btn btn-primary center" href="writeContent.do" >컨텐츠 등록하기</a></div>
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
 <jsp:include page="footer.jsp"></jsp:include>
 </body>

</html>
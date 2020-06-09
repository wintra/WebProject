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
  </style>
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
                <div class="col-md-3" style="">
                  <ul class="list-group list-group-flush">
                    <div class="list-group-item list-group-item-action" >
                      <div class="row">
                        <div class="col-md-12 pb-3"><img class="img-fluid d-block rounded-circle" src="https://static.pingendo.com/img-placeholder-3.svg" alt="profile"></div>
                      </div>
                      <div class="row">
                        <div class="col-md-12 justify-content-center">
                          <h3 class="justify-content-center d-flex mt-2 mb-0 pb-2"><b>고길동</b></h3>
                          <div class="row">
							 <div class="col-md-12 d-inline-flex justify-content-center">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
            						<label class="btn btn-primary active">
              						<input type="radio" name="options" id="option1" autocomplete="off" checked=""> 일반 </label>
            						<label class="btn btn-primary">
              						<input type="radio" name="options" id="option2" autocomplete="off"> 전문가 </label>
          						</div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <a href="#" class="list-group-item list-group-item-action">개인정보</a>
                    <a href="#" class="list-group-item list-group-item-action">문의내역</a>
                  </ul>
                </div>
                <div class="col-md-8" style="">
                  <div class="row">
                    <div class="col-md-12">
                      <h5 class="">MY Page</h5>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="jumbotron rounded pb-3 pt-3 mt-3" style="padding-top: 20px;">
                        <form method="post" action="joinAction.jsp">
                          <div class="table-responsive">
                            <table class="table">
                              <thead>
                                <tr>
                                  <td class="table-primary">아이디</td>
                                  <td class="" colspan="2"  style="text-align:left">testID<span style="font-weight: normal;"></span></td>
                                </tr>
                              </thead>
                              <tbody>
                                <tr>
                                  <td class="table-primary"><b>비밀번호</b></td>
                                  <td contenteditable="true" class="m-1 p-1" colspan="2"><input type="password" class="form-control" placeholder="비밀번호" name="userID" mexlength="20"></td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>이름</b></td>
                                  <td class="m-1 p-1" colspan="2"><input type="text" class="form-control" placeholder="이름" name="userName" mexlength="20"><span style="font-weight: normal;"></span>
                                  </td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>성별</b></td>
                                  <td class="" style="text-align: center;"><input type="radio" name="userGender" autocomplete="off" value="남자" checked="">남자</td>
                                  <td class="" style="text-align: center;"><input type="radio" name="userGender" autocomplete="off" value="여자">여자 </td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>이메일</b></td>
                                  <td class="m-1 p-1" colspan="2"><input type="email" class="form-control" placeholder="Email" name="userEmail" mexlength="20"><span style="font-weight: normal;"></span>
                                  </td>
                                </tr>
                                <tr>
                                  <td class="table-primary"><b>전화번호</b></td>
                                  <th class="m-1 p-1" colspan="2"><input type="tel" class="form-control" placeholder=" - 를 제외한 번호를 입력해주세요" name="userNuber" mexlength="20">
                                  </th>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                          <div class="row">
                            <div class="col-md-12 d-inline-flex justify-content-center"><a class="btn btn-primary" href="mypage.html">수정하기</a></div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"></div>
                  </div>
                  <div class="row">
                    <div class="col-md-12"></div>
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
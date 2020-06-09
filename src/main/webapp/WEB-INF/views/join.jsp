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
.pl-4, .px-4 {
  
    margin-top: 8.5rem;
}
  </style>
  <link href="nav.css" rel="stylesheet" type="text/css">
</head>

<body>
   <jsp:include page="header.jsp"></jsp:include>
  <header class="Nav">
    <nav id="NavBar"></nav>
  </header>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12 d-flex justify-content-center my-4">
          <div class="jumbotron pl-4 pb-3 pr-4 ml-5 mr-5 d-flex justify-content-around flex-column-reverse align-items-center w-50" style="padding-top: 20px;">
            <form method="post" action="joinAction.do" class="w-75">
              <h3 style="text-align:center">회원가입</h3>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="아이디" name="userID" mexlength="20">
              </div>
              <div class="form-group">
                <input type="password" class="form-control" placeholder="비밀번호" name="userPassword" mexlength="20">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="이름" name="userName" mexlength="20">
              </div>
              <div class="form-group">
                <input type="email" class="form-control" placeholder="이메일" name="userEmail" mexlength="20">
              </div>
              <div class="form-group">
                <input type="number" class="form-control" placeholder=" - 를 제외한 번호를 입력해주세요" name="userPhoneNum" mexlength="20">
              </div>
              <div class="form-group w-100" style="text-align:center;">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-primary active">
                    <input type="radio" name="userGender" autocomplete="off" value="male" checked="">남자 </label>
                  <label class="btn btn-primary">
                    <input type="radio" name="userGender" autocomplete="off" value="female">여자 </label>
                </div>
              </div>
              <input type="submit" class="btn btn-primary form-control" value="회원가입">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 
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
            <form method="post" action="joinAction" class="w-75">
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
                    <input type="radio" name="userGender" autocomplete="off" value="남자" checked="">남자 </label>
                  <label class="btn btn-primary">
                    <input type="radio" name="userGender" autocomplete="off" value="여자">여자 </label>
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
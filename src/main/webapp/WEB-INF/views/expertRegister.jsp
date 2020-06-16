<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>

<html>

<head>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>


<body>
 <%
      String userID = null;
      if (session.getAttribute("userID") != null) {
         userID = (String) session.getAttribute("userID");
      }
   %>
   <jsp:include page="header.jsp"></jsp:include>
 <header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
  <div class="expert-info" style="">
    <div class="container">
      <div class="row">
    
        <div class="col-md-12 order-md-1">
          <form class="needs-validation" action="talentRegisterAction"  method = "post">
            <div class="row">
              <div class="col-md-12 mb-3"> <label for="firstName" class="text-body">전문가 닉네임<br></label>
                <input type="text" class="form-control w-75 px-3" name="nickName" placeholder="닉네임을 입력해주세요." value="" style="">
                <div class="invalid-feedback"> Valid first name is required. </div>
              </div>
            </div>
            <label for="firstName">전문분야<br></label>
            <select name="technology" size="1">
              <option value="design">디자인</option>
              <option value="IT">IT/프로그래밍</option>
              <option value="contents">콘텐츠 제작</option>
              <option value="translation">번역/통역</option>
              <option value="document">문서</option>
              <option value="lesson">레슨/실무</option>
            </select>
            
            <div class="mb-3"> <label for="profield">보유기술</label>
              <input type="text" class="form-control w-75" name="profield" placeholder="보유하신 기술을 입력해주세요." required="">
              <div class="invalid-feedback" style=""> Please enter your shipping address. </div>
            </div>
            <div class="mb-3"> <label for="Education">학력<br></label>
              <input type="text" class="form-control w-75" name="education" placeholder="학교명을 입력해주세요."> </div>
            <div class="row">
              <div class="col-md-6 mb-3"> <label for="major">전공</label> <input type="text" class="form-control w-100" name="major" placeholder="전공을 입력해주세요.">
                <div class="invalid-feedback" style=""> Please select a valid country. </div>
              </div>
              <div class="col-md-6 mb-3"> <label for="state">상태</label> <input type="text" class="form-control w-50" name="state" placeholder="예)재학">
                <div class="invalid-feedback"> Please provide a valid state. </div>
              </div>
            </div>
            <div class="mb-3"> <label for="certificate">자격증<br></label>
              <input type="text" class="form-control w-75" name="certificate" placeholder="보유하신 자격증을 입력해주세요.">
            </div>
            <div class="row">
              <div class="col-md-6 mb-3"> <label for="certificate_date">발급일<br></label> <input type="text" class="form-control w-100" name="certificate_date" placeholder="발급일을 입력해주세요.">
                <div class="invalid-feedback" style=""> Please select a valid country. </div>
              </div>
              <div class="col-md-6 mb-3 w-25"> <label for="certificate_state">발급기관<br></label> <input type="text" class="form-control w-50" name="certificate_state" placeholder="발급기관명">
                <div class="invalid-feedback"> Please provide a valid state. </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-6 mb-3"> <label for="accountNum">계좌번호<br></label> <input type="text" class="form-control w-100" name="accountNum" placeholder="-를 제외한 계좌번호를 입력해주세요.">
                <div class="invalid-feedback" style=""> Please select a valid country. </div>
              </div>
              <div class="col-md-6 mb-3 w-25"> <label for="bank">은행명<br></label> <input type="text" class="form-control w-50" name="bank" placeholder="은행명
은행">
                <div class="invalid-feedback"> Please provide a valid state. </div>
              </div>
            </div>
            <div class="row">
              <div class="col-md-12 mb-3">
                <div class="invalid-feedback"> Expiration date required </div>
              </div>
            </div>
            <button class="btn btn-lg btn-block w-75 btn-primary" type="submit" style="">확인하기<br></button>
          </form>
        </div>
      </div>
    </div>
  </div>

 <jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
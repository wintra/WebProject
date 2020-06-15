<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Board.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <style>
@import
   url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@font-face {
   font-family: 'GmarketSansMedium';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

b, strong {
   font-family: 'Do Hyeon';
}

.display-3 {
   font-size: 2.5rem;
}

.font-3 {
   font-family: "GmarketSansMedium";
}
</style>
  
</head>

<body>
<%

BoardDAO boardDAO = new BoardDAO();
Board board = boardDAO.returnBoard(Integer.parseInt(request.getParameter("boardNum")));
%>

  <div class="py-1">
    <div class="container">
    </div>
  </div>
  <div class="mt-3">
  <div class="py-2">
    <div class="container">
      <div class="row">
        <div class="p-0 col-lg-5 order-2 order-lg-1"> <img class="img-fluid d-block" src="${pageContext.request.contextPath}/resources/image/<%= board.getFileName()%>"> </div>
        <div class="d-flex flex-column justify-content-center p-3 col-lg-7 order-1 order-lg-2">
          <p class="lead mb-0" style="">강의 설명</p>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5" style="" >
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card">
            <div class="card-header"><b>결제항목</b></div>
            <div class="card-body" style="">
              <h4>강의명 : <%= board.getSubject() %></h4>
              <div class="blockquote">
                <p class="mb-0">신용카드</p>
                <p class="mb-0">총 금액 : <%= board.getPrice() %> </p>
                
               
              </div>
            <a class="btn btn-info w-50" href="kakaopay.do">결제하기</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
   </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
      integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
      crossorigin="anonymous"></script>
   <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
</body>

</html>
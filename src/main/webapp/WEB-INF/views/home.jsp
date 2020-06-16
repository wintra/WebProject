<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="com.webproject.app.Board.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<style>

* {
  font-family: Roboto, sans-serif;
  padding: 0;
  margin: 0;
}


.flexbox {

  width: 100%;
  height: 400px;
  display: flex;
  justify-content: center;
  align-items: center;
}

.search {
  margin: 20px;
}

.search > h3 {
  font-weight: normal;
}

.search > h1,
.search > h3 {
  	color: white;
    margin-bottom: 15px;
    text-shadow: 0 1px #9b0000;
    display: block;
    font-size: 2em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.search > div {
  display: inline-block;
  position: relative;
}

.search > div:after {
  content: "";
  background: white;
  width: 4px;
  height: 20px;
  position: absolute;
  top: 40px;
  right: 2px;
  transform: rotate(135deg);
  box-shadow: 1px 0 #9b0000;
}

.search > div > input {
  color: white;
  font-size: 16px;
  background: transparent;
  width: 25px;
  height: 25px;
  padding: 10px;
  border: solid 3px white;
  outline: none;
  border-radius: 35px;
  box-shadow: 0 1px #9b0000;
  transition: width 0.5s;
  width: 51px;
    height: 51px;
  
}
   

.search > div > input::placeholder {
  color: #efefef;
  opacity: 1;
}

.search > div > input::-ms-placeholder {
  color: #efefef;
}

.search > div > input::-ms-input-placeholder {
  color: #efefef;
}

.search > div > input:focus,
.search > div > input:valid {
  width: 520px;
}


  </style>
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
  <form action="searchContentAction" method="get">
     <div class="flexbox" style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/cat-bg/0505d736-24f0-45bd-b103-e1727bad4e62.jpg&quot;">
    <div class="search">
      <h1>배우고싶은 재능이 있다면, 재능몬에서!</h1>
      <div>
      
        <input type="text" name="search" placeholder="       웹개발" required="">
        
      </div>
    </div>
  </div>
  </form>
  <div class="p-0" style="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-ride="carousel" ></div>
        </div>
      </div>
    </div>
  </div>
  <div class="">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-md-12 mt-4">
              <div class="blockquote">
                <p class="mb-0 border-bottom" style="">인기있는 카테고리</p>
              </div>
              <div class="row">
                <div class="col-md-4 h-25" style="transform: scale(0.8);">
                  <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                    <div class="card-img-overlay d-flex justify-content-center align-items-center">
                      <h2 class="text-primary">Card title</h2>
                    </div>
                  </a>
                </div>
                <div class="col-md-4 h-25" style="transform: scale(0.8);">
                  <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                    <div class="card-img-overlay d-flex justify-content-center align-items-center">
                      <h2 class="text-primary">Card title</h2>
                    </div>
                  </a>
                </div>
                <div class="col-md-4 h-25" style="transform: scale(0.8);">
                  <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                    <div class="card-img-overlay d-flex justify-content-center align-items-center">
                      <h2 class="text-primary">Card title</h2>
                    </div>
                  </a>
                </div>
              </div>
              <div class="row">
                <div class="col-md-12">
                  <div class="blockquote">
                    <p class="mb-0 border-bottom rounded-bottom">이런건 어떠세요?</p>
                  </div>
                  <div class="row" style="transform: scale(.);">
                    <div class="col-md-4 h-25" style="transform: scale(0.8);">
                      <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                        <div class="card-img-overlay d-flex justify-content-center align-items-center">
                          <h2 class="text-primary">Card title</h2>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-4" style="transform: scale(0.8);">
                      <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                        <div class="card-img-overlay d-flex justify-content-center align-items-center">
                          <h2 class="text-primary">Card title</h2>
                        </div>
                      </a>
                    </div>
                    <div class="col-md-4" style="transform: scale(0.8);">
                      <a href="#" class="card"> <img class="card-img" src="https://static.pingendo.com/cover-bubble-light.svg" alt="Card image">
                        <div class="card-img-overlay d-flex justify-content-center align-items-center">
                          <h2 class="text-primary">Card title</h2>
                        </div>
                      </a>
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
   <jsp:include page="homeFooter.jsp"></jsp:include>
</body>

</html>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
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
  <div class="my-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12 justify-content-center align-items-center d-flex">
          <form method = post id="c_form-h" class="w-50 align-items-center justify-content-center" action="loginAction">
            <div class="form-group row"> <label for="inputmailh" class="col-2 col-form-label">ID</label>
              <div class="col-10">
                <input type="text" class="form-control" id="inputmailh" name = "userID" placeholder="Input your ID"> </div>
            </div>
            <div class="form-group row"> <label for="inputpasswordh" class="col-2 col-form-label">Password</label>
              <div class="col-10">
                <input type="password" class="form-control" id="inputpasswordh" name="userPassword" placeholder="Input your Password"> </div>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container"></div>
    <div class="container"></div>
    <div class="container"></div>
  </div>
  <jsp:include page="footer.jsp"></jsp:include>
  </body>

</html>
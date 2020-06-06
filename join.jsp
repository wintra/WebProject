<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
  <style> .centered { width: 1000px; position: absolute; left: 50%; margin-left: -200px; } </style>
</head>

<body >
  <div class="">
    <div class="container">
      <div class="row mt-2">
        <div class="" style=""><i class="fa fa-4x fa-camera-retro"></i></div>
        <div class="col-md-7">
          <h1 class="m-1" style=""><a href="home.do">Main</a></h1>
        </div>
        <div class="col-md-1   offset-md-3" style="">
          <ul class="nav" style="">
            <li class="nav-item dropdown" style="">
              <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">�����ϱ�</a>
              <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(0px, 40px, 0px);">
                <a class="dropdown-item" href="login.do">�α���</a>
                <a class="dropdown-item" href="join.do">ȸ������</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <hr>
  <div class="py-5">
    <div class="container">
      <div class="centered">
        <div class="col-md-5" style="">
          <div class="jumbotron pb-3" style="padding-top: 20px;">
            <form method="post" action="joinAction.jsp">
              <h3 style="text-align:center">ȸ������</h3>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="���̵�" name="userID" mexlength="20">
              </div>
              <div class="form-group">
                <input type="password" class="form-control" placeholder="��й�ȣ" name="userPassword" mexlength="20">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="�̸�" name="userName" mexlength="20">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" placeholder="�̸���" name="userEmail" mexlength="20">
              </div>
              <div class="form-group">
                <input type="number" class="form-control" placeholder=" - �� ������ ��ȣ�� �Է����ּ���" name="userName" mexlength="20">
              </div>
              <div class="form-group" style="text-align:center;">
                <div class="btn-group" data-toggle="buttons">
                  <label class="btn btn-primary active">
                    <input type="radio" name="userGender" autocomplete="off" value="����" checked="">���� </label>
                  <label class="btn btn-primary">
                    <input type="radio" name="userGender" autocomplete="off" value="����">���� </label>
                </div>
              </div>
              <input type="submit" class="btn btn-primary form-control" value="ȸ������">
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous" style=""></script>
</body>

</html>
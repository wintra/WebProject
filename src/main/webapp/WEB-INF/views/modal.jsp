<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import="com.webproject.app.Board.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<title>리뷰쓰기</title>
</head>
<body>
<%

BoardDAO boardDAO = new BoardDAO();
Board board = boardDAO.returnBoard(Integer.parseInt(request.getParameter("boardNum")));

String userID = null;
if (session.getAttribute("userID") != null) {
   userID = (String) session.getAttribute("userID");
}
%>

            <div class="modal-header">
               <h5 class="modal-title">구매 리뷰 작성</h5>
            </div>
            <form method="post" action="setComment" >
            <div class="modal-body">
               <div class="container">
                  <table class="table table-bordered">
                     <tbody>
                        <tr>
                           <th >
                           구매상품명</th>
                           <input type=hidden name="boardNum1" value="<%= Integer.parseInt(request.getParameter("boardNum"))%>">
                           <td>
                              <p><%= board.getSubject() %></p>
                           </td>
                        </tr>
                        
                        <tr >
                        <input type=hidden  name="buyerid" value="<%=userID %>">
                           <th>후기</th>
                           <td><textarea cols="10" name="comment"
                                 class="form-control" placeholder="내용을 입력하세요. " rows="10"></textarea></td>
                        </tr>
                        <tr>
                           <th>평점</th>
                           <td><select name="commentscore">
                                 <option value="5">5점</option>
                                 <option value="4">4점</option>
                                 <option value="3">3점</option>
                                 <option value="2">2점</option>
                                 <option value="1">1점</option>
                           </select></td>
                        </tr>
                        <tr>
                        </tr>
                     </tbody>
                  </table>
                  
               </div>
            </div>
            <div class="modal-footer">
                <input type="submit" class="btn btn-primary form-control" value="리뷰등록">
            </div>
            </form>
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
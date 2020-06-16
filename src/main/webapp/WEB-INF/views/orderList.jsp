<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.*"%>
<%@ page import="com.webproject.app.Pay.*"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">


</head>
<body>
   <%
      UserDAO userDAO = new UserDAO();
      UserDAO userDAO1 = new UserDAO();
      String userID = (String) session.getAttribute("userID");
      User user = userDAO.returnUser(userID);
      BoardDAO boardDAO = new BoardDAO();
      
      PayDAO payDAO = new PayDAO();
      
      
      
      int currentPage = Integer.parseInt(request.getParameter("pg"));

      if (currentPage < 1)
         currentPage = 1;
   %>
   <script>

      function popup_post_set() {
         var option = "width = 500, height = 500, top = 100, left = 200, location = no"
         window.open('', 'new_popup', option);
         document.f2.submit();
      }
      
   
   </script>
   <jsp:include page="header.jsp"></jsp:include>
   <header class="Nav">
      <nav id="NavBar"></nav>
   </header>
   <div class="py-1">
      <div class="container">

   </div>
   <div class="p-0">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="row">
                  <div class="col-md-12">
                     <div class="row">
                        <jsp:include page="mypageSide.jsp"></jsp:include>
                        <div class="col-md-8" style="">
                           <div class="row">
                              <div class="col-md-12">
                                 <h3 class="">구매내역</h3>
                              </div>
                           </div>
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="jumbotron rounded pb-3 pt-3 mt-3"
                                    style="padding-top: 20px;">
                                    <div class="table-responsive">
                                       <ul class="list-group list-group-flush">
                                          <li class="list-group-item">
                                             <table class="table list-center">
                                                <thead>
                                                   <tr>
                                                      <th>구분</th>
                                                      <th colspan="2">내용</th>
                                                      <th>문의</th>
                                                   </tr>
                                                </thead>

                                                <%
                                                ArrayList<Pay> list = payDAO.returnPay(userID);
                                                
                                                

                                                   int a;
                                                   if (list.size() - 3 * currentPage < 0)
                                                      a = list.size() - 9 * ( currentPage-1 );
                                                   else
                                                      a = 3;

                                                   if (list.size() >= 1) {

                                                      for (int col = 0; col < a; col++) {
                                                         Board board = boardDAO.returnBoard(list.get(col+3*(currentPage-1)).getBoardNum());
                                                         String seller = board.getId();
                                                         User sellerId = userDAO1.returnUser(seller);
                                                         
                                                %>



                                                <tbody>
                                                   <tr>
                                                   
                                                      <td rowspan="3" style="vertical-align: middle">#<%=col+1 %></td>
                                                      <td colspan="2"><a href="content.do?boardNum=<%= list.get(col+3*(currentPage-1)).getBoardNum() %>"><%= board.getSubject()  %> </a></td>
                                                      <td>
                                                         <button type="button" class="btn btn-primary btn-block" data-toggle="tooltip" data-placement="right" title="연락처 : <%=sellerId.getUserPhoneNum()%>">
                                                         문의 </button>
                                                      </td>
                                                   </tr>
                                                   <tr>
                                                      <td><%= board.getStartDate() %> ~ <%=board.getEndDate() %></td>
                                                      <td><%= board.getPrice() %> </td>
                                                      <td>
                                                      <form onclick="return popup_post_set()" method="post"
                                                         name="f2" action="modal.do" target="new_popup">
                                                         <button class="btn btn-primary btn-block" type="submit"
                                                            name="boardNum"  value="<%=list.get(col+3*(currentPage-1)).getBoardNum()%>">리뷰</button>
                                                         
                                                      </form>
                                                      </td>
                                                   </tr>
                                                <%
                                                   }
                                                   }
                                                %>
                                             </table>
                                          </li>
                                       </ul>
                                    </div>
                                    <div class="row">
                                       <div
                                          class="col-md-12 justify-content-center d-flex mt-2 pt-2">
                                          <ul class="pagination">
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=<%=currentPage - 1%>">Prev</a></li>
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=1">1</a></li>
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=2">2</a></li>
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=3">3</a></li>
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=4">4</a></li>
                                             <li class="page-item"><a class="page-link"
                                                href="orderList.do?pg=<%=currentPage + 1%>">Next</a></li>
                                          </ul>

                                       </div>
                                    </div>

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

   <!-- 팝업으로 띄워질 리뷰작성 폼 -->

   <jsp:include page="footer.jsp"></jsp:include>
   
 <script>
         $(function () {
            $('[data-toggle="tooltip"]').tooltip()
         })
      </script>
</body>


</html>
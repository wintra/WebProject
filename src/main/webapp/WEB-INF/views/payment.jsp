<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="com.webproject.app.Board.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">

</head>

<body>
	<%
		BoardDAO boardDAO = new BoardDAO();
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));
		Board board = boardDAO.returnBoard(boardNum);
	%>
	<div class="py-5">
		<div class="container">
			<div class="row d-flex justify-content-center text-center ">
				<div class="p-3 col-lg-3 col-md-4">
					<div class="card border-0"></div>
				</div>
				<div class="p-3 col-lg-3 col-md-3">
					<div class="card">
						<div class="card-header">카드 결제 내역</div>
						<div class="card-body">
							<p><%=board.getSubject()%></p>
							<p><%=board.getStartDate()%>
								~
								<%=board.getEndDate()%></p>
							<p>
								결제금액 금액 :
								<%=board.getPrice()%></p>



							<form method="post" name="f1" action="kakaopay.do"
								target="new_popup">
								<button class="btn btn-primary w-75" name="boardNum"
									value="<%=boardNum%>">결제하기</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
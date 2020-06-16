<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.*"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.webproject.app.Pay.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
	<script type="text/javascript">
		$(document).ready(function() {

			$("button[name=revise]").click(function() {

				$("form[name=groupMemberInfo]")

				.attr({
					action : "reviseContent.do?value=" + $(this).val(),
					method : "post"
				})

				.submit();

			});

		});
	</script>



	<jsp:include page="header.jsp"></jsp:include>
	<%
		UserDAO userDAO = new UserDAO();
		String userID = (String) session.getAttribute("userID");
		User user = userDAO.returnUser(userID);
		PayDAO payDAO = new PayDAO();
		BoardDAO boardDAO = new BoardDAO();

		int currentPage = Integer.parseInt(request.getParameter("pg"));

		if (currentPage < 1)
			currentPage = 1;
	%>

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
											<h3 class="">판매내역</h3>
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
																		<th>수정/삭제</th>
																	</tr>
																</thead>

																<%
																	ArrayList<Board> list = boardDAO.returnBoardbyID(userID);

																	int a;
																	if (list.size() - 3 * currentPage < 0)
																		a = list.size() - 3 * (currentPage - 1);
																	else
																		a = 3;

																	if (list.size() >= 1) {

																		for (int col = 0; col < a; col++) {
																%>

																<tbody>
																	<tr>
																		<td rowspan="3" style="vertical-align: middle">#<%=col + 1%></td>
																		<td colspan="2"><a
																			href="content.do?boardNum=<%=list.get(col + 3 * (currentPage - 1)).getBoardNum()%>"><%=list.get(col + 3 * (currentPage - 1)).getSubject()%></a></td>
																		<td><form method="post" action="reviseContent.do">
																				<button class="btn btn-primary" name="boardNum"
																					value=<%=list.get(col + 3 * (currentPage - 1)).getBoardNum()%>>수정</button>
																			</form></td>

																	</tr>
																	<tr>
																		<td><%=list.get(col + 3 * (currentPage - 1)).getStartDate()%>~<%=list.get(col + 3 * (currentPage - 1)).getEndDate()%></td>
																		<td><%=payDAO.countPay(list.get(col + 3 * (currentPage - 1)).getBoardNum())%>/<%=list.get(col + 3 * (currentPage - 1)).getMaxPeople()%>명
																		</td>
																		<td><form method="post" name="form"
																				onclick="return confirm('정말로 삭제하시겠습니까?')"
																				action="contentDeleteAction">
																				<button class="btn btn-danger" name="boardNum"
																					type="submit"
																					value=<%=list.get(col + 3 * (currentPage - 1)).getBoardNum()%>>삭제</button>
																			</form></td>


																	</tr>
																</tbody>
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
																href="soldList.do?pg=<%=currentPage - 1%>">Prev</a></li>
															<li class="page-item"><a class="page-link"
																href="soldList.do?pg=1">1</a></li>
															<li class="page-item"><a class="page-link"
																href="soldList.do?pg=2">2</a></li>
															<li class="page-item"><a class="page-link"
																href="soldList.do?pg=3">3</a></li>
															<li class="page-item"><a class="page-link"
																href="soldList.do?pg=4">4</a></li>
															<li class="page-item"><a class="page-link"
																href="soldList.do?pg=<%=currentPage + 1%>">Next</a></li>
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


	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
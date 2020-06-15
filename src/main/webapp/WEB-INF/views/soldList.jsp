<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.*"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="java.util.ArrayList"%>
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
<style>
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}

.p-0 {
	margin-top: 150px;
}

.mt-5 {
	background: #ffffff;
	position: fixed;
	top: 0;
	right: 0;
	left: 0;
	z-index: 1030;
	margin: 0 !important;
}
</style>
<link href="nav.css" rel="stylesheet" type="text/css">
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
	<script type="text/javascript">
		function button_event() {
			if (confirm("정말 삭제하시겠습니까??") == true) { //확인
				document.form.submit();
			} else { //취소
				return;
			}
		}
	</script>


	출처: https://h5bak.tistory.com/134 [이준빈은 호박머리]

	<jsp:include page="header.jsp"></jsp:include>
	<%
		UserDAO userDAO = new UserDAO();
		String userID = (String) session.getAttribute("userID");
		User user = userDAO.returnUser(userID);

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
								<div class="col-md-3" style="">
									<ul class="list-group list-group-flush">
										<a href="#" class="list-group-item list-group-item-action"
											id="accordion1" data-toggle="collapse"
											data-target="#collapse1" aria-controls="collapse1"
											aria-expanded="false" />
										<div class="row">
											<div class="col-md-12 pb-3">
												<img class="img-fluid d-block rounded-circle"
													src="https://static.pingendo.com/img-placeholder-3.svg"
													alt="profile">
											</div>
										</div>
										<div class="row">
											<div class="col-md-12 justify-content-center">
												<h3 class="justify-content-center d-flex mt-2 mb-0 pb-2">
													<b><%=user.getUserName()%></b>
												</h3>
												<div class="row">
													<div class="col-md-12 d-inline-flex justify-content-center">
														<div class="btn-group btn-group-toggle"
															data-toggle="buttons">
															<label class="btn btn-primary"> <input
																type="radio" name="options" id="option2"
																autocomplete="off" checked=""> 전문가
															</label>
														</div>
													</div>
												</div>
											</div>
										</div>
										</a>
										<a href="orderList.do?pg=1"
											class="list-group-item list-group-item-action">구매내역</a>
										<a href="soldList.do?pg=1"
											class="list-group-item list-group-item-action">판매내역</a>
										<a href="reviseExpert.do"
											class="list-group-item list-group-item-action">전문가 정보 수정</a>
										<a href="withdrawUser.do"
											class="list-group-item list-group-item-action">회원 탈퇴</a>
									</ul>
								</div>
								<div class="col-md-8" style="">
									<div class="row">
										<div class="col-md-12">
											<h5 class="">판매내역</h5>
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
																		<td rowspan="3" style="vertical-align: middle">#1</td>
																		<td colspan="2"><a href="#"><%=list.get(col + 3 * (currentPage - 1)).getSubject()%></a></td>
																		<td><form method="post" action="reviseContent.do">
																				<button class="btn btn-primary" name="boardNum"
																					value=<%=list.get(col + 3 * (currentPage - 1)).getBoardNum()%>>수정</button>
																			</form></td>

																		<%
																			System.out.println(list.get(col + 3 * (currentPage - 1)).getBoardNum());
																		%>
																	</tr>
																	<tr>
																		<td><%=list.get(col + 3 * (currentPage - 1)).getStartDate()%>~<%=list.get(col + 3 * (currentPage - 1)).getEndDate()%></td>
																		<td>3/<%=list.get(col + 3 * (currentPage - 1)).getMaxPeople()%>명
																		</td>
																		<td><form method="post" name="form"
																				action="contentDeleteAction">
																				<button class="btn btn-danger" name="boardNum"
																					onclick="button_event();"
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
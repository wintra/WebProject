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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://static.pingendo.com/bootstrap/bootstrap-4.3.1.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<style>
</style>
<body>
	<%
		UserDAO userDAO = new UserDAO();
		String userID = (String) session.getAttribute("userID");
		User user = userDAO.returnUser(userID);
		BoardDAO boardDAO = new BoardDAO();

		PayDAO payDAO = new PayDAO();

		int currentPage = Integer.parseInt(request.getParameter("pg"));

		if (currentPage < 1)
			currentPage = 1;
	%>

	<script language="javascript">
		//부모 창에서 모달창을 띄운다.
		var array = new Array();
		array["element"] = document.getElementById("element");
		array["string"] = "문자열";
		array["int"] = 1;
		var modal = window
				.showModalDialog("modal.htm", array,
						"dialogWidth:500px; dialogHeight:500px; dialogTop:0px; dialogLeft:0px;");
	</script>

	<jsp:include page="header.jsp"></jsp:include>
	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="p-0">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-3" style="">
									<ul class="list-group list-group-flush">
										<div class="list-group-item list-group-item-action">
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
														<div
															class="col-md-12 d-inline-flex justify-content-center">
															<div class="btn-group btn-group-toggle"
																data-toggle="buttons">

																<%
																	boolean isExpert = false;
																	if (userDAO.isExpert(userID) == 0) {
																%>
																<label class="btn btn-primary active"> <input
																	type="radio" name="options" id="option1"
																	autocomplete="off" checked=""> 일반
																</label>

																<%
																	} else if (userDAO.isExpert(userID) == 1) {
																		isExpert = true;
																%>
																<label class="btn btn-primary"> <input
																	type="radio" name="options" id="option2"
																	autocomplete="off"> 전문가
																</label>

																<%
																	}
																%>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<a href="orderList.do?pg=1"
											class="list-group-item list-group-item-action">구매내역</a>
										<%
											if (isExpert == true) {
										%>
										<a href="soldList.do?pg=1"
											class="list-group-item list-group-item-action">판매내역</a>
										<a href="reviseExpert.do"
											class="list-group-item list-group-item-action">전문가 정보 수정</a>
										<%
											}
										%>
										<a href="withdrawUser.do"
											class="list-group-item list-group-item-action">회원 탈퇴</a>

									</ul>
								</div>
								<div class="col-md-8" style="">
									<div class="row">
										<div class="col-md-12">
											<h5 class="">구매내역</h5>
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
																		a = list.size() - 3 * (currentPage - 1);
																	else
																		a = 3;

																	if (list.size() >= 1) {

																		for (int col = 0; col < a; col++) {
																			Board board = boardDAO.returnBoard(list.get(col + 3 * (currentPage - 1)).getBoardNum());
																%>



																<tbody>
																	<tr>
																		<td rowspan="3" style="vertical-align: middle">#1</td>
																		<td colspan="2"><a href="#"><%=board.getSubject()%></a></td>
																		<td><a class="btn btn-primary" href="#">문의</a></td>
																	</tr>
																	<tr>
																		<td><%=board.getStartDate()%> ~ <%=board.getEndDate()%></td>
																		<td><%=board.getPrice()%></td>
																		<td><a class="btn btn-primary" id="modal"
																			data-toggle="modal" data-target="#myModal">리뷰</a></td>
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
	<div class="modal" id="mymodal" data-backdrop="static">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">구매 리뷰 작성</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span>×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container">
						<table class="table table-bordered">
							<tbody>
								<tr>
									<th>구매내용</th>
									<td>
										<p><%=%></p>
									</td>
								</tr>
								<tr>
									<th>제목</th>
									<td><input type="text" placeholder="제목을 입력하세요. "
										class="form-control" name="subject"></td>
								</tr>
								<tr>
									<th>후기</th>
									<td><textarea cols="10" name="content"
											class="form-control" placeholder="내용을 입력하세요. " rows="10"></textarea></td>
								</tr>
								<tr>
									<th>평점</th>
									<td><select>
											<option value="5점">5점</option>
											<option value="4점">4점</option>
											<option value="3점">3점</option>
											<option value="2점">2점</option>
											<option value="1점">1점</option>
									</select></td>
								</tr>
								<tr>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">확인</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

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

	<script style="">
		$('#modal').click(function(e) {
			e.preventDefault();
			$('#mymodal').modal("show");
		});
	</script>

</body>


</html>
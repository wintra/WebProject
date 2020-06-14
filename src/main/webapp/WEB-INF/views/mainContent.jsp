<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.box1 {
	height: 40;
	text-align: center;
	position: relative
}

.box2 {
	height: 40;
	position: absolute;
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

.mt-3, .my-3 {
	margin-top: 160px !important;
}
</style>
<style>
.centered {
	width: 1000px;
	position: absolute;
	left: 50%;
	margin-left: -200px;
}

.center {
	margin: 0;
	position: absolute;
	top: 70%;
	left: 50%;
	-ms-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
}
</style>
</head>

<body>
	<%
		BoardDAO boardDAO = new BoardDAO();
		int categoryNum = Integer.parseInt(request.getParameter("categoryNum"));
		int currentPage = Integer.parseInt(request.getParameter("pg"));
		if (currentPage < 1)
			currentPage = 1;
		String category[] = boardDAO.returnCategory(categoryNum);
	%>
	<jsp:include page="header.jsp"></jsp:include>
	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="mt-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="row">
						<div class="col-md-12">
							<div class="row">
								<div class="col-md-3">
									<jsp:include page="side.jsp"></jsp:include>
								</div>
								<div class="col-md-9">
									<div class="row">
										<div class="col-md-12">
											<h5 class=""><%=category[0]%>
												&gt;
												<%=category[1]%></h5>
										</div>
									</div>
									<%
										ArrayList<Board> list = boardDAO.boardListSummary(categoryNum);

										for (int col = 0; col < 9; col++) {
									%>
									<%
										if (col == 0 || col == 3 || col == 6) {
									%>

									<div class="row">
										<%
											}
										%>
										<div class="col-md-4 py-4">
											<a
												href="content.do?boardNum=<%=list.get(col + 9 * (currentPage - 1)).getBoardNum()%>"
												class="card" style="text-decoration: none; color: #3A3A3A;"
												method="post"> <img class="card-img-top"
												src="${pageContext.request.contextPath}/resources/image/test123.jpg" width="50" height="200" />
												<div class="card-body">
													<h4 class="card-title"><%=list.get(col + 9 * (currentPage - 1)).getBoardNum()%></h4>
													<p class="card-text"><%=list.get(col + 9 * (currentPage - 1)).getSubject()%></p>
												</div>
											</a>
										</div>
										<%
											if (col == 2 || col == 5 || col == 8) {
										%>
									</div>
									<%
										}
										}
									%>
									<div class="row"></div>
									<div class="row"></div>
									<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
											<div
												class="col-md-12 justify-content-center d-flex mt-4 pt-3">
												<ul class="pagination">
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=<%=currentPage - 1%>">Prev</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=1">1</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=2">2</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=3">3</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=4">4</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?categoryNum=<%=categoryNum%>&pg=<%=currentPage + 1%>">Next</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="col-md-4">
											<a class="btn btn-primary center" href="writeContent.do">컨텐츠
												등록하기</a>
										</div>
									</div><img src="${pageContext.request.contextPath}/resources/image/test123.jpg" width="50" height="200" />
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
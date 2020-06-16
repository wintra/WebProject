<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Board.*"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.webproject.app.Login.*"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>

<body>
	<%
		BoardDAO boardDAO = new BoardDAO();
	UserDAO userDAO = new UserDAO();
	String search = request.getParameter("search");
	int currentPage = Integer.parseInt(request.getParameter("pg"));
	if (currentPage < 1)
		currentPage = 1;
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
									<%
										ArrayList<Board> list = boardDAO.getBoardList(search);
									%>
								</div>
								<div class="col-md-9">
									<div class="row">
										<div class="col-md-12">
											<h5 class="">
												'<%=search%>'에 대한 검색 결과
												<%=list.size()%>개
											</h5>
										</div>
									</div>
									<div>
										<%
											int a;
										if (list.size() - 9 * currentPage < 0)
											a = list.size() - 9 * (currentPage - 1);
										else
											a = 9;

										if (list.size() >= 1) {

											for (int col = 0; col < a; col++) {

												if (col == 0 || col == 3 || col == 6) {
										%>

										<div class="row">
											<%
												}
											%>
											<div class="col-md-4 py-4">
												<a
													href="content.do?boardNum=<%=list.get(col + 9 * (currentPage - 1)).getBoardNum()%>"
													class="card" style="text-decoration: none; color: #3A3A3A;">
													<img class="card-img-top"
													src="${pageContext.request.contextPath}/resources/image/<%=list.get(col + 9 * (currentPage - 1)).getFileName()%>"
													width="50" height="200" />
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
										}
										%>
									</div>
									<div class="row"></div>
									<div class="row"></div>
									<div class="row">
										<div class="col-md-4"></div>
										<div class="col-md-4">
											<div
												class="col-md-12 justify-content-center d-flex mt-4 pt-3">
												<ul class="pagination">
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=<%=currentPage - 1%>">Prev</a>
													</li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=1">1</a></li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=2">2</a></li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=3">3</a></li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=4">4</a></li>
													<li class="page-item"><a class="page-link"
														href="mainContent.do?search=<%=search%>&pg=<%=currentPage + 1%>">Next</a>
													</li>
												</ul>
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
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="com.webproject.app.Login.*"%>

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
</head>

<body>

	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		String userName = (String) session.getAttribute("userName");
		String userEmail = (String) session.getAttribute("userEmail");
		int userPhoneNum = (Integer) session.getAttribute("userPhoneNum");
		String userGender = (String) session.getAttribute("userGender");
		
		UserDAO userDAO = new UserDAO();
	%>
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
														<b><%=userName%></b>
													</h3>
													<div class="row">
														<div
															class="col-md-12 d-inline-flex justify-content-center">
															<div class="btn-group btn-group-toggle"
																data-toggle="buttons">
																
																<% if(userDAO.isExpert(userID) == 0) {%>
																<label class="btn btn-primary active"> <input
																	type="radio" name="options" id="option1"
																	autocomplete="off" checked=""> 일반
																</label> 
																
																<% } else if(userDAO.isExpert(userID) == 1);
																boolean isExpert = true;{%>
																<label class="btn btn-primary"> <input
																	type="radio" name="options" id="option2"
																	autocomplete="off"> 전문가
																</label>
																
																<% } %>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<a href="orderList.do" class="list-group-item list-group-item-action">구매내역</a>
										<% if(isExpert == true){ %>
										<a href="soldList.do" class="list-group-item list-group-item-action">판매내역</a>
										<% } %>
										
									</ul>
								</div>
								<div class="col-md-8" style="">
									<div class="row">
										<div class="col-md-12">
											<h5 class="">MY Page</h5>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12">
											<div class="jumbotron rounded pb-3 pt-3 mt-3"
												style="padding-top: 20px;">
												<form method="post">
													<div class="table-responsive">
														<table class="table">
															<tbody>
																<tr>
																	<td class="table-primary">아이디</td>
																	<td><%=userID%></td>
																</tr>
																<tr></tr>
																<tr>
																	<td class="table-primary"><b>이름</b></td>
																	<td><%=userName%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>성별</b></td>
																	<td><%=userGender%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>이메일</b></td>
																	<td><%=userEmail%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>전화번호</b></td>
																	<td><%=userPhoneNum%></td>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="row">
														<div
															class="col-md-12 d-inline-flex justify-content-center">
															<a class="btn btn-primary" href="mypageEdit.do">수정하기</a>
														</div>
													</div>
												</form>
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
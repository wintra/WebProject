<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.webproject.app.Login.*"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
	<script type="text/javascript">
		function button_event() {
			if (confirm("정말 탈퇴하시겠습니까??") == true) { //확인
				location.href = "UserWithdrawal"
			} else { //취소
				return;
			}
		}
	</script>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}

		UserDAO userDAO = new UserDAO();

		User user = userDAO.returnUser(userID);
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
								<jsp:include page="mypageSide.jsp"></jsp:include>
								<div class="col-md-8" style="">
									<div class="row">
										<div class="col-md-12">
											<h3 class="">MY Page</h3>
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
																	<td><%=user.getUserName()%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>성별</b></td>
																	<td><%=user.getUserGender()%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>이메일</b></td>
																	<td><%=user.getUserEmail()%></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>전화번호</b></td>
																	<td><%=user.getUserPhoneNum()%></td>
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
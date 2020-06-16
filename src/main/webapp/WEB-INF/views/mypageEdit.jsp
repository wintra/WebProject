
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
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		UserDAO userDAO = new UserDAO();
		User user = userDAO.returnUser(userID);
		String userName = user.getUserName();
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
															<thead>
																<tr>
																	<td class="table-primary">아이디</td>
																	<td class="" colspan="2" style="text-align: left"><%=userID%><span
																		style="font-weight: normal;"></span></td>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td class="table-primary"><b>비밀번호</b></td>
																	<td contenteditable="true" class="m-1 p-1" colspan="2"><input
																		type="password" class="form-control"
																		placeholder="비밀번호" name="userPassword" mexlength="20"></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>이름</b></td>
																	<td class="m-1 p-1" colspan="2"><input type="text"
																		class="form-control" placeholder="이름" name="userName"
																		mexlength="20"><span
																		style="font-weight: normal;"></span></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>성별</b></td>
																	<td class="" style="text-align: center;"><input
																		type="radio" name="userGender" autocomplete="off"
																		value="남자" checked="">남자</td>
																	<td class="" style="text-align: center;"><input
																		type="radio" name="userGender" autocomplete="off"
																		value="여자">여자</td>
																</tr>
																<tr>
																	<td class="table-primary"><b>이메일</b></td>
																	<td class="m-1 p-1" colspan="2"><input
																		type="email" class="form-control" placeholder="Email"
																		name="userEmail" mexlength="20"><span
																		style="font-weight: normal;"></span></td>
																</tr>
																<tr>
																	<td class="table-primary"><b>전화번호</b></td>
																	<th class="m-1 p-1" colspan="2"><input type="tel"
																		class="form-control" placeholder=" - 를 제외한 번호를 입력해주세요"
																		name="userNuber" mexlength="20"></th>
																</tr>
															</tbody>
														</table>
													</div>
													<div class="row">
														<div
															class="col-md-12 d-inline-flex justify-content-center">
															<a class="btn btn-primary" href="UserUpdate">수정하기</a>
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
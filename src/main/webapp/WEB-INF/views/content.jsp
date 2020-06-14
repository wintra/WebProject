<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page import="com.webproject.app.Board.*"%>
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

.context {
	margin-top: 130px;
}
</style>

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
</style>
<link href="nav.css" rel="stylesheet" type="text/css">



</head>

<body>
	<%
		int boardNum = Integer.parseInt(request.getParameter("boardNum"));

		BoardDAO boardDAO = new BoardDAO();
		UserDAO userDAO = new UserDAO();

		Board board = boardDAO.returnBoard(boardNum);

		int categoryNum = board.getCategoryNum();
		
		String category[] = boardDAO.returnCategory(categoryNum);
			
		
		Talent talent = userDAO.returnTalent((String)board.getId());
		User user = userDAO.returnUser(talent.getId());
	%>
	<script>
		function popup() {
			var url = "payment.do";
			var name = "popup test";
			var option = "width = 500, height = 500, top = 100, left = 200, location = no"
			window.open(url, name, option);
		}
	</script>
	<jsp:include page="header.jsp"></jsp:include>
	<header class="Nav">
		<nav id="NavBar"></nav>
	</header>
	<div class="py-1">
		<div class="container"></div>
	</div>
	<div class="" style="">
		<div class="container">
			<div class="context">
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-12">
										<div class="row">
											<div class="col-md-12">
												<div class="row">
													<div class="col-md-8">
														<p><%=category[0]%>
															&gt;
															<%=category[1]%></p>

														<div class="row">
															<div class="col-md-12 d-flex justify-content-center">
																<div class="card">
																	<img class="card-img"
																		src="https://static.pingendo.com/cover-bubble-light.svg"
																		alt="Card image">
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12 mt-3">
																<ul class="nav nav-tabs">
																	<li class="nav-item"><a href=""
																		class="active nav-link" data-toggle="tab"
																		data-target="#tabone">서비스 설명</a></li>
																	<li class="nav-item"><a class="nav-link" href=""
																		data-toggle="tab" data-target="#tabtwo">가격 정보</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabthree">수정/재진행</a></li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfour">취소/환불 규정</a>
																	</li>
																	<li class="nav-item"><a href="" class="nav-link"
																		data-toggle="tab" data-target="#tabfive">서비스 평가</a></li>
																</ul>
																<div class="tab-content mt-2">
																	<div class="tab-pane fade show active" id="tabone"
																		role="tabpanel">
																		<p class=""><%=board.getTabone()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabtwo" role="tabpanel">
																		<p class=""><%=board.getTabtwo()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabthree"
																		role="tabpanel">
																		<p class=""><%=board.getTabthree()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabfour" role="tabpanel">
																		<p class=""><%=board.getTabfour()%></p>
																	</div>
																	<div class="tab-pane fade" id="tabfive" role="tabpanel">
																		<div class="py-">
																			<div class="row">
																				<div class="col-md-12">
																					<table class="table text-center">
																						<thead>
																							<tr>
																							</tr>
																							<tr>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">작성자</td>
																								<td class="table-info" style="font-size: 16px;">리뷰</td>
																								<td class="w-25 table-info"
																									style="font-size: 16px;">평점</td>
																							</tr>
																						</thead>
																						<tbody>
																							<tr class="">
																								<td class="justify-content-center">남량경바보</td>
																								<td class="">
																									<p>안녕하세요. 제얼굴 포샵으로 아주 딴 사람으로 만들어 놓으셨습니다. 이
																										집 포샵 맛집입니다. 모두들 이곳에서 성형하세요.</p>
																								</td>
																								<td>5</td>
																							</tr>
																							<tr>
																								<td>정현정</td>
																								<td>의느님보다 더 귀하신분이 존재하셨다니. 감사합니다..저는 원래 점수를
																									짜게주는 사람이라..</td>
																								<td>4</td>
																							</tr>
																							<tr>
																								<td>Three</td>
																								<td></td>
																								<td><i class="fa fa-check fa-lg text-muted"></i>
																								</td>
																							</tr>
																							<tr>
																								<td>Four</td>
																								<td></td>
																								<td><i class="fa fa-check fa-lg text-muted"></i>
																								</td>
																							</tr>
																							<tr>
																								<td>Five</td>
																								<td></td>
																								<td></td>
																							</tr>
																							<tr>
																								<td>Six</td>
																								<td></td>
																								<td></td>
																							</tr>
																						</tbody>
																					</table>
																				</div>
																			</div>
																			<div class="row">
																				<div class="col-md-12">
																					<ul class="pagination"
																						style="justify-content: center;">
																						<li class="page-item"><a class="page-link"
																							href="#">Prev</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">1</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">2</a></li>
																						<li class="page-item active"><a
																							class="page-link" href="#">3</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">4</a></li>
																						<li class="page-item"><a class="page-link"
																							href="#">Next</a></li>
																					</ul>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row"></div>
													</div>
													<div class="col-md-4">
														<div class="row">
															<div class="col-md-12" style="">
																<h4 class="" style="">
																	<b><%=board.getSubject()%></b>
																</h4>
																<div class="row">
																	<div class="col-md-12 py-2">
																		<div class="table-responsive mt-2">
																			<table class="table">
																				<thead>
																					<tr>
																						<th
																							class="border-right border-top-0 border-primary table-primary">가격</th>
																						<th
																							class="border-top-0 border-left border-primary table-primary"><%=board.getPrice()%>
																							원</th>
																					</tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td class="border-right border-primary">기간</td>
																						<td
																							class="border-left border-bottom border-primary"><b>시작</b><br><%= board.getStartDate() %> 
																							<br><b>종료</b><br><%= board.getEndDate() %></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">진행 방법</td>
																						<td class="border-left border-primary"><%=board.getProgress()%></td>
																					</tr>
																					<tr>
																						<td class="border-right border-primary">평점</td>
																						<td class="border-primary"><%=board.getScore()%>/5</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<a class="btn btn-primary btn-block"
																			href="javascript:popup()">구매하기</a>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12">
																<div class="row">
																	<div class="col-md-12 pt-3">
																		<div class="row"></div>
																		<div class="row">
																			<div class="col-md-12">
																				<img class="img-fluid d-block rounded-circle"
																					src="https://static.pingendo.com/img-placeholder-3.svg"
																					style="transform: scale(0.8);">
																			</div>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="row">
															<div class="col-md-12" style="">
																<div class="row">
																	<div class="col-md-12">
																		<div
																			class="table-responsive justify-content-center align-items-center">
																			<table class="table">
																				<thead>
																					<tr></tr>
																				</thead>
																				<tbody>
																					<tr>
																						<td>강사명</td>
																						<td><%= talent.getNickname() %></td>
																					</tr>
																					<tr>
																						<td>이메일</td>
																						<td><%= user.getUserEmail() %> </td>
																					</tr>
																					<tr>
																						<td>소개</td>
																						<td>전문분야 : <%= talent.getTechnology() %><br>
																						       보유기술 : <%= talent.getProfield() %></td>
																					</tr>
																					<tr>
																						<td>경력</td>
																						<td><%= talent.getEducation() %> <%= talent.getMajor() %> <%= talent.getState() %> <br>
																						자격증 : <%= talent.getCertificate() %>
																						</td>
																					</tr>
																				</tbody>
																			</table>
																		</div>
																		<div class="row">
																			<div class="col-md-12 d-flex justify-content-center"></div>
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
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</html>